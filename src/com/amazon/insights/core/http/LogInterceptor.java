package com.amazon.insights.core.http;

import com.amazon.insights.core.log.Logger;
import com.amazon.insights.core.log.Logger.LogLevel;

public final class LogInterceptor
  implements HttpClient.Interceptor
{
  private static Logger logger = Logger.getLogger(LogInterceptor.class);
  
  public void after(HttpClient.Response paramResponse)
  {
    if (logger.isLoggingEnabled(Logger.LogLevel.VERBOSE)) {
      logger.v(paramResponse.toString());
    }
  }
  
  public void before(HttpClient.Request paramRequest)
  {
    if (logger.isLoggingEnabled(Logger.LogLevel.VERBOSE)) {
      logger.v(paramRequest.toString());
    }
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.core.http.LogInterceptor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */