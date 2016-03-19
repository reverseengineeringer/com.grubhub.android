package com.amazon.insights.core.http;

public abstract interface HttpClient
{
  public abstract void addInterceptor(HttpClient.Interceptor paramInterceptor);
  
  public abstract HttpClient.Response execute(HttpClient.Request paramRequest, Integer paramInteger);
  
  public abstract HttpClient.Request newRequest();
}

/* Location:
 * Qualified Name:     com.amazon.insights.core.http.HttpClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */