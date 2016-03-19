package com.amazon.insights.core.http;

import java.util.Map;

public abstract interface HttpClient$Response
{
  public abstract Response addHeader(String paramString1, String paramString2);
  
  public abstract int getCode();
  
  public abstract String getHeader(String paramString);
  
  public abstract Map<String, String> getHeaders();
  
  public abstract String getMessage();
  
  public abstract HttpClient.Request getOriginatingRequest();
  
  public abstract long getRequestSize();
  
  public abstract String getResponse();
  
  public abstract long getResponseSize();
  
  public abstract Response setCode(int paramInt);
  
  public abstract Response setMessage(String paramString);
  
  public abstract Response setOriginatingRequest(HttpClient.Request paramRequest);
  
  public abstract Response setRequestSize(long paramLong);
  
  public abstract Response setResponse(String paramString);
  
  public abstract Response setResponseSize(long paramLong);
  
  public abstract String toString();
}

/* Location:
 * Qualified Name:     com.amazon.insights.core.http.HttpClient.Response
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */