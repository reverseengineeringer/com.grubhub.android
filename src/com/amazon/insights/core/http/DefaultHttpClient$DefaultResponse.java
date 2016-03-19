package com.amazon.insights.core.http;

import com.amazon.insights.core.util.StringUtil;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class DefaultHttpClient$DefaultResponse
  implements HttpClient.Response
{
  protected int code;
  protected Map<String, String> headersMap = new HashMap();
  protected String message;
  protected HttpClient.Request originatingRequest;
  protected long requestSize = 0L;
  protected String response;
  protected long responseSize = 0L;
  
  static HttpClient.Response createResponse()
  {
    return new DefaultResponse();
  }
  
  public HttpClient.Response addHeader(String paramString1, String paramString2)
  {
    headersMap.put(paramString1, paramString2);
    return this;
  }
  
  public int getCode()
  {
    return code;
  }
  
  public String getHeader(String paramString)
  {
    if (!StringUtil.isNullOrEmpty(paramString))
    {
      Iterator localIterator = headersMap.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        if (((String)localEntry.getKey()).equalsIgnoreCase(paramString)) {
          return (String)localEntry.getValue();
        }
      }
    }
    return null;
  }
  
  public Map<String, String> getHeaders()
  {
    return headersMap;
  }
  
  public String getMessage()
  {
    return message;
  }
  
  public HttpClient.Request getOriginatingRequest()
  {
    return originatingRequest;
  }
  
  public long getRequestSize()
  {
    return requestSize;
  }
  
  public String getResponse()
  {
    return response;
  }
  
  public long getResponseSize()
  {
    return responseSize;
  }
  
  public HttpClient.Response setCode(int paramInt)
  {
    code = paramInt;
    return this;
  }
  
  public HttpClient.Response setMessage(String paramString)
  {
    message = paramString;
    return this;
  }
  
  public HttpClient.Response setOriginatingRequest(HttpClient.Request paramRequest)
  {
    originatingRequest = paramRequest;
    return this;
  }
  
  public HttpClient.Response setRequestSize(long paramLong)
  {
    requestSize = paramLong;
    return this;
  }
  
  public HttpClient.Response setResponse(String paramString)
  {
    response = paramString;
    return this;
  }
  
  public HttpClient.Response setResponseSize(long paramLong)
  {
    responseSize = paramLong;
    return this;
  }
  
  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("{\n\t\"code\" : \"" + code + "\",\n" + "\t\"message\" : \"" + message + "\",\n" + "\t\"response\" : \"" + response + "\",\n" + "\t\"headers\" : {\n");
    Iterator localIterator = headersMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localStringBuffer.append("\t\t\"" + (String)localEntry.getKey() + "\" : \"" + (String)localEntry.getValue() + "\",\n");
    }
    localStringBuffer.append("\t}\n}\n");
    return localStringBuffer.toString();
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.core.http.DefaultHttpClient.DefaultResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */