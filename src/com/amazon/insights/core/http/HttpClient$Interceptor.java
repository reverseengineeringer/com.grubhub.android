package com.amazon.insights.core.http;

public abstract interface HttpClient$Interceptor
{
  public abstract void after(HttpClient.Response paramResponse);
  
  public abstract void before(HttpClient.Request paramRequest);
}

/* Location:
 * Qualified Name:     com.amazon.insights.core.http.HttpClient.Interceptor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */