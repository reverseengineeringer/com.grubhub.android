package com.amazon.insights.abtest;

import com.amazon.insights.ABTestClient;
import com.amazon.insights.Event;
import com.amazon.insights.InsightsCredentials;
import com.amazon.insights.InsightsHandler;
import com.amazon.insights.UserProfile;
import com.amazon.insights.Variation;
import com.amazon.insights.VariationSet;
import com.amazon.insights.abtest.cache.VariationCache;
import com.amazon.insights.abtest.cache.VariationCaches;
import com.amazon.insights.core.DefaultInsightsHandler;
import com.amazon.insights.core.InsightsContext;
import com.amazon.insights.core.configuration.Configuration;
import com.amazon.insights.core.http.HttpClient;
import com.amazon.insights.core.http.HttpClient.HttpMethod;
import com.amazon.insights.core.http.HttpClient.Request;
import com.amazon.insights.core.http.HttpClient.Response;
import com.amazon.insights.core.http.HttpUtil;
import com.amazon.insights.core.idresolver.Id;
import com.amazon.insights.core.log.Logger;
import com.amazon.insights.core.system.Connectivity;
import com.amazon.insights.core.util.Preconditions;
import com.amazon.insights.core.util.StringUtil;
import com.amazon.insights.error.InvalidArgumentError;
import com.amazon.insights.error.NullArgumentError;
import com.amazon.insights.error.UnexpectedError;
import com.amazon.insights.event.InternalEventClient;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class DefaultABTestClient
  implements ABTestClient
{
  protected static final String ALLOW_OPERATION_AFTER_HEADER = "x-amzn-Allow-Operation-After";
  static final boolean DEFAULT_ABTEST_ENABLEMENT = true;
  static final int DEFAULT_ALLOCATION_REQUEST_RETRIES = 1;
  static final String DEFAULT_ENDPOINT = "https://applab-sdk.amazon.com/1.0";
  static final int DEFAULT_MAX_ALLOCATIONS = 10;
  private static final String ENDPOINT_PATH = "%s/applications/%s/treatments";
  static final String KEY_ABTEST_ENABLED = "isABTestEnabled";
  static final String KEY_ALLOCATION_REQUEST_RETRIES = "allocationRequestRetries";
  static final String KEY_ENDPOINT = "projectEndpoint";
  static final String KEY_MAX_ALLOCATIONS = "maxAllocations";
  static final String KEY_VARIATION_IDS = "_treatment_ids";
  private static final Logger logger = Logger.getLogger(DefaultABTestClient.class);
  private final Map<String, Long> appliedVariationIds;
  private final InsightsContext context;
  private final InternalEventClient eventClient;
  private final ExecutorService executor;
  private final VariationCache variationCache;
  
  DefaultABTestClient(InsightsContext paramInsightsContext, ExecutorService paramExecutorService, InternalEventClient paramInternalEventClient, VariationCache paramVariationCache)
  {
    Preconditions.checkNotNull(paramInsightsContext, "A valid context wrapper must be provided");
    Preconditions.checkNotNull(paramExecutorService, "A valid ExecutorService must be provided");
    executor = paramExecutorService;
    context = paramInsightsContext;
    eventClient = paramInternalEventClient;
    variationCache = paramVariationCache;
    appliedVariationIds = new ConcurrentHashMap();
    setAppliedVariationIdsAsGlobalAttribute(paramVariationCache.getAll());
  }
  
  private DefaultInsightsHandler<VariationSet> allocateVariations(final Set<String> paramSet, final DefaultInsightsHandler<VariationSet> paramDefaultInsightsHandler)
  {
    final AtomicReference localAtomicReference = new AtomicReference(null);
    if ((context.getUserProfile() != null) && (context.getUserProfile().getDimensions() != null)) {
      localAtomicReference.set(new HashMap(context.getUserProfile().getDimensions()));
    }
    executor.submit(new Runnable()
    {
      public void run()
      {
        try
        {
          Object localObject1 = new ArrayList(paramSet);
          int k = DefaultABTestClient.this.getMaxAllocations();
          ConcurrentHashMap localConcurrentHashMap = new ConcurrentHashMap();
          int i = 0;
          Object localObject2;
          while (i < ((List)localObject1).size())
          {
            localObject2 = new HashSet();
            int j = 0;
            while ((j < k) && (i < ((List)localObject1).size()))
            {
              ((Set)localObject2).add(((List)localObject1).get(i));
              j += 1;
              i += 1;
            }
            localObject2 = allocateDefaultVariations((Set)localObject2, localConcurrentHashMap);
            localObject2 = allocateCachedVariations((Set)localObject2, localConcurrentHashMap);
            allocateServerVariations((Set)localObject2, localConcurrentHashMap, (Map)localAtomicReference.get());
          }
          localObject1 = localConcurrentHashMap.entrySet().iterator();
          while (((Iterator)localObject1).hasNext())
          {
            localObject2 = (Map.Entry)((Iterator)localObject1).next();
            if (((DefaultVariation)((Map.Entry)localObject2).getValue()).isDefault()) {
              DefaultABTestClient.logger.devw("Resolved default variation: '" + ((DefaultVariation)((Map.Entry)localObject2).getValue()).getName() + "' for project: '" + (String)((Map.Entry)localObject2).getKey() + "'");
            }
          }
          paramDefaultInsightsHandler.onComplete(new VariationSet()
          {
            public boolean contains(String paramAnonymous2String)
            {
              return localException.containsKey(paramAnonymous2String);
            }
            
            public Variation getVariation(String paramAnonymous2String)
            {
              if (contains(paramAnonymous2String))
              {
                paramAnonymous2String = (Variation)localException.get(paramAnonymous2String);
                setVariationIdsFromAllocatedVariation((DefaultVariation)paramAnonymous2String);
                return paramAnonymous2String;
              }
              DefaultVariation.Builder localBuilder = new DefaultVariation.Builder();
              String str = paramAnonymous2String;
              if (paramAnonymous2String == null) {
                str = "UNKNOWN";
              }
              return localBuilder.setProjectName(str).setApplicationKey(context.getCredentials().getApplicationKey()).setUniqueId(context.getUniqueId()).build();
            }
            
            public Iterator<Variation> iterator()
            {
              new Iterator()
              {
                public boolean hasNext()
                {
                  return val$iter.hasNext();
                }
                
                public Variation next()
                {
                  Variation localVariation = (Variation)val$iter.next();
                  setVariationIdsFromAllocatedVariation((DefaultVariation)localVariation);
                  return localVariation;
                }
                
                public void remove()
                {
                  throw new UnsupportedOperationException("This iterator does not support removal of variations");
                }
              };
            }
            
            public int size()
            {
              return localException.size();
            }
          });
        }
        catch (Exception localException)
        {
          paramDefaultInsightsHandler.onError(new UnexpectedError("An unexpected error occurred. Retrieval of variations could not be completed", localException));
          DefaultABTestClient.logger.e("An unexpected error occurred attempting to get variations", localException);
          return;
        }
      }
    });
    return paramDefaultInsightsHandler;
  }
  
  private String getEndpointUrl()
  {
    return context.getConfiguration().optString("projectEndpoint", "https://applab-sdk.amazon.com/1.0");
  }
  
  private int getMaxAllocations()
  {
    return context.getConfiguration().optInt("maxAllocations", Integer.valueOf(10)).intValue();
  }
  
  public static DefaultABTestClient newInstance(InsightsContext paramInsightsContext, InternalEventClient paramInternalEventClient)
  {
    VariationCache localVariationCache = VariationCaches.tryGetFileVariationCache(paramInsightsContext);
    return new DefaultABTestClient(paramInsightsContext, Executors.newFixedThreadPool(2), paramInternalEventClient, localVariationCache);
  }
  
  private void setAppliedVariationIdsAsGlobalAttribute(Map<String, DefaultVariation> paramMap)
  {
    boolean bool2 = true;
    Preconditions.checkNotNull(paramMap);
    if (appliedVariationIds != null)
    {
      bool1 = true;
      Preconditions.checkState(bool1);
      if (eventClient == null) {
        break label106;
      }
    }
    label106:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      Preconditions.checkState(bool1);
      paramMap = paramMap.entrySet().iterator();
      while (paramMap.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)paramMap.next();
        appliedVariationIds.put(localEntry.getKey(), Long.valueOf(((DefaultVariation)localEntry.getValue()).getVariationId()));
      }
      bool1 = false;
      break;
    }
    eventClient.removeGlobalAttribute("_treatment_ids");
    eventClient.addGlobalAttribute("_treatment_ids", new JSONArray(appliedVariationIds.values()).toString());
  }
  
  static JSONObject variationToHttpRequest(DefaultVariation paramDefaultVariation)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("experimentName", paramDefaultVariation.getProjectName());
      if (!paramDefaultVariation.isDefault())
      {
        localJSONObject.put("experimentId", paramDefaultVariation.getExperimentId());
        localJSONObject.put("treatmentId", paramDefaultVariation.getVariationId());
        localJSONObject.put("treatmentGroup", paramDefaultVariation.getName());
        localJSONObject.put("uniqueId", paramDefaultVariation.getUniqueId().getValue());
      }
      return localJSONObject;
    }
    catch (JSONException paramDefaultVariation) {}
    return null;
  }
  
  Set<String> allocateCachedVariations(Set<String> paramSet, Map<String, DefaultVariation> paramMap)
  {
    Preconditions.checkNotNull(paramSet, "The set of project names must not be null");
    Preconditions.checkNotNull(paramMap, "The map of variations must not be null");
    if (paramSet.size() == 0) {
      return paramSet;
    }
    Iterator localIterator = variationCache.get(paramSet).values().iterator();
    label49:
    DefaultVariation localDefaultVariation;
    Logger localLogger;
    StringBuilder localStringBuilder;
    if (localIterator.hasNext())
    {
      localDefaultVariation = (DefaultVariation)localIterator.next();
      if (!localDefaultVariation.isExpired()) {
        paramSet.remove(localDefaultVariation.getProjectName());
      }
      paramMap.put(localDefaultVariation.getProjectName(), localDefaultVariation);
      localLogger = logger;
      localStringBuilder = new StringBuilder().append("Resolved ");
      if (!localDefaultVariation.isExpired()) {
        break label188;
      }
    }
    label188:
    for (String str = "expired";; str = "unexpired")
    {
      localLogger.devi(str + " variation: '" + localDefaultVariation.getName() + "' for project: '" + localDefaultVariation.getProjectName() + "' from cache");
      break label49;
      break;
    }
  }
  
  Set<String> allocateDefaultVariations(Set<String> paramSet, Map<String, DefaultVariation> paramMap)
  {
    Preconditions.checkNotNull(paramSet, "The set of project names must not be null");
    Preconditions.checkNotNull(paramMap, "The map of variations must not be null");
    if (paramSet.size() == 0) {}
    for (;;)
    {
      return paramSet;
      Iterator localIterator = paramSet.iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        paramMap.put(str, new DefaultVariation.Builder().setProjectName(str).setApplicationKey(context.getCredentials().getApplicationKey()).setUniqueId(context.getUniqueId()).build());
      }
    }
  }
  
  Set<String> allocateServerVariations(Set<String> paramSet, Map<String, DefaultVariation> paramMap, Map<String, Object> paramMap1)
  {
    Preconditions.checkNotNull(paramSet, "The set of project names must not be null");
    Preconditions.checkNotNull(paramMap, "The map of variations must not be null");
    if (paramSet.size() == 0) {}
    while ((!context.getConfiguration().optBoolean("isABTestEnabled", Boolean.valueOf(true)).booleanValue()) || (!canHandleRequest())) {
      return paramSet;
    }
    paramMap1 = createHttpRequest(paramSet, paramMap, paramMap1);
    if (paramMap1 == null)
    {
      logger.e("There was an error when building the http request");
      return paramSet;
    }
    paramMap1 = context.getHttpClient().execute(paramMap1, context.getConfiguration().optInt("allocationRequestRetries", Integer.valueOf(1)));
    if (paramMap1 == null)
    {
      logger.deve("No variations were retrieved from the server");
      logger.e("The http request returned a null http response");
      return paramSet;
    }
    if (paramMap1.getCode() == 200)
    {
      paramMap1 = parseVariationResponse(paramMap1.getResponse());
      Iterator localIterator = paramMap1.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        if (paramSet.contains(localEntry.getKey())) {
          paramSet.remove(localEntry.getKey());
        }
        paramMap.put(localEntry.getKey(), localEntry.getValue());
      }
      cacheVariations(paramMap1);
      return paramSet;
    }
    logger.devw("Unable to successfully retrieve variations from server. Response code (" + paramMap1.getCode() + ") " + HttpUtil.getMessageForResponse(paramMap1));
    logger.w("Recieved a bad response: " + paramMap1);
    return paramSet;
  }
  
  JSONObject buildAllocationRequest(Set<String> paramSet, Map<String, DefaultVariation> paramMap)
    throws JSONException
  {
    JSONObject localJSONObject1 = new JSONObject();
    localJSONObject1.put("uniqueId", context.getUniqueId().getValue());
    JSONArray localJSONArray = new JSONArray();
    paramSet = paramSet.iterator();
    while (paramSet.hasNext())
    {
      JSONObject localJSONObject2 = variationToHttpRequest((DefaultVariation)paramMap.get((String)paramSet.next()));
      if (localJSONObject2 != null) {
        localJSONArray.put(localJSONObject2);
      }
    }
    if (localJSONArray.length() > 0) {
      localJSONObject1.put("treatmentRequests", localJSONArray);
    }
    return localJSONObject1;
  }
  
  String buildRequestBody(Set<String> paramSet, Map<String, DefaultVariation> paramMap, Map<String, Object> paramMap1)
  {
    if ((paramSet == null) || (paramSet.size() == 0)) {
      return null;
    }
    JSONObject localJSONObject = new JSONObject();
    try
    {
      paramMap1 = buildUserProfile(paramMap1);
      paramSet = buildAllocationRequest(paramSet, paramMap);
      if (paramSet == null) {
        break label108;
      }
      localJSONObject.put("treatmentAllocationRequest", paramSet);
      paramSet = localJSONObject;
      if (paramMap1 != null)
      {
        localJSONObject.put("userProfile", paramMap1);
        paramSet = localJSONObject;
      }
    }
    catch (JSONException paramSet)
    {
      for (;;)
      {
        label108:
        logger.e("Error building the server request", paramSet);
        paramSet = null;
      }
      logger.e("Request body is null");
    }
    if (paramSet != null)
    {
      paramSet = paramSet.toString();
      logger.i("Request: " + paramSet);
      return paramSet;
      logger.deve("Request for variations was empty");
      logger.e("Allocation request is null");
      return null;
    }
    return null;
  }
  
  JSONObject buildUserProfile(Map<String, Object> paramMap)
    throws JSONException
  {
    if ((paramMap == null) || (paramMap.size() == 0)) {
      return null;
    }
    JSONObject localJSONObject = new JSONObject();
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      if (Number.class.isAssignableFrom(localEntry.getValue().getClass())) {
        localJSONObject.put((String)localEntry.getKey(), localEntry.getValue());
      } else if (Boolean.class.isAssignableFrom(localEntry.getValue().getClass())) {
        localJSONObject.put((String)localEntry.getKey(), localEntry.getValue());
      } else if (localEntry.getValue().getClass().equals(String.class)) {
        localJSONObject.put((String)localEntry.getKey(), localEntry.getValue());
      }
    }
    return localJSONObject;
  }
  
  void cacheVariations(Map<String, DefaultVariation> paramMap)
  {
    paramMap = paramMap.values().iterator();
    while (paramMap.hasNext())
    {
      DefaultVariation localDefaultVariation = (DefaultVariation)paramMap.next();
      if (!localDefaultVariation.isDefault()) {
        variationCache.put(localDefaultVariation);
      }
    }
  }
  
  protected boolean canHandleRequest()
  {
    boolean bool = context.getSystem().getConnectivity().isConnected();
    if (!bool) {
      logger.devw("Cannot retrieve variations from server due to the device not being connected");
    }
    return bool;
  }
  
  HttpClient.Request createHttpRequest(Set<String> paramSet, Map<String, DefaultVariation> paramMap, Map<String, Object> paramMap1)
  {
    Preconditions.checkNotNull(paramSet, "An allocation request must be provided");
    if (paramSet.size() > 0) {}
    HttpClient.Request localRequest;
    for (boolean bool = true;; bool = false)
    {
      Preconditions.checkArgument(bool, "At least one project must be specified");
      localRequest = context.getHttpClient().newRequest().setUrl(String.format("%s/applications/%s/treatments", new Object[] { getEndpointUrl(), context.getCredentials().getApplicationKey() })).setMethod(HttpClient.HttpMethod.POST);
      paramSet = buildRequestBody(paramSet, paramMap, paramMap1);
      if (paramSet != null) {
        break;
      }
      return null;
    }
    localRequest.setPostBody(paramSet);
    return localRequest;
  }
  
  public InsightsHandler<VariationSet> getVariations(String... paramVarArgs)
  {
    DefaultInsightsHandler localDefaultInsightsHandler = new DefaultInsightsHandler();
    if ((paramVarArgs != null) && (paramVarArgs.length > 0))
    {
      HashSet localHashSet = new HashSet();
      int j = paramVarArgs.length;
      int i = 0;
      while (i < j)
      {
        String str = paramVarArgs[i];
        if ((str != null) && (!localHashSet.contains(str))) {
          localHashSet.add(str);
        }
        i += 1;
      }
      if (localHashSet.size() > 0)
      {
        logger.devi("Attempting to retrieve variation(s) for project(s):" + StringUtil.convertSetToString(localHashSet));
        allocateVariations(localHashSet, localDefaultInsightsHandler);
      }
    }
    do
    {
      return localDefaultInsightsHandler;
      localDefaultInsightsHandler.onError(new InvalidArgumentError("projectNames", "getVariation", "No project names were provided."));
      return localDefaultInsightsHandler;
      if (paramVarArgs == null)
      {
        localDefaultInsightsHandler.onError(new NullArgumentError("projectNames", "getVariation"));
        return localDefaultInsightsHandler;
      }
    } while (paramVarArgs.length != 0);
    localDefaultInsightsHandler.onError(new InvalidArgumentError("projectNames", "getVariation", "No project names were provided."));
    return localDefaultInsightsHandler;
  }
  
  /* Error */
  Map<String, DefaultVariation> parseVariationResponse(String paramString)
  {
    // Byte code:
    //   0: new 92	java/util/concurrent/ConcurrentHashMap
    //   3: dup
    //   4: invokespecial 93	java/util/concurrent/ConcurrentHashMap:<init>	()V
    //   7: astore 4
    //   9: aload_1
    //   10: ifnull +10 -> 20
    //   13: aload_1
    //   14: invokevirtual 639	java/lang/String:length	()I
    //   17: ifne +6 -> 23
    //   20: aload 4
    //   22: areturn
    //   23: new 272	org/json/JSONObject
    //   26: dup
    //   27: aload_1
    //   28: invokespecial 641	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   31: astore 6
    //   33: aload 6
    //   35: ldc_w 643
    //   38: invokevirtual 647	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   41: astore_1
    //   42: aload 6
    //   44: ldc_w 301
    //   47: invokevirtual 647	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   50: invokestatic 650	com/amazon/insights/core/idresolver/Id:valueOf	(Ljava/lang/String;)Lcom/amazon/insights/core/idresolver/Id;
    //   53: astore 5
    //   55: aload 6
    //   57: ldc_w 652
    //   60: invokevirtual 656	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   63: ifne -43 -> 20
    //   66: aload 6
    //   68: ldc_w 652
    //   71: invokevirtual 660	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   74: astore 6
    //   76: iconst_0
    //   77: istore_2
    //   78: iload_2
    //   79: aload 6
    //   81: invokevirtual 486	org/json/JSONArray:length	()I
    //   84: if_icmpge -64 -> 20
    //   87: new 361	com/amazon/insights/abtest/DefaultVariation$Builder
    //   90: dup
    //   91: invokespecial 362	com/amazon/insights/abtest/DefaultVariation$Builder:<init>	()V
    //   94: astore 7
    //   96: aload 7
    //   98: aload_1
    //   99: invokevirtual 378	com/amazon/insights/abtest/DefaultVariation$Builder:setApplicationKey	(Ljava/lang/String;)Lcom/amazon/insights/abtest/DefaultVariation$Builder;
    //   102: pop
    //   103: aload 7
    //   105: aload 5
    //   107: invokevirtual 383	com/amazon/insights/abtest/DefaultVariation$Builder:setUniqueId	(Lcom/amazon/insights/core/idresolver/Id;)Lcom/amazon/insights/abtest/DefaultVariation$Builder;
    //   110: pop
    //   111: aload 6
    //   113: iload_2
    //   114: invokevirtual 664	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   117: astore 8
    //   119: aload 8
    //   121: ifnull +182 -> 303
    //   124: aload 7
    //   126: aload 8
    //   128: ldc_w 286
    //   131: invokevirtual 668	org/json/JSONObject:getLong	(Ljava/lang/String;)J
    //   134: invokevirtual 672	com/amazon/insights/abtest/DefaultVariation$Builder:setExperimentId	(J)Lcom/amazon/insights/abtest/DefaultVariation$Builder;
    //   137: pop
    //   138: aload 7
    //   140: aload 8
    //   142: ldc_w 294
    //   145: invokevirtual 668	org/json/JSONObject:getLong	(Ljava/lang/String;)J
    //   148: invokevirtual 675	com/amazon/insights/abtest/DefaultVariation$Builder:setVariationId	(J)Lcom/amazon/insights/abtest/DefaultVariation$Builder;
    //   151: pop
    //   152: aload 7
    //   154: aload 8
    //   156: ldc_w 275
    //   159: invokevirtual 647	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   162: invokevirtual 366	com/amazon/insights/abtest/DefaultVariation$Builder:setProjectName	(Ljava/lang/String;)Lcom/amazon/insights/abtest/DefaultVariation$Builder;
    //   165: pop
    //   166: aload 7
    //   168: aload 8
    //   170: ldc_w 296
    //   173: invokevirtual 647	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   176: invokevirtual 678	com/amazon/insights/abtest/DefaultVariation$Builder:setVariationName	(Ljava/lang/String;)Lcom/amazon/insights/abtest/DefaultVariation$Builder;
    //   179: pop
    //   180: aload 7
    //   182: new 680	java/util/Date
    //   185: dup
    //   186: aload 8
    //   188: ldc_w 682
    //   191: invokevirtual 668	org/json/JSONObject:getLong	(Ljava/lang/String;)J
    //   194: invokespecial 685	java/util/Date:<init>	(J)V
    //   197: invokevirtual 689	com/amazon/insights/abtest/DefaultVariation$Builder:setExpirationDate	(Ljava/util/Date;)Lcom/amazon/insights/abtest/DefaultVariation$Builder;
    //   200: pop
    //   201: aload 7
    //   203: getstatic 695	com/amazon/insights/abtest/DefaultVariation$AllocationSource:SERVER	Lcom/amazon/insights/abtest/DefaultVariation$AllocationSource;
    //   206: invokevirtual 699	com/amazon/insights/abtest/DefaultVariation$Builder:setAllocationSource	(Lcom/amazon/insights/abtest/DefaultVariation$AllocationSource;)V
    //   209: aload 8
    //   211: ldc_w 701
    //   214: invokevirtual 656	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   217: ifne +86 -> 303
    //   220: aload 8
    //   222: ldc_w 701
    //   225: invokevirtual 660	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   228: astore 8
    //   230: aload 8
    //   232: ifnull +71 -> 303
    //   235: new 135	java/util/HashMap
    //   238: dup
    //   239: invokespecial 702	java/util/HashMap:<init>	()V
    //   242: astore 9
    //   244: iconst_0
    //   245: istore_3
    //   246: iload_3
    //   247: aload 8
    //   249: invokevirtual 486	org/json/JSONArray:length	()I
    //   252: if_icmpge +43 -> 295
    //   255: aload 8
    //   257: iload_3
    //   258: invokevirtual 664	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   261: astore 10
    //   263: aload 10
    //   265: ifnull +159 -> 424
    //   268: aload 9
    //   270: aload 10
    //   272: ldc_w 704
    //   275: invokevirtual 647	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   278: aload 10
    //   280: ldc_w 706
    //   283: invokevirtual 647	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   286: invokeinterface 243 3 0
    //   291: pop
    //   292: goto +132 -> 424
    //   295: aload 7
    //   297: aload 9
    //   299: invokevirtual 710	com/amazon/insights/abtest/DefaultVariation$Builder:setVariables	(Ljava/util/Map;)Lcom/amazon/insights/abtest/DefaultVariation$Builder;
    //   302: pop
    //   303: aload 4
    //   305: aload 7
    //   307: invokevirtual 711	com/amazon/insights/abtest/DefaultVariation$Builder:getProjectName	()Ljava/lang/String;
    //   310: aload 7
    //   312: invokevirtual 387	com/amazon/insights/abtest/DefaultVariation$Builder:build	()Lcom/amazon/insights/abtest/DefaultVariation;
    //   315: invokeinterface 243 3 0
    //   320: pop
    //   321: getstatic 67	com/amazon/insights/abtest/DefaultABTestClient:logger	Lcom/amazon/insights/core/log/Logger;
    //   324: new 334	java/lang/StringBuilder
    //   327: dup
    //   328: invokespecial 335	java/lang/StringBuilder:<init>	()V
    //   331: ldc_w 713
    //   334: invokevirtual 341	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   337: aload 7
    //   339: invokevirtual 716	com/amazon/insights/abtest/DefaultVariation$Builder:getVariationName	()Ljava/lang/String;
    //   342: invokevirtual 341	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   345: ldc_w 347
    //   348: invokevirtual 341	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   351: aload 7
    //   353: invokevirtual 711	com/amazon/insights/abtest/DefaultVariation$Builder:getProjectName	()Ljava/lang/String;
    //   356: invokevirtual 341	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   359: ldc_w 718
    //   362: invokevirtual 341	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   365: invokevirtual 350	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   368: invokevirtual 353	com/amazon/insights/core/log/Logger:devi	(Ljava/lang/String;)V
    //   371: iload_2
    //   372: iconst_1
    //   373: iadd
    //   374: istore_2
    //   375: goto -297 -> 78
    //   378: astore_1
    //   379: getstatic 67	com/amazon/insights/abtest/DefaultABTestClient:logger	Lcom/amazon/insights/core/log/Logger;
    //   382: ldc_w 720
    //   385: invokevirtual 428	com/amazon/insights/core/log/Logger:deve	(Ljava/lang/String;)V
    //   388: getstatic 67	com/amazon/insights/abtest/DefaultABTestClient:logger	Lcom/amazon/insights/core/log/Logger;
    //   391: ldc_w 722
    //   394: aload_1
    //   395: invokevirtual 517	com/amazon/insights/core/log/Logger:e	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   398: aload 4
    //   400: areturn
    //   401: astore_1
    //   402: getstatic 67	com/amazon/insights/abtest/DefaultABTestClient:logger	Lcom/amazon/insights/core/log/Logger;
    //   405: ldc_w 720
    //   408: invokevirtual 428	com/amazon/insights/core/log/Logger:deve	(Ljava/lang/String;)V
    //   411: getstatic 67	com/amazon/insights/abtest/DefaultABTestClient:logger	Lcom/amazon/insights/core/log/Logger;
    //   414: ldc_w 724
    //   417: aload_1
    //   418: invokevirtual 517	com/amazon/insights/core/log/Logger:e	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   421: aload 4
    //   423: areturn
    //   424: iload_3
    //   425: iconst_1
    //   426: iadd
    //   427: istore_3
    //   428: goto -182 -> 246
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	431	0	this	DefaultABTestClient
    //   0	431	1	paramString	String
    //   77	298	2	i	int
    //   245	183	3	j	int
    //   7	415	4	localConcurrentHashMap	ConcurrentHashMap
    //   53	53	5	localId	Id
    //   31	81	6	localObject1	Object
    //   94	258	7	localBuilder	DefaultVariation.Builder
    //   117	139	8	localObject2	Object
    //   242	56	9	localHashMap	HashMap
    //   261	18	10	localJSONObject	JSONObject
    // Exception table:
    //   from	to	target	type
    //   78	119	378	org/json/JSONException
    //   124	230	378	org/json/JSONException
    //   235	244	378	org/json/JSONException
    //   246	263	378	org/json/JSONException
    //   268	292	378	org/json/JSONException
    //   295	303	378	org/json/JSONException
    //   303	371	378	org/json/JSONException
    //   23	76	401	org/json/JSONException
    //   379	398	401	org/json/JSONException
  }
  
  public void setVariationIdsFromAllocatedVariation(DefaultVariation paramDefaultVariation)
  {
    if (eventClient != null) {}
    for (boolean bool = true;; bool = false)
    {
      Preconditions.checkState(bool, "An event client must be provided");
      try
      {
        if (appliedVariationIds.containsKey(paramDefaultVariation.getProjectName()))
        {
          Long localLong = (Long)appliedVariationIds.get(paramDefaultVariation.getProjectName());
          if ((localLong != null) && (localLong.equals(Long.valueOf(paramDefaultVariation.getVariationId())))) {
            return;
          }
        }
        if (paramDefaultVariation.isDefault()) {
          appliedVariationIds.remove(paramDefaultVariation.getProjectName());
        }
        for (;;)
        {
          eventClient.removeGlobalAttribute("_treatment_ids");
          eventClient.addGlobalAttribute("_treatment_ids", new JSONArray(appliedVariationIds.values()).toString());
          if (paramDefaultVariation.isDefault()) {
            break;
          }
          paramDefaultVariation = eventClient.createEvent("_TreatmentsAllocated").withAttribute("_treatment_group", paramDefaultVariation.getName()).withAttribute("_treatment_id", Long.toString(paramDefaultVariation.getVariationId())).withAttribute("_experiment_id", Long.toString(paramDefaultVariation.getExperimentId())).withAttribute("_application_key", paramDefaultVariation.getApplicationKey()).withAttribute("_source", paramDefaultVariation.getAllocationSource().name()).withMetric("_applied_date", Long.valueOf(System.currentTimeMillis()));
          eventClient.recordEvent(paramDefaultVariation, false);
          return;
          appliedVariationIds.put(paramDefaultVariation.getProjectName(), Long.valueOf(paramDefaultVariation.getVariationId()));
        }
        return;
      }
      finally {}
    }
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.abtest.DefaultABTestClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */