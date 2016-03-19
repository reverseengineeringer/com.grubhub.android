package com.amazon.insights.core.crash.ers;

import com.amazon.insights.InsightsHandler;
import com.amazon.insights.core.DefaultInsightsHandler;
import com.amazon.insights.core.InsightsContext;
import com.amazon.insights.core.http.HttpClient;
import com.amazon.insights.core.http.HttpClient.Request;
import com.amazon.insights.core.http.HttpClient.Response;
import com.amazon.insights.core.log.Logger;
import com.amazon.insights.delivery.ERSRequestBuilder;
import com.amazon.insights.error.InsightsError;
import com.amazon.insights.error.UnexpectedError;
import com.amazon.insights.event.DefaultEvent;
import com.amazon.insights.event.InternalEvent;
import com.amazon.insights.event.adapter.EventAdapter;
import com.amazon.insights.event.adapter.JSONEventAdapter;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor.DiscardPolicy;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;

public class ERSClient
{
  private static final int MAX_SUBMIT_OPERATIONS = 100;
  private static final Logger logger = Logger.getLogger(ERSClient.class);
  private final ERSRequestBuilder ersRequestBuilder;
  private final EventAdapter<JSONObject> eventAdapter;
  private final HttpClient httpClient;
  private final ExecutorService submissionExecutor;
  
  public ERSClient(ExecutorService paramExecutorService, ERSRequestBuilder paramERSRequestBuilder, HttpClient paramHttpClient, EventAdapter<JSONObject> paramEventAdapter)
  {
    submissionExecutor = paramExecutorService;
    ersRequestBuilder = paramERSRequestBuilder;
    httpClient = paramHttpClient;
    eventAdapter = paramEventAdapter;
  }
  
  public static ERSClient newInstance(InsightsContext paramInsightsContext)
  {
    ThreadPoolExecutor localThreadPoolExecutor = new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(100), new ThreadPoolExecutor.DiscardPolicy());
    ERSRequestBuilder localERSRequestBuilder = ERSRequestBuilder.newBuilder(paramInsightsContext);
    JSONEventAdapter localJSONEventAdapter = new JSONEventAdapter();
    return new ERSClient(localThreadPoolExecutor, localERSRequestBuilder, paramInsightsContext.getHttpClient(), localJSONEventAdapter);
  }
  
  public InsightsHandler<Boolean> submitEvents(List<DefaultEvent> paramList)
  {
    final DefaultInsightsHandler localDefaultInsightsHandler = new DefaultInsightsHandler();
    final JSONArray localJSONArray = new JSONArray();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      Object localObject = (DefaultEvent)paramList.next();
      localObject = (JSONObject)eventAdapter.translateFromEvent((InternalEvent)localObject);
      if (localObject != null) {
        localJSONArray.put(localObject);
      }
    }
    submissionExecutor.execute(new Runnable()
    {
      public void run()
      {
        try
        {
          final Object localObject = ersRequestBuilder.createHttpRequest(localJSONArray);
          localObject = httpClient.execute((HttpClient.Request)localObject, Integer.valueOf(0));
          if (((HttpClient.Response)localObject).getCode() / 100 == 2)
          {
            ERSClient.logger.d(String.format("Success from EventService: %d", new Object[] { Integer.valueOf(((HttpClient.Response)localObject).getCode()) }));
            localDefaultInsightsHandler.onComplete(Boolean.TRUE);
            return;
          }
          localDefaultInsightsHandler.onError(new InsightsError()
          {
            private final String message = String.format("Failed to submit events to EventService: %d", new Object[] { Integer.valueOf(localObject.getCode()) });
            
            public String getMessage()
            {
              return message;
            }
          });
          return;
        }
        catch (Exception localException)
        {
          ERSClient.logger.e("Unable to send ers request", localException);
          localDefaultInsightsHandler.onError(new UnexpectedError("Failed to submit events to EventService", localException));
        }
      }
    });
    return localDefaultInsightsHandler;
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.core.crash.ers.ERSClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */