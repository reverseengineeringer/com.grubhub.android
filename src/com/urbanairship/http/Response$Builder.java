package com.urbanairship.http;

import java.util.List;
import java.util.Map;

public class Response$Builder
{
  private long lastModified = 0L;
  private String responseBody;
  private Map<String, List<String>> responseHeaders;
  private String responseMessage;
  private final int status;
  
  public Response$Builder(int paramInt)
  {
    status = paramInt;
  }
  
  public Response create()
  {
    Response localResponse = new Response(null);
    Response.access$102(localResponse, status);
    Response.access$202(localResponse, responseBody);
    Response.access$302(localResponse, responseHeaders);
    Response.access$402(localResponse, responseMessage);
    Response.access$502(localResponse, lastModified);
    return localResponse;
  }
  
  public Builder setLastModified(long paramLong)
  {
    lastModified = paramLong;
    return this;
  }
  
  public Builder setResponseBody(String paramString)
  {
    responseBody = paramString;
    return this;
  }
  
  public Builder setResponseHeaders(Map<String, List<String>> paramMap)
  {
    responseHeaders = paramMap;
    return this;
  }
  
  public Builder setResponseMessage(String paramString)
  {
    responseMessage = paramString;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.http.Response.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */