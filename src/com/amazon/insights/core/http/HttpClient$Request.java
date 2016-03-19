package com.amazon.insights.core.http;

import java.util.Map;

public abstract interface HttpClient$Request
{
  public abstract Request addHeader(String paramString1, String paramString2);
  
  public abstract Request addParam(String paramString1, String paramString2);
  
  public abstract Map<String, String> getHeaders();
  
  public abstract HttpClient.HttpMethod getMethod();
  
  public abstract Map<String, String> getParams();
  
  public abstract String getPostBody();
  
  public abstract byte[] getPostBodyBytes();
  
  public abstract String getUrl();
  
  public abstract Request removeHeader(String paramString);
  
  public abstract Request setMethod(HttpClient.HttpMethod paramHttpMethod);
  
  public abstract Request setPostBody(String paramString);
  
  public abstract Request setPostBody(byte[] paramArrayOfByte);
  
  public abstract Request setUrl(String paramString);
  
  public abstract String toString();
}

/* Location:
 * Qualified Name:     com.amazon.insights.core.http.HttpClient.Request
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */