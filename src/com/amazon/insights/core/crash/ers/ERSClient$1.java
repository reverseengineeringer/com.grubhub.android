package com.amazon.insights.core.crash.ers;

import com.amazon.insights.core.DefaultInsightsHandler;
import com.amazon.insights.core.http.HttpClient;
import com.amazon.insights.core.http.HttpClient.Request;
import com.amazon.insights.core.http.HttpClient.Response;
import com.amazon.insights.core.log.Logger;
import com.amazon.insights.delivery.ERSRequestBuilder;
import com.amazon.insights.error.InsightsError;
import com.amazon.insights.error.UnexpectedError;
import org.json.JSONArray;

class ERSClient$1
  implements Runnable
{
  ERSClient$1(ERSClient paramERSClient, JSONArray paramJSONArray, DefaultInsightsHandler paramDefaultInsightsHandler) {}
  
  public void run()
  {
    try
    {
      final Object localObject = ERSClient.access$000(this$0).createHttpRequest(val$eventsArray);
      localObject = ERSClient.access$100(this$0).execute((HttpClient.Request)localObject, Integer.valueOf(0));
      if (((HttpClient.Response)localObject).getCode() / 100 == 2)
      {
        ERSClient.access$200().d(String.format("Success from EventService: %d", new Object[] { Integer.valueOf(((HttpClient.Response)localObject).getCode()) }));
        val$handler.onComplete(Boolean.TRUE);
        return;
      }
      val$handler.onError(new InsightsError()
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
      ERSClient.access$200().e("Unable to send ers request", localException);
      val$handler.onError(new UnexpectedError("Failed to submit events to EventService", localException));
    }
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.core.crash.ers.ERSClient.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */