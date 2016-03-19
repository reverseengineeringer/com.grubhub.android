package com.amazon.insights.core.http;

import org.apache.http.HttpVersion;
import org.apache.http.client.HttpClient;
import org.apache.http.conn.params.ConnPerRouteBean;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;

public class HttpUtil
{
  private static final String STALE_CHECK_PARAM_NAME = "http.connection.stalecheck";
  private static volatile HttpClient client;
  
  private static HttpClient createHttpClient()
  {
    HttpParams localHttpParams = new DefaultHttpClient().getParams();
    HttpConnectionParams.setConnectionTimeout(localHttpParams, 5000);
    HttpConnectionParams.setSoTimeout(localHttpParams, 10000);
    localHttpParams.setParameter("http.conn-manager.max-total", Integer.valueOf(30));
    localHttpParams.setParameter("http.conn-manager.max-per-route", new ConnPerRouteBean(30));
    localHttpParams.setParameter("http.protocol.expect-continue", Boolean.valueOf(false));
    HttpProtocolParams.setVersion(localHttpParams, HttpVersion.HTTP_1_1);
    localHttpParams.setParameter("http.connection.stalecheck", Boolean.valueOf(true));
    SchemeRegistry localSchemeRegistry = new SchemeRegistry();
    localSchemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
    localSchemeRegistry.register(new Scheme("https", SSLSocketFactory.getSocketFactory(), 443));
    return new DefaultHttpClient(new ThreadSafeClientConnManager(localHttpParams, localSchemeRegistry), localHttpParams);
  }
  
  static HttpClient getHttpClient()
  {
    if (client == null) {}
    try
    {
      if (client == null) {
        client = createHttpClient();
      }
      return client;
    }
    finally {}
  }
  
  public static String getMessageForResponse(HttpClient.Response paramResponse)
  {
    switch (paramResponse.getCode())
    {
    default: 
      if (paramResponse.getCode() < 0) {
        return paramResponse.getMessage();
      }
      break;
    case 403: 
      return "Access denied. Verify your application key and private key are correct.";
    case 500: 
      return "An unexpected server error occurred.";
    case 400: 
      return "Bad server request.";
    case 404: 
      return "Application not found.";
    }
    return "";
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.core.http.HttpUtil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */