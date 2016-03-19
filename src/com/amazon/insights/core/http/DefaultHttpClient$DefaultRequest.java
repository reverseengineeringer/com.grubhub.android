package com.amazon.insights.core.http;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class DefaultHttpClient$DefaultRequest
  implements HttpClient.Request
{
  protected Map<String, String> headers = new HashMap();
  protected HttpClient.HttpMethod method = HttpClient.HttpMethod.GET;
  protected Map<String, String> params = new HashMap();
  protected byte[] postBody;
  protected String url;
  
  public HttpClient.Request addHeader(String paramString1, String paramString2)
  {
    headers.put(paramString1, paramString2);
    return this;
  }
  
  public HttpClient.Request addParam(String paramString1, String paramString2)
  {
    params.put(paramString1, paramString2);
    return this;
  }
  
  public Map<String, String> getHeaders()
  {
    return headers;
  }
  
  public HttpClient.HttpMethod getMethod()
  {
    return method;
  }
  
  public Map<String, String> getParams()
  {
    return params;
  }
  
  public String getPostBody()
  {
    try
    {
      if (postBody != null)
      {
        String str = new String(postBody, "UTF-8");
        return str;
      }
      return null;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException) {}
    return null;
  }
  
  public byte[] getPostBodyBytes()
  {
    if (postBody != null) {
      return (byte[])postBody.clone();
    }
    return null;
  }
  
  public String getUrl()
  {
    return url;
  }
  
  public HttpClient.Request removeHeader(String paramString)
  {
    Iterator localIterator = headers.entrySet().iterator();
    while (localIterator.hasNext()) {
      if (((String)((Map.Entry)localIterator.next()).getKey()).equals(paramString)) {
        localIterator.remove();
      }
    }
    return this;
  }
  
  public HttpClient.Request setMethod(HttpClient.HttpMethod paramHttpMethod)
  {
    method = paramHttpMethod;
    return this;
  }
  
  public HttpClient.Request setPostBody(String paramString)
  {
    try
    {
      postBody = paramString.getBytes("UTF-8");
      return this;
    }
    catch (UnsupportedEncodingException paramString)
    {
      postBody = null;
    }
    return this;
  }
  
  public HttpClient.Request setPostBody(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte != null)
    {
      postBody = ((byte[])paramArrayOfByte.clone());
      return this;
    }
    postBody = null;
    return this;
  }
  
  public HttpClient.Request setUrl(String paramString)
  {
    url = paramString;
    return this;
  }
  
  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("{\n\t\"method\" : \"" + method + "\",\n");
    localStringBuffer.append("\t\"url\" : \"" + url + "\",\n");
    localStringBuffer.append("\t\"postBody\" : \"" + getPostBody() + "\",\n");
    localStringBuffer.append("\t\"params\" : {\n");
    Iterator localIterator = params.entrySet().iterator();
    Map.Entry localEntry;
    while (localIterator.hasNext())
    {
      localEntry = (Map.Entry)localIterator.next();
      localStringBuffer.append("\t\t\"" + (String)localEntry.getKey() + "\" : \"" + (String)localEntry.getValue() + "\",\n");
    }
    localStringBuffer.append("\t},\n\t\"headers\" : {\n");
    localIterator = headers.entrySet().iterator();
    while (localIterator.hasNext())
    {
      localEntry = (Map.Entry)localIterator.next();
      localStringBuffer.append("\t\t\"" + (String)localEntry.getKey() + "\" : \"" + (String)localEntry.getValue() + "\",\n");
    }
    localStringBuffer.append("\t}\n}\n");
    return localStringBuffer.toString();
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.core.http.DefaultHttpClient.DefaultRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */