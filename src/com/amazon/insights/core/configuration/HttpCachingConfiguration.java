package com.amazon.insights.core.configuration;

import com.amazon.insights.InsightsCredentials;
import com.amazon.insights.core.InsightsContext;
import com.amazon.insights.core.http.HttpClient;
import com.amazon.insights.core.http.HttpClient.HttpMethod;
import com.amazon.insights.core.http.HttpClient.Request;
import com.amazon.insights.core.idresolver.Id;
import com.amazon.insights.core.log.Logger;
import com.amazon.insights.core.system.Preferences;
import com.amazon.insights.core.util.Preconditions;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONException;
import org.json.JSONObject;

public class HttpCachingConfiguration
  implements Configuration
{
  private static final String CONFIG_KEY = "configuration";
  private static final String CONFIG_KEY_LAST_SYNC = "configuration.lastSyncDate";
  private static final long DEFAULT_SYNC_INTERVAL = 3600000L;
  private static final String ENDPOINT = "https://applab-sdk.amazon.com/1.0";
  private static final String ENDPOINT_PATH = "%s/applications/%s/configuration";
  private static final String UNIQUE_ID_HEADER_NAME = "x-amzn-UniqueId";
  private static final Logger logger = Logger.getLogger(HttpCachingConfiguration.class);
  private final ExecutorService backgroundExecutor;
  private final InsightsContext context;
  private AtomicBoolean isUpdateInProgress = new AtomicBoolean(false);
  private AtomicLong lastSync = new AtomicLong(0L);
  private final Map<String, String> overrideProperties;
  private Map<String, String> properties = new ConcurrentHashMap();
  
  HttpCachingConfiguration(InsightsContext paramInsightsContext, ExecutorService paramExecutorService, Map<String, String> paramMap)
  {
    Preconditions.checkNotNull(paramInsightsContext);
    Preconditions.checkNotNull(paramExecutorService);
    Preconditions.checkNotNull(paramMap);
    context = paramInsightsContext;
    overrideProperties = paramMap;
    backgroundExecutor = paramExecutorService;
    paramInsightsContext = getContext().getSystem().getPreferences();
    if (paramInsightsContext != null) {}
    for (;;)
    {
      try
      {
        lastSync.set(paramInsightsContext.getLong("configuration.lastSyncDate", 0L));
        paramInsightsContext = paramInsightsContext.getString("configuration", null);
        if (paramInsightsContext == null) {}
      }
      catch (ClassCastException paramExecutorService)
      {
        try
        {
          paramInsightsContext = new JSONObject(paramInsightsContext);
          updateMappings(paramInsightsContext);
          return;
        }
        catch (JSONException paramInsightsContext)
        {
          logger.e("could not create Json object of Config", paramInsightsContext);
          lastSync.set(0L);
        }
        paramExecutorService = paramExecutorService;
        lastSync.set(0L);
        continue;
      }
      paramInsightsContext = null;
    }
  }
  
  private void evaluateLastSync()
  {
    long l1 = 3600000L;
    String str = (String)properties.get("syncInterval");
    if (str != null) {}
    for (;;)
    {
      try
      {
        long l2 = Long.decode(str).longValue();
        l1 = l2;
      }
      catch (Exception localException)
      {
        logger.e(String.format("Could not get Long for propertyName: %s", new Object[] { "syncInterval" }), localException);
        continue;
      }
      if (System.currentTimeMillis() - getLastSync() > l1) {
        syncConfiguration();
      }
      return;
      l1 = 3600000L;
    }
  }
  
  private ExecutorService getBackgroundExecutor()
  {
    return backgroundExecutor;
  }
  
  private InsightsContext getContext()
  {
    return context;
  }
  
  private AtomicBoolean getIsUpdateInProgress()
  {
    return isUpdateInProgress;
  }
  
  private long getLastSync()
  {
    return lastSync.get();
  }
  
  public static HttpCachingConfiguration newInstance(InsightsContext paramInsightsContext, Map<String, String> paramMap)
  {
    return new HttpCachingConfiguration(paramInsightsContext, Executors.newSingleThreadExecutor(), paramMap);
  }
  
  private String optStringInternal(String paramString1, String paramString2)
  {
    paramString1 = (String)properties.get(paramString1);
    if (paramString1 != null) {
      return paramString1;
    }
    return paramString2;
  }
  
  private void updateMappings(JSONObject paramJSONObject)
  {
    HashMap localHashMap = new HashMap();
    Object localObject;
    if (paramJSONObject != null)
    {
      localObject = paramJSONObject.keys();
      while (((Iterator)localObject).hasNext())
      {
        String str = (String)((Iterator)localObject).next();
        try
        {
          localHashMap.put(str, paramJSONObject.getString(str));
        }
        catch (JSONException localJSONException)
        {
          logger.e("could not update property mappings", localJSONException);
        }
      }
    }
    paramJSONObject = overrideProperties.entrySet().iterator();
    while (paramJSONObject.hasNext())
    {
      localObject = (Map.Entry)paramJSONObject.next();
      localHashMap.put(((Map.Entry)localObject).getKey(), ((Map.Entry)localObject).getValue());
    }
    properties.putAll(localHashMap);
  }
  
  HttpClient.Request createHttpRequest()
  {
    boolean bool;
    Id localId;
    HttpClient.Request localRequest;
    if (getContext().getHttpClient() != null)
    {
      bool = true;
      Preconditions.checkState(bool, "An httpClient must be created in order to resolve configuration via http");
      str = String.format("%s/applications/%s/configuration", new Object[] { optStringInternal("configEndpoint", "https://applab-sdk.amazon.com/1.0"), getContext().getCredentials().getApplicationKey() });
      localId = getContext().getUniqueId();
      localRequest = createHttpRequestInstance();
      localRequest.setUrl(str);
      localRequest.setMethod(HttpClient.HttpMethod.GET);
      if (localId == null) {
        break label122;
      }
    }
    label122:
    for (String str = localId.getValue();; str = "")
    {
      localRequest.addHeader("x-amzn-UniqueId", str);
      return localRequest;
      bool = false;
      break;
    }
  }
  
  HttpClient.Request createHttpRequestInstance()
  {
    return context.getHttpClient().newRequest();
  }
  
  public Boolean getBoolean(String paramString)
  {
    String str = (String)properties.get(paramString);
    if (str != null) {}
    for (;;)
    {
      try
      {
        boolean bool = Boolean.parseBoolean(str);
        paramString = Boolean.valueOf(bool);
        evaluateLastSync();
        return paramString;
      }
      catch (Exception localException)
      {
        logger.e(String.format("Could not get Boolean for propertyName: %s", new Object[] { paramString }), localException);
      }
      paramString = null;
    }
  }
  
  public Double getDouble(String paramString)
  {
    String str = (String)properties.get(paramString);
    if (str != null) {}
    for (;;)
    {
      try
      {
        double d = Double.parseDouble(str);
        paramString = Double.valueOf(d);
        evaluateLastSync();
        return paramString;
      }
      catch (Exception localException)
      {
        logger.e(String.format("Could not get Double for propertyName: %s", new Object[] { paramString }), localException);
      }
      paramString = null;
    }
  }
  
  public Integer getInt(String paramString)
  {
    Object localObject = (String)properties.get(paramString);
    if (localObject != null) {}
    for (;;)
    {
      try
      {
        localObject = Integer.decode((String)localObject);
        paramString = (String)localObject;
        evaluateLastSync();
        return paramString;
      }
      catch (Exception localException)
      {
        logger.e(String.format("Could not get Integer for propertyName: %s", new Object[] { paramString }), localException);
      }
      paramString = null;
    }
  }
  
  public Long getLong(String paramString)
  {
    Object localObject = (String)properties.get(paramString);
    if (localObject != null) {}
    for (;;)
    {
      try
      {
        localObject = Long.decode((String)localObject);
        paramString = (String)localObject;
        evaluateLastSync();
        return paramString;
      }
      catch (Exception localException)
      {
        logger.e(String.format("Could not get Long for propertyName: %s", new Object[] { paramString }), localException);
      }
      paramString = null;
    }
  }
  
  public Short getShort(String paramString)
  {
    localObject3 = null;
    String str = (String)properties.get(paramString);
    Object localObject1 = localObject3;
    if (str != null) {}
    try
    {
      if (!properties.containsKey(paramString)) {
        break label80;
      }
      localObject1 = Short.decode(str);
      paramString = (String)localObject1;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        logger.e(String.format("Could not get Short for propertyName: %s", new Object[] { paramString }), localException);
        Object localObject2 = localObject3;
        continue;
        paramString = null;
      }
    }
    localObject1 = paramString;
    evaluateLastSync();
    return (Short)localObject1;
  }
  
  public String getString(String paramString)
  {
    paramString = (String)properties.get(paramString);
    evaluateLastSync();
    return paramString;
  }
  
  public Boolean optBoolean(String paramString, Boolean paramBoolean)
  {
    paramString = getBoolean(paramString);
    if (paramString != null) {
      paramBoolean = paramString;
    }
    return paramBoolean;
  }
  
  public Double optDouble(String paramString, Double paramDouble)
  {
    paramString = getDouble(paramString);
    if (paramString != null) {
      paramDouble = paramString;
    }
    return paramDouble;
  }
  
  public Integer optInt(String paramString, Integer paramInteger)
  {
    paramString = getInt(paramString);
    if (paramString != null) {
      paramInteger = paramString;
    }
    return paramInteger;
  }
  
  public Long optLong(String paramString, Long paramLong)
  {
    paramString = getLong(paramString);
    if (paramString != null) {
      paramLong = paramString;
    }
    return paramLong;
  }
  
  public Short optShort(String paramString, Short paramShort)
  {
    paramString = getShort(paramString);
    if (paramString != null) {
      paramShort = paramString;
    }
    return paramShort;
  }
  
  public String optString(String paramString1, String paramString2)
  {
    paramString1 = getString(paramString1);
    if (paramString1 != null) {
      paramString2 = paramString1;
    }
    return paramString2;
  }
  
  public void refresh()
  {
    evaluateLastSync();
  }
  
  void setLastSync(long paramLong)
  {
    lastSync.set(paramLong);
    getContext().getSystem().getPreferences().putLong("configuration.lastSyncDate", lastSync.get());
  }
  
  void syncConfiguration()
  {
    if (getIsUpdateInProgress().compareAndSet(false, true)) {
      getBackgroundExecutor().submit(new Runnable()
      {
        /* Error */
        public void run()
        {
          // Byte code:
          //   0: aload_0
          //   1: getfield 17	com/amazon/insights/core/configuration/HttpCachingConfiguration$1:this$0	Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;
          //   4: invokestatic 29	com/amazon/insights/core/configuration/HttpCachingConfiguration:access$000	(Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;)Lcom/amazon/insights/core/InsightsContext;
          //   7: invokeinterface 35 1 0
          //   12: invokeinterface 41 1 0
          //   17: invokeinterface 47 1 0
          //   22: ifeq +322 -> 344
          //   25: aload_0
          //   26: getfield 17	com/amazon/insights/core/configuration/HttpCachingConfiguration$1:this$0	Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;
          //   29: invokevirtual 51	com/amazon/insights/core/configuration/HttpCachingConfiguration:createHttpRequest	()Lcom/amazon/insights/core/http/HttpClient$Request;
          //   32: astore 5
          //   34: aload 5
          //   36: ifnull +368 -> 404
          //   39: aload_0
          //   40: getfield 17	com/amazon/insights/core/configuration/HttpCachingConfiguration$1:this$0	Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;
          //   43: invokestatic 55	com/amazon/insights/core/configuration/HttpCachingConfiguration:access$100	(Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;)Ljava/util/Map;
          //   46: ldc 57
          //   48: invokeinterface 63 2 0
          //   53: ifeq +342 -> 395
          //   56: aload_0
          //   57: getfield 17	com/amazon/insights/core/configuration/HttpCachingConfiguration$1:this$0	Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;
          //   60: invokestatic 55	com/amazon/insights/core/configuration/HttpCachingConfiguration:access$100	(Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;)Ljava/util/Map;
          //   63: ldc 57
          //   65: invokeinterface 67 2 0
          //   70: checkcast 69	java/lang/String
          //   73: astore 4
          //   75: aload 4
          //   77: ifnull +318 -> 395
          //   80: aload 4
          //   82: invokestatic 75	java/lang/Integer:decode	(Ljava/lang/String;)Ljava/lang/Integer;
          //   85: astore 4
          //   87: aload_0
          //   88: getfield 17	com/amazon/insights/core/configuration/HttpCachingConfiguration$1:this$0	Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;
          //   91: invokestatic 78	com/amazon/insights/core/configuration/HttpCachingConfiguration:access$300	(Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;)Lcom/amazon/insights/core/InsightsContext;
          //   94: invokeinterface 82 1 0
          //   99: aload 5
          //   101: aload 4
          //   103: invokeinterface 88 3 0
          //   108: astore 4
          //   110: aload 4
          //   112: invokeinterface 94 1 0
          //   117: istore_1
          //   118: iload_1
          //   119: sipush 200
          //   122: if_icmpne +168 -> 290
          //   125: new 96	org/json/JSONObject
          //   128: dup
          //   129: aload 4
          //   131: invokeinterface 100 1 0
          //   136: invokespecial 103	org/json/JSONObject:<init>	(Ljava/lang/String;)V
          //   139: astore 4
          //   141: aload 4
          //   143: ifnull +83 -> 226
          //   146: aload 4
          //   148: invokevirtual 106	org/json/JSONObject:toString	()Ljava/lang/String;
          //   151: astore 5
          //   153: invokestatic 110	com/amazon/insights/core/configuration/HttpCachingConfiguration:access$200	()Lcom/amazon/insights/core/log/Logger;
          //   156: getstatic 116	com/amazon/insights/core/log/Logger$LogLevel:VERBOSE	Lcom/amazon/insights/core/log/Logger$LogLevel;
          //   159: invokevirtual 122	com/amazon/insights/core/log/Logger:isLoggingEnabled	(Lcom/amazon/insights/core/log/Logger$LogLevel;)Z
          //   162: ifeq +29 -> 191
          //   165: invokestatic 110	com/amazon/insights/core/configuration/HttpCachingConfiguration:access$200	()Lcom/amazon/insights/core/log/Logger;
          //   168: new 124	java/lang/StringBuilder
          //   171: dup
          //   172: invokespecial 125	java/lang/StringBuilder:<init>	()V
          //   175: ldc 127
          //   177: invokevirtual 131	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
          //   180: aload 5
          //   182: invokevirtual 131	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
          //   185: invokevirtual 132	java/lang/StringBuilder:toString	()Ljava/lang/String;
          //   188: invokevirtual 135	com/amazon/insights/core/log/Logger:v	(Ljava/lang/String;)V
          //   191: aload_0
          //   192: getfield 17	com/amazon/insights/core/configuration/HttpCachingConfiguration$1:this$0	Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;
          //   195: invokestatic 78	com/amazon/insights/core/configuration/HttpCachingConfiguration:access$300	(Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;)Lcom/amazon/insights/core/InsightsContext;
          //   198: invokeinterface 35 1 0
          //   203: invokeinterface 139 1 0
          //   208: ldc -115
          //   210: aload 5
          //   212: invokeinterface 147 3 0
          //   217: aload_0
          //   218: getfield 17	com/amazon/insights/core/configuration/HttpCachingConfiguration$1:this$0	Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;
          //   221: aload 4
          //   223: invokestatic 151	com/amazon/insights/core/configuration/HttpCachingConfiguration:access$400	(Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;Lorg/json/JSONObject;)V
          //   226: invokestatic 157	java/lang/System:currentTimeMillis	()J
          //   229: lstore_2
          //   230: aload_0
          //   231: getfield 17	com/amazon/insights/core/configuration/HttpCachingConfiguration$1:this$0	Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;
          //   234: lload_2
          //   235: invokevirtual 161	com/amazon/insights/core/configuration/HttpCachingConfiguration:setLastSync	(J)V
          //   238: aload_0
          //   239: getfield 17	com/amazon/insights/core/configuration/HttpCachingConfiguration$1:this$0	Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;
          //   242: invokestatic 165	com/amazon/insights/core/configuration/HttpCachingConfiguration:access$500	(Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;)Ljava/util/concurrent/atomic/AtomicBoolean;
          //   245: iconst_0
          //   246: invokevirtual 171	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
          //   249: return
          //   250: astore 4
          //   252: invokestatic 110	com/amazon/insights/core/configuration/HttpCachingConfiguration:access$200	()Lcom/amazon/insights/core/log/Logger;
          //   255: ldc -83
          //   257: iconst_0
          //   258: anewarray 4	java/lang/Object
          //   261: invokestatic 177	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
          //   264: aload 4
          //   266: invokevirtual 181	com/amazon/insights/core/log/Logger:e	(Ljava/lang/String;Ljava/lang/Throwable;)V
          //   269: goto +126 -> 395
          //   272: astore 4
          //   274: invokestatic 110	com/amazon/insights/core/configuration/HttpCachingConfiguration:access$200	()Lcom/amazon/insights/core/log/Logger;
          //   277: ldc -73
          //   279: aload 4
          //   281: invokevirtual 181	com/amazon/insights/core/log/Logger:e	(Ljava/lang/String;Ljava/lang/Throwable;)V
          //   284: aconst_null
          //   285: astore 4
          //   287: goto -146 -> 141
          //   290: invokestatic 110	com/amazon/insights/core/configuration/HttpCachingConfiguration:access$200	()Lcom/amazon/insights/core/log/Logger;
          //   293: new 124	java/lang/StringBuilder
          //   296: dup
          //   297: invokespecial 125	java/lang/StringBuilder:<init>	()V
          //   300: ldc -71
          //   302: invokevirtual 131	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
          //   305: aload 4
          //   307: invokeinterface 188 1 0
          //   312: invokevirtual 131	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
          //   315: ldc -66
          //   317: invokevirtual 131	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
          //   320: aload 4
          //   322: invokeinterface 94 1 0
          //   327: invokevirtual 193	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
          //   330: ldc -61
          //   332: invokevirtual 131	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
          //   335: invokevirtual 132	java/lang/StringBuilder:toString	()Ljava/lang/String;
          //   338: invokevirtual 197	com/amazon/insights/core/log/Logger:e	(Ljava/lang/String;)V
          //   341: goto +63 -> 404
          //   344: invokestatic 110	com/amazon/insights/core/configuration/HttpCachingConfiguration:access$200	()Lcom/amazon/insights/core/log/Logger;
          //   347: ldc -57
          //   349: invokevirtual 135	com/amazon/insights/core/log/Logger:v	(Ljava/lang/String;)V
          //   352: goto -126 -> 226
          //   355: astore 4
          //   357: invokestatic 110	com/amazon/insights/core/configuration/HttpCachingConfiguration:access$200	()Lcom/amazon/insights/core/log/Logger;
          //   360: ldc -55
          //   362: aload 4
          //   364: invokevirtual 181	com/amazon/insights/core/log/Logger:e	(Ljava/lang/String;Ljava/lang/Throwable;)V
          //   367: aload_0
          //   368: getfield 17	com/amazon/insights/core/configuration/HttpCachingConfiguration$1:this$0	Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;
          //   371: invokestatic 165	com/amazon/insights/core/configuration/HttpCachingConfiguration:access$500	(Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;)Ljava/util/concurrent/atomic/AtomicBoolean;
          //   374: iconst_0
          //   375: invokevirtual 171	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
          //   378: return
          //   379: astore 4
          //   381: aload_0
          //   382: getfield 17	com/amazon/insights/core/configuration/HttpCachingConfiguration$1:this$0	Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;
          //   385: invokestatic 165	com/amazon/insights/core/configuration/HttpCachingConfiguration:access$500	(Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;)Ljava/util/concurrent/atomic/AtomicBoolean;
          //   388: iconst_0
          //   389: invokevirtual 171	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
          //   392: aload 4
          //   394: athrow
          //   395: iconst_1
          //   396: invokestatic 205	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
          //   399: astore 4
          //   401: goto -314 -> 87
          //   404: aconst_null
          //   405: astore 4
          //   407: goto -266 -> 141
          // Local variable table:
          //   start	length	slot	name	signature
          //   0	410	0	this	1
          //   117	6	1	i	int
          //   229	6	2	l	long
          //   73	149	4	localObject1	Object
          //   250	15	4	localException1	Exception
          //   272	8	4	localJSONException	JSONException
          //   285	36	4	localObject2	Object
          //   355	8	4	localException2	Exception
          //   379	14	4	localObject3	Object
          //   399	7	4	localInteger	Integer
          //   32	179	5	localObject4	Object
          // Exception table:
          //   from	to	target	type
          //   80	87	250	java/lang/Exception
          //   125	141	272	org/json/JSONException
          //   0	34	355	java/lang/Exception
          //   39	75	355	java/lang/Exception
          //   87	118	355	java/lang/Exception
          //   125	141	355	java/lang/Exception
          //   146	191	355	java/lang/Exception
          //   191	226	355	java/lang/Exception
          //   226	238	355	java/lang/Exception
          //   252	269	355	java/lang/Exception
          //   274	284	355	java/lang/Exception
          //   290	341	355	java/lang/Exception
          //   344	352	355	java/lang/Exception
          //   0	34	379	finally
          //   39	75	379	finally
          //   80	87	379	finally
          //   87	118	379	finally
          //   125	141	379	finally
          //   146	191	379	finally
          //   191	226	379	finally
          //   226	238	379	finally
          //   252	269	379	finally
          //   274	284	379	finally
          //   290	341	379	finally
          //   344	352	379	finally
          //   357	367	379	finally
        }
      });
    }
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.core.configuration.HttpCachingConfiguration
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */