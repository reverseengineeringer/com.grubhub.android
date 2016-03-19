package com.urbanairship.http;

import java.util.List;
import java.util.Map;

public class Response
{
  private long lastModified;
  private String responseBody;
  private Map<String, List<String>> responseHeaders;
  private String responseMessage;
  private int status;
  
  public long getLastModifiedTime()
  {
    return lastModified;
  }
  
  public String getResponseBody()
  {
    return responseBody;
  }
  
  public Map<String, List<String>> getResponseHeaders()
  {
    return responseHeaders;
  }
  
  public int getStatus()
  {
    return status;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Response: ");
    localStringBuilder.append("ResponseBody: ");
    if (responseBody != null) {
      localStringBuilder.append(responseBody);
    }
    localStringBuilder.append(" ResponseHeaders: ");
    if (responseHeaders != null) {
      localStringBuilder.append(responseHeaders);
    }
    localStringBuilder.append(" ResponseMessage: ");
    if (responseMessage != null) {
      localStringBuilder.append(responseMessage);
    }
    localStringBuilder.append(" Status: ").append(Integer.toString(status));
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.http.Response
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */