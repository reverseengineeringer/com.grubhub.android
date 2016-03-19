package com.amazon.insights.core.crash.ers;

import com.amazon.insights.core.http.HttpClient.Response;
import com.amazon.insights.error.InsightsError;

class ERSClient$1$1
  implements InsightsError
{
  private final String message = String.format("Failed to submit events to EventService: %d", new Object[] { Integer.valueOf(val$response.getCode()) });
  
  ERSClient$1$1(ERSClient.1 param1, HttpClient.Response paramResponse) {}
  
  public String getMessage()
  {
    return message;
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.core.crash.ers.ERSClient.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */