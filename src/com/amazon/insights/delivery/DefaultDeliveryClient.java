package com.amazon.insights.delivery;

import com.amazon.insights.core.InsightsContext;
import com.amazon.insights.core.configuration.Configuration;
import com.amazon.insights.core.http.HttpClient;
import com.amazon.insights.core.http.HttpClient.Request;
import com.amazon.insights.core.http.HttpClient.Response;
import com.amazon.insights.core.http.HttpUtil;
import com.amazon.insights.core.log.Logger;
import com.amazon.insights.delivery.policy.DefaultDeliveryPolicyFactory;
import com.amazon.insights.delivery.policy.DeliveryPolicy;
import com.amazon.insights.delivery.policy.DeliveryPolicyFactory;
import com.amazon.insights.event.InternalEvent;
import com.amazon.insights.event.adapter.EventAdapter;
import com.amazon.insights.event.adapter.JSONEventAdapter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor.DiscardPolicy;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class DefaultDeliveryClient
  implements DeliveryClient
{
  private static final int CLIPPED_EVENT_LENGTH = 5;
  static final int DEFAULT_EVENT_RECORD_REQUEST_RETRIES = 2;
  static final int DEFAULT_MAX_SUBMISSIONS_ALLOWED = 3;
  static final long DEFAULT_MAX_SUBMISSION_SIZE = 102400L;
  public static final String EVENTS_DIRECTORY = "events";
  static final String KEY_EVENT_RECORDER_MAX_RETRIES = "eventRecorderRequestRetries";
  static final String KEY_MAX_SUBMISSIONS_ALLOWED = "maxSubmissionAllowed";
  static final String KEY_MAX_SUBMISSION_SIZE = "maxSubmissionSize";
  private static final int MAX_EVENT_OPERATIONS = 1000;
  private static final int MAX_SUBMIT_OPERATIONS = 100;
  static final Set<Integer> RETRY_REQUEST_CODES;
  private static final Logger logger = Logger.getLogger(DefaultDeliveryClient.class);
  private final AtomicLong avgWriteEventTimeMillis = new AtomicLong(25L);
  private final InsightsContext context;
  private final EventAdapter<JSONObject> eventAdapter;
  private final EventStore eventStore;
  private final AtomicLong eventsProcessed = new AtomicLong(0L);
  private final ExecutorService eventsRunnableQueue;
  private final DeliveryPolicyFactory policyFactory;
  private final ERSRequestBuilder requestBuilder;
  private final ExecutorService submissionRunnableQueue;
  
  static
  {
    RETRY_REQUEST_CODES = new HashSet();
    RETRY_REQUEST_CODES.add(Integer.valueOf(401));
    RETRY_REQUEST_CODES.add(Integer.valueOf(404));
    RETRY_REQUEST_CODES.add(Integer.valueOf(407));
    RETRY_REQUEST_CODES.add(Integer.valueOf(408));
  }
  
  public DefaultDeliveryClient(InsightsContext paramInsightsContext, DeliveryPolicyFactory paramDeliveryPolicyFactory, ExecutorService paramExecutorService1, ExecutorService paramExecutorService2, ERSRequestBuilder paramERSRequestBuilder, EventStore paramEventStore, EventAdapter<JSONObject> paramEventAdapter)
  {
    policyFactory = paramDeliveryPolicyFactory;
    eventsRunnableQueue = paramExecutorService1;
    submissionRunnableQueue = paramExecutorService2;
    context = paramInsightsContext;
    requestBuilder = paramERSRequestBuilder;
    eventStore = paramEventStore;
    eventAdapter = paramEventAdapter;
  }
  
  private void calculateAndSetAverageWriteEventTime(long paramLong1, long paramLong2)
  {
    long l = eventsProcessed.addAndGet(1L);
    paramLong1 = Math.ceil((System.currentTimeMillis() - paramLong2) / (l - paramLong1));
    avgWriteEventTimeMillis.set(paramLong1);
  }
  
  private List<String> getBatchedItems()
  {
    ArrayList localArrayList = new ArrayList();
    EventStore.EventIterator localEventIterator = eventStore.iterator();
    while (localEventIterator.hasNext()) {
      localArrayList.add(localEventIterator.next());
    }
    return localArrayList;
  }
  
  private long getSubmissionLatchWaitTime()
  {
    return (avgWriteEventTimeMillis.get() * 1000L * 1.5D);
  }
  
  public static DefaultDeliveryClient newInstance(InsightsContext paramInsightsContext, boolean paramBoolean)
  {
    ThreadPoolExecutor localThreadPoolExecutor1 = new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(1000), new ThreadPoolExecutor.DiscardPolicy());
    ThreadPoolExecutor localThreadPoolExecutor2 = new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(100), new ThreadPoolExecutor.DiscardPolicy());
    ERSRequestBuilder localERSRequestBuilder = ERSRequestBuilder.newBuilder(paramInsightsContext);
    return new DefaultDeliveryClient(paramInsightsContext, new DefaultDeliveryPolicyFactory(paramInsightsContext, paramBoolean), localThreadPoolExecutor1, localThreadPoolExecutor2, localERSRequestBuilder, FileEventStore.newInstance(paramInsightsContext), new JSONEventAdapter());
  }
  
  private boolean submitEvents(JSONArray paramJSONArray, List<DeliveryPolicy> paramList)
  {
    boolean bool1 = false;
    boolean bool2 = false;
    Object localObject = requestBuilder.createHttpRequest(paramJSONArray);
    if (localObject == null)
    {
      logger.e("There was an error when building the http request");
      return bool2;
    }
    int i = context.getConfiguration().optInt("eventRecorderRequestRetries", Integer.valueOf(2)).intValue();
    localObject = context.getHttpClient().execute((HttpClient.Request)localObject, Integer.valueOf(i));
    if (localObject == null)
    {
      logger.e("The http request returned a null http response");
      return false;
    }
    if (((HttpClient.Response)localObject).getCode() / 100 == 2)
    {
      logger.i(String.format("Success from EventService: %d", new Object[] { Integer.valueOf(((HttpClient.Response)localObject).getCode()) }));
      logger.devi(String.format("Successful submission of %d events", new Object[] { Integer.valueOf(paramJSONArray.length()) }));
      bool1 = true;
    }
    for (;;)
    {
      paramJSONArray = paramList.iterator();
      for (;;)
      {
        bool2 = bool1;
        if (!paramJSONArray.hasNext()) {
          break;
        }
        ((DeliveryPolicy)paramJSONArray.next()).handleDeliveryAttempt(bool1);
      }
      if ((((HttpClient.Response)localObject).getCode() / 100 == 4) && (!RETRY_REQUEST_CODES.contains(Integer.valueOf(((HttpClient.Response)localObject).getCode()))))
      {
        logger.i(String.format("Failed to submit events to EventService: %d", new Object[] { Integer.valueOf(((HttpClient.Response)localObject).getCode()) }));
        logger.devi(String.format("Failed submission of %d events", new Object[] { Integer.valueOf(paramJSONArray.length()) }));
        bool1 = true;
      }
      else
      {
        logger.devw("Unable to successfully deliver events to server. Response code (" + ((HttpClient.Response)localObject).getCode() + ") " + HttpUtil.getMessageForResponse((HttpClient.Response)localObject));
        logger.w("Recieved a bad response: " + localObject);
      }
    }
  }
  
  public void attemptDelivery()
  {
    ArrayList localArrayList = new ArrayList();
    DeliveryPolicy localDeliveryPolicy1 = policyFactory.newForceSubmissionTimePolicy();
    DeliveryPolicy localDeliveryPolicy2 = policyFactory.newConnectivityPolicy();
    if (localDeliveryPolicy2 != null) {
      localArrayList.add(localDeliveryPolicy2);
    }
    if (localDeliveryPolicy1 != null) {
      localArrayList.add(localDeliveryPolicy1);
    }
    attemptDelivery(localArrayList);
  }
  
  public void attemptDelivery(final List<DeliveryPolicy> paramList)
  {
    final CountDownLatch localCountDownLatch = new CountDownLatch(1);
    eventsRunnableQueue.execute(new Runnable()
    {
      public void run()
      {
        localCountDownLatch.countDown();
      }
    });
    submissionRunnableQueue.execute(new Runnable()
    {
      public void run()
      {
        long l4 = System.currentTimeMillis();
        Object localObject = paramList.iterator();
        while (((Iterator)localObject).hasNext()) {
          if (!((DeliveryPolicy)((Iterator)localObject).next()).isAllowed()) {
            return;
          }
        }
        try
        {
          localCountDownLatch.await(DefaultDeliveryClient.this.getSubmissionLatchWaitTime(), TimeUnit.MILLISECONDS);
          long l5 = context.getConfiguration().optLong("maxSubmissionSize", Long.valueOf(102400L)).longValue();
          localObject = new JSONArray();
          EventStore.EventIterator localEventIterator = eventStore.iterator();
          long l1 = 0L;
          int j = context.getConfiguration().optInt("maxSubmissionAllowed", Integer.valueOf(3)).intValue();
          boolean bool1 = true;
          int i = 0;
          boolean bool2;
          for (;;)
          {
            bool2 = bool1;
            if (!localEventIterator.hasNext()) {
              break;
            }
            bool2 = bool1;
            if (i >= j) {
              break;
            }
            l2 = l1;
            try
            {
              if (localEventIterator.peek() == null) {
                break label405;
              }
              l2 = l1;
              long l3 = localEventIterator.peek().length();
              l2 = l3;
              if (l1 + l2 <= l5)
              {
                l1 += l2;
                l2 = l1;
                ((JSONArray)localObject).put(new JSONObject((String)localEventIterator.next()));
                break label402;
              }
              l2 = l1;
              bool2 = DefaultDeliveryClient.this.submitEvents((JSONArray)localObject, paramList);
              bool1 = bool2;
              bool2 = bool1;
              if (!bool1) {
                break;
              }
              i += 1;
              JSONArray localJSONArray;
              DefaultDeliveryClient.logger.e("Could not convert stored event into json", localJSONException1);
            }
            catch (JSONException localJSONException1)
            {
              try
              {
                localEventIterator.removeReadEvents();
                localJSONArray = new JSONArray();
                l1 = 0L;
                localObject = localJSONArray;
              }
              catch (JSONException localJSONException2)
              {
                for (;;) {}
              }
              localJSONException1 = localJSONException1;
              l1 = l2;
            }
          }
          if ((bool2) && (((JSONArray)localObject).length() > 0) && (DefaultDeliveryClient.this.submitEvents((JSONArray)localObject, paramList))) {
            localEventIterator.removeReadEvents();
          }
          DefaultDeliveryClient.logger.v(String.format("Time of attemptDelivery: %d", new Object[] { Long.valueOf(System.currentTimeMillis() - l4) }));
          return;
        }
        catch (InterruptedException localInterruptedException)
        {
          for (;;)
          {
            continue;
            label402:
            continue;
            label405:
            long l2 = 0L;
          }
        }
      }
    });
  }
  
  public String[] batchedEvents()
  {
    final Object localObject = new CountDownLatch(1);
    eventsRunnableQueue.execute(new Runnable()
    {
      public void run()
      {
        localObject.countDown();
      }
    });
    try
    {
      ((CountDownLatch)localObject).await(10L, TimeUnit.SECONDS);
      localObject = getBatchedItems();
      return (String[])getBatchedItems().toArray(new String[((List)localObject).size()]);
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;)
      {
        logger.e("timeout waiting for batchedEvents", localInterruptedException);
      }
    }
  }
  
  public void enqueueEventForDelivery(final InternalEvent paramInternalEvent)
  {
    long l1 = System.currentTimeMillis();
    final long l2 = eventsProcessed.get();
    eventsRunnableQueue.execute(new Runnable()
    {
      /* Error */
      public void run()
      {
        // Byte code:
        //   0: invokestatic 41	java/lang/System:currentTimeMillis	()J
        //   3: lstore_1
        //   4: aload_0
        //   5: getfield 22	com/amazon/insights/delivery/DefaultDeliveryClient$1:this$0	Lcom/amazon/insights/delivery/DefaultDeliveryClient;
        //   8: invokestatic 45	com/amazon/insights/delivery/DefaultDeliveryClient:access$100	(Lcom/amazon/insights/delivery/DefaultDeliveryClient;)Lcom/amazon/insights/delivery/EventStore;
        //   11: aload_0
        //   12: getfield 22	com/amazon/insights/delivery/DefaultDeliveryClient$1:this$0	Lcom/amazon/insights/delivery/DefaultDeliveryClient;
        //   15: invokestatic 49	com/amazon/insights/delivery/DefaultDeliveryClient:access$000	(Lcom/amazon/insights/delivery/DefaultDeliveryClient;)Lcom/amazon/insights/event/adapter/EventAdapter;
        //   18: aload_0
        //   19: getfield 24	com/amazon/insights/delivery/DefaultDeliveryClient$1:val$event	Lcom/amazon/insights/event/InternalEvent;
        //   22: invokeinterface 55 2 0
        //   27: checkcast 57	org/json/JSONObject
        //   30: invokevirtual 61	org/json/JSONObject:toString	()Ljava/lang/String;
        //   33: invokeinterface 67 2 0
        //   38: ifeq +77 -> 115
        //   41: invokestatic 71	com/amazon/insights/delivery/DefaultDeliveryClient:access$200	()Lcom/amazon/insights/core/log/Logger;
        //   44: ldc 73
        //   46: iconst_1
        //   47: anewarray 4	java/lang/Object
        //   50: dup
        //   51: iconst_0
        //   52: aload_0
        //   53: getfield 24	com/amazon/insights/delivery/DefaultDeliveryClient$1:val$event	Lcom/amazon/insights/event/InternalEvent;
        //   56: invokeinterface 78 1 0
        //   61: iconst_5
        //   62: iconst_1
        //   63: invokestatic 84	com/amazon/insights/core/util/StringUtil:clipString	(Ljava/lang/String;IZ)Ljava/lang/String;
        //   66: aastore
        //   67: invokestatic 90	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
        //   70: invokevirtual 96	com/amazon/insights/core/log/Logger:devi	(Ljava/lang/String;)V
        //   73: invokestatic 71	com/amazon/insights/delivery/DefaultDeliveryClient:access$200	()Lcom/amazon/insights/core/log/Logger;
        //   76: ldc 98
        //   78: iconst_1
        //   79: anewarray 4	java/lang/Object
        //   82: dup
        //   83: iconst_0
        //   84: invokestatic 41	java/lang/System:currentTimeMillis	()J
        //   87: lload_1
        //   88: lsub
        //   89: invokestatic 104	java/lang/Long:valueOf	(J)Ljava/lang/Long;
        //   92: aastore
        //   93: invokestatic 90	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
        //   96: invokevirtual 107	com/amazon/insights/core/log/Logger:v	(Ljava/lang/String;)V
        //   99: aload_0
        //   100: getfield 22	com/amazon/insights/delivery/DefaultDeliveryClient$1:this$0	Lcom/amazon/insights/delivery/DefaultDeliveryClient;
        //   103: aload_0
        //   104: getfield 26	com/amazon/insights/delivery/DefaultDeliveryClient$1:val$origEventsProcessed	J
        //   107: aload_0
        //   108: getfield 28	com/amazon/insights/delivery/DefaultDeliveryClient$1:val$startEnqueueTimeMillis	J
        //   111: invokestatic 111	com/amazon/insights/delivery/DefaultDeliveryClient:access$300	(Lcom/amazon/insights/delivery/DefaultDeliveryClient;JJ)V
        //   114: return
        //   115: invokestatic 71	com/amazon/insights/delivery/DefaultDeliveryClient:access$200	()Lcom/amazon/insights/core/log/Logger;
        //   118: ldc 113
        //   120: iconst_1
        //   121: anewarray 4	java/lang/Object
        //   124: dup
        //   125: iconst_0
        //   126: aload_0
        //   127: getfield 24	com/amazon/insights/delivery/DefaultDeliveryClient$1:val$event	Lcom/amazon/insights/event/InternalEvent;
        //   130: invokeinterface 78 1 0
        //   135: iconst_5
        //   136: iconst_1
        //   137: invokestatic 84	com/amazon/insights/core/util/StringUtil:clipString	(Ljava/lang/String;IZ)Ljava/lang/String;
        //   140: aastore
        //   141: invokestatic 90	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
        //   144: invokevirtual 116	com/amazon/insights/core/log/Logger:devw	(Ljava/lang/String;)V
        //   147: goto -48 -> 99
        //   150: astore_3
        //   151: invokestatic 71	com/amazon/insights/delivery/DefaultDeliveryClient:access$200	()Lcom/amazon/insights/core/log/Logger;
        //   154: ldc 113
        //   156: iconst_1
        //   157: anewarray 4	java/lang/Object
        //   160: dup
        //   161: iconst_0
        //   162: aload_0
        //   163: getfield 24	com/amazon/insights/delivery/DefaultDeliveryClient$1:val$event	Lcom/amazon/insights/event/InternalEvent;
        //   166: invokeinterface 78 1 0
        //   171: iconst_5
        //   172: iconst_1
        //   173: invokestatic 84	com/amazon/insights/core/util/StringUtil:clipString	(Ljava/lang/String;IZ)Ljava/lang/String;
        //   176: aastore
        //   177: invokestatic 90	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
        //   180: invokevirtual 116	com/amazon/insights/core/log/Logger:devw	(Ljava/lang/String;)V
        //   183: aload_0
        //   184: getfield 22	com/amazon/insights/delivery/DefaultDeliveryClient$1:this$0	Lcom/amazon/insights/delivery/DefaultDeliveryClient;
        //   187: aload_0
        //   188: getfield 26	com/amazon/insights/delivery/DefaultDeliveryClient$1:val$origEventsProcessed	J
        //   191: aload_0
        //   192: getfield 28	com/amazon/insights/delivery/DefaultDeliveryClient$1:val$startEnqueueTimeMillis	J
        //   195: invokestatic 111	com/amazon/insights/delivery/DefaultDeliveryClient:access$300	(Lcom/amazon/insights/delivery/DefaultDeliveryClient;JJ)V
        //   198: return
        //   199: astore_3
        //   200: aload_0
        //   201: getfield 22	com/amazon/insights/delivery/DefaultDeliveryClient$1:this$0	Lcom/amazon/insights/delivery/DefaultDeliveryClient;
        //   204: aload_0
        //   205: getfield 26	com/amazon/insights/delivery/DefaultDeliveryClient$1:val$origEventsProcessed	J
        //   208: aload_0
        //   209: getfield 28	com/amazon/insights/delivery/DefaultDeliveryClient$1:val$startEnqueueTimeMillis	J
        //   212: invokestatic 111	com/amazon/insights/delivery/DefaultDeliveryClient:access$300	(Lcom/amazon/insights/delivery/DefaultDeliveryClient;JJ)V
        //   215: aload_3
        //   216: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	217	0	this	1
        //   3	85	1	l	long
        //   150	1	3	localEventStoreException	EventStoreException
        //   199	17	3	localObject	Object
        // Exception table:
        //   from	to	target	type
        //   4	99	150	com/amazon/insights/delivery/EventStoreException
        //   115	147	150	com/amazon/insights/delivery/EventStoreException
        //   4	99	199	finally
        //   115	147	199	finally
        //   151	183	199	finally
      }
    });
  }
  
  public void notify(InternalEvent paramInternalEvent)
  {
    enqueueEventForDelivery(paramInternalEvent);
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.delivery.DefaultDeliveryClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */