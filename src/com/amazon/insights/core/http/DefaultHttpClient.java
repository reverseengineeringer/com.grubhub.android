package com.amazon.insights.core.http;

import com.amazon.insights.core.log.Logger;
import com.amazon.insights.core.util.DateUtil;
import com.amazon.insights.core.util.StringUtil;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLEncoder;
import java.text.DateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.zip.GZIPInputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.entity.ByteArrayEntity;

public class DefaultHttpClient
  implements HttpClient
{
  public static final String DATE_HEADER = "Date";
  public static final int IO_EXCEPTION_RESPONSE_CODE = -1000;
  public static final String REQUESTATTEMPTS_HEADER = "x-amzn-RequestAttempts";
  public static final String REQUESTTIME_HEADER = "x-amzn-RequestTime";
  public static final String SERVERINFO_HEADER = "x-amzn-ServerInfo";
  private static final String TAG = "DefaultHttpClient";
  private static final String TIME_FORMAT = "yyyy-MM-dd'T'HH:mm:ssZ";
  private static final Logger logger = Logger.getLogger(HttpClient.class);
  private DateFormat df = DateUtil.createLocaleIndependentDateFormatter("yyyy-MM-dd'T'HH:mm:ssZ");
  private List<HttpClient.Interceptor> interceptors = new LinkedList();
  
  private HttpClient.Response executeHttpRequest(HttpUriRequest paramHttpUriRequest, int paramInt)
  {
    HttpClient.Response localResponse = DefaultHttpClient.DefaultResponse.createResponse();
    Object localObject1 = HttpUtil.getHttpClient();
    long l = System.currentTimeMillis();
    int i;
    if (paramInt >= 0)
    {
      paramInt += 1;
      i = 1;
      label25:
      if (i > paramInt) {
        break label785;
      }
    }
    for (;;)
    {
      HttpEntity localHttpEntity;
      String str2;
      Object localObject8;
      Object localObject9;
      Object localObject10;
      try
      {
        localHttpResponse = ((org.apache.http.client.HttpClient)localObject1).execute(paramHttpUriRequest);
        localResponse.addHeader("x-amzn-RequestTime", Long.toString(System.currentTimeMillis() - l));
        localResponse.addHeader("x-amzn-RequestAttempts", Integer.toString(i));
        if (localHttpResponse == null) {
          break label782;
        }
        localResponse.setCode(localHttpResponse.getStatusLine().getStatusCode()).setMessage(localHttpResponse.getStatusLine().getReasonPhrase()).setRequestSize(calculateRequestSize(paramHttpUriRequest));
        localHttpEntity = localHttpResponse.getEntity();
        str2 = null;
        Object localObject3 = null;
        if (localHttpEntity != null)
        {
          localObject8 = null;
          localObject9 = null;
          localObject10 = null;
          localObject1 = null;
          localObject5 = localObject1;
          localObject7 = localObject8;
          str1 = str2;
          localObject6 = localObject9;
          localObject3 = localObject10;
        }
        try
        {
          Header localHeader = localHttpResponse.getFirstHeader("Content-Encoding");
          if (localHeader != null)
          {
            localObject5 = localObject1;
            localObject7 = localObject8;
            str1 = str2;
            localObject6 = localObject9;
            localObject3 = localObject10;
            if (localHeader.getValue().equalsIgnoreCase("gzip"))
            {
              localObject5 = localObject1;
              localObject7 = localObject8;
              str1 = str2;
              localObject6 = localObject9;
              localObject3 = localObject10;
              localObject1 = new GZIPInputStream(localHttpEntity.getContent());
              localObject5 = localObject1;
              localObject7 = localObject1;
              str1 = str2;
              localObject6 = localObject1;
              localObject3 = localObject1;
              str2 = StringUtil.convertStreamToUTF8String((InputStream)localObject1);
              localObject5 = localObject1;
              localObject7 = localObject1;
              str1 = str2;
              localObject6 = localObject1;
              localObject3 = localObject1;
              localResponse.setResponseSize(calculateResponseSize(localHttpResponse) + str2.length());
              localObject3 = str2;
            }
          }
        }
        catch (IllegalStateException localIllegalStateException)
        {
          InputStream localInputStream;
          paramHttpUriRequest = null;
          localObject4 = localObject5;
          localResponse.setCode(500).setMessage(String.format("Issue recieving response from service, %s", new Object[] { localIllegalStateException.toString() }));
          localObject4 = paramHttpUriRequest;
          if (localObject5 == null) {
            continue;
          }
          try
          {
            ((InputStream)localObject5).close();
            localObject4 = paramHttpUriRequest;
          }
          catch (IOException localIOException1)
          {
            localObject4 = paramHttpUriRequest;
          }
          continue;
        }
        catch (IOException paramHttpUriRequest)
        {
          localObject4 = localObject7;
          localResponse.setCode(500).setMessage(String.format("Issue with response from service, %s", new Object[] { paramHttpUriRequest.toString() }));
          localObject4 = str1;
          if (localObject7 == null) {
            continue;
          }
          try
          {
            ((InputStream)localObject7).close();
            localObject4 = str1;
          }
          catch (IOException paramHttpUriRequest)
          {
            localObject4 = str1;
          }
          continue;
        }
        catch (Exception localException)
        {
          Object localObject2 = null;
          localObject4 = localObject6;
          paramHttpUriRequest.abort();
          localObject4 = localObject6;
          localResponse.setCode(500).setMessage(String.format("Issue with response from service, %s", new Object[] { localException.toString() }));
          localObject4 = localObject2;
          if (localObject6 == null) {
            continue;
          }
          try
          {
            ((InputStream)localObject6).close();
            localObject4 = localObject2;
          }
          catch (IOException paramHttpUriRequest)
          {
            localObject4 = localObject2;
          }
          continue;
        }
        finally
        {
          if (localObject4 == null) {}
        }
        try
        {
          ((InputStream)localObject1).close();
          localObject3 = str2;
        }
        catch (IOException paramHttpUriRequest)
        {
          try
          {
            ((InputStream)localObject4).close();
            throw paramHttpUriRequest;
            paramHttpUriRequest = paramHttpUriRequest;
            localObject4 = str2;
          }
          catch (IOException localIOException2)
          {
            for (;;) {}
          }
        }
        if (localObject3 == null) {
          break label782;
        }
        localResponse.setResponse((String)localObject3);
        paramHttpUriRequest = localHttpResponse.getAllHeaders();
        if ((paramHttpUriRequest == null) || (paramHttpUriRequest.length <= 0)) {
          break label782;
        }
        paramInt = 0;
        if (paramInt >= paramHttpUriRequest.length) {
          break label782;
        }
        localResponse.addHeader(paramHttpUriRequest[paramInt].getName(), paramHttpUriRequest[paramInt].getValue());
        paramInt += 1;
        continue;
        paramInt = 1;
      }
      catch (ClientProtocolException localClientProtocolException)
      {
        localResponse.setCode(400).setMessage(String.format("Issue making request to service, %s", new Object[] { localClientProtocolException.toString() }));
        localHttpResponse = null;
        continue;
      }
      catch (IOException localIOException3)
      {
        i += 1;
        localResponse.setCode(64536).setMessage(String.format("Unable to communicate with service, %s", new Object[] { localIOException3.toString() }));
      }
      break label25;
      Object localObject5 = localClientProtocolException;
      Object localObject7 = localObject8;
      String str1 = str2;
      Object localObject6 = localObject9;
      Object localObject4 = localObject10;
      localInputStream = localHttpEntity.getContent();
      continue;
      label782:
      return localResponse;
      label785:
      HttpResponse localHttpResponse = null;
    }
  }
  
  private String getCurrentDateTime()
  {
    return df.format(new Date());
  }
  
  public void addInterceptor(HttpClient.Interceptor paramInterceptor)
  {
    if (paramInterceptor != null) {
      interceptors.add(paramInterceptor);
    }
  }
  
  HttpUriRequest buildHttpRequest(HttpClient.Request paramRequest)
  {
    Object localObject1;
    switch (1.$SwitchMap$com$amazon$insights$core$http$HttpClient$HttpMethod[paramRequest.getMethod().ordinal()])
    {
    default: 
      localObject1 = null;
    }
    while (localObject1 != null)
    {
      paramRequest = paramRequest.getHeaders().entrySet().iterator();
      Object localObject2;
      while (paramRequest.hasNext())
      {
        localObject2 = (Map.Entry)paramRequest.next();
        ((HttpUriRequest)localObject1).addHeader((String)((Map.Entry)localObject2).getKey(), (String)((Map.Entry)localObject2).getValue());
      }
      localObject1 = new StringBuffer();
      if (!paramRequest.getParams().isEmpty())
      {
        ((StringBuffer)localObject1).append("?");
        localObject2 = paramRequest.getParams().entrySet().iterator();
        while (((Iterator)localObject2).hasNext())
        {
          Object localObject3 = (Map.Entry)((Iterator)localObject2).next();
          localObject3 = (String)((Map.Entry)localObject3).getKey() + "=" + URLEncoder.encode((String)((Map.Entry)localObject3).getValue());
          if (((StringBuffer)localObject1).length() > 1)
          {
            ((StringBuffer)localObject1).append("&");
            ((StringBuffer)localObject1).append((String)localObject3);
          }
          else
          {
            ((StringBuffer)localObject1).append((String)localObject3);
          }
        }
      }
      localObject1 = new HttpGet(paramRequest.getUrl() + ((StringBuffer)localObject1).toString());
      continue;
      localObject1 = new HttpPost(paramRequest.getUrl());
      if ((paramRequest.getPostBodyBytes() != null) && (paramRequest.getPostBodyBytes().length > 0))
      {
        localObject2 = new ByteArrayEntity(paramRequest.getPostBodyBytes());
        ((HttpPost)localObject1).setEntity((HttpEntity)localObject2);
      }
    }
    return (HttpUriRequest)localObject1;
  }
  
  long calculateRequestSize(HttpUriRequest paramHttpUriRequest)
  {
    if (paramHttpUriRequest != null) {}
    for (;;)
    {
      try
      {
        long l1 = paramHttpUriRequest.getRequestLine().toString().length();
        Header[] arrayOfHeader = paramHttpUriRequest.getAllHeaders();
        int j = arrayOfHeader.length;
        l1 = 0L + l1;
        int i = 0;
        if (i < j)
        {
          Header localHeader = arrayOfHeader[i];
          l2 = localHeader.getName().length();
          long l3 = localHeader.getValue().length();
          i += 1;
          l1 = 2L + (l1 + l2 + l3);
          continue;
        }
        l2 = l1;
        if (paramHttpUriRequest.getMethod().equalsIgnoreCase("post"))
        {
          l2 = ((HttpPost)paramHttpUriRequest).getEntity().getContentLength();
          l2 = l1 + l2;
        }
        return l2;
      }
      catch (Exception paramHttpUriRequest)
      {
        return 0L;
      }
      long l2 = 0L;
    }
  }
  
  long calculateResponseSize(HttpResponse paramHttpResponse)
  {
    if (paramHttpResponse != null) {}
    try
    {
      long l1 = paramHttpResponse.getStatusLine().toString().length();
      paramHttpResponse = paramHttpResponse.getAllHeaders();
      int j = paramHttpResponse.length;
      l1 = 0L + l1;
      int i = 0;
      for (;;)
      {
        l2 = l1;
        if (i >= j) {
          break;
        }
        Object localObject = paramHttpResponse[i];
        l2 = ((Header)localObject).getName().length();
        int k = ((Header)localObject).getValue().length();
        long l3 = k;
        i += 1;
        l1 = 2L + (l1 + l2 + l3);
      }
      long l2 = 0L;
      return l2;
    }
    catch (Exception paramHttpResponse) {}
    return 0L;
  }
  
  public HttpClient.Response execute(HttpClient.Request paramRequest, Integer paramInteger)
  {
    Integer localInteger = paramInteger;
    if (paramInteger == null) {
      localInteger = Integer.valueOf(1);
    }
    paramRequest.addHeader("Date", getCurrentDateTime());
    paramInteger = interceptors.iterator();
    while (paramInteger.hasNext()) {
      ((HttpClient.Interceptor)paramInteger.next()).before(paramRequest);
    }
    paramInteger = executeHttpRequest(buildHttpRequest(paramRequest), localInteger.intValue());
    if (paramInteger != null) {
      paramInteger.setOriginatingRequest(paramRequest);
    }
    paramRequest = interceptors.iterator();
    while (paramRequest.hasNext()) {
      ((HttpClient.Interceptor)paramRequest.next()).after(paramInteger);
    }
    return paramInteger;
  }
  
  public HttpClient.Request newRequest()
  {
    return new DefaultHttpClient.DefaultRequest();
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.core.http.DefaultHttpClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */