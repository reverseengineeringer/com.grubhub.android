package com.paypal.android.sdk;

import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadPoolExecutor;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpVersion;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.params.ConnPerRouteBean;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.HttpContext;
import org.apache.http.protocol.SyncBasicHttpContext;

public final class as
{
  private static int a = 10;
  private static int b = 10000;
  private final DefaultHttpClient c;
  private final HttpContext d;
  private ThreadPoolExecutor e;
  private final Map f;
  private final Map g;
  
  public as()
  {
    BasicHttpParams localBasicHttpParams = new BasicHttpParams();
    ConnManagerParams.setTimeout(localBasicHttpParams, b);
    ConnManagerParams.setMaxConnectionsPerRoute(localBasicHttpParams, new ConnPerRouteBean(a));
    ConnManagerParams.setMaxTotalConnections(localBasicHttpParams, 10);
    HttpConnectionParams.setSoTimeout(localBasicHttpParams, b);
    HttpConnectionParams.setConnectionTimeout(localBasicHttpParams, b);
    HttpConnectionParams.setTcpNoDelay(localBasicHttpParams, true);
    HttpConnectionParams.setSocketBufferSize(localBasicHttpParams, 8192);
    HttpProtocolParams.setVersion(localBasicHttpParams, HttpVersion.HTTP_1_1);
    HttpProtocolParams.setUserAgent(localBasicHttpParams, String.format("android-async-http/%s (http://loopj.com/android-async-http)", new Object[] { "1.4.3" }));
    Object localObject = new SchemeRegistry();
    ((SchemeRegistry)localObject).register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
    ((SchemeRegistry)localObject).register(new Scheme("https", SSLSocketFactory.getSocketFactory(), 443));
    localObject = new ThreadSafeClientConnManager(localBasicHttpParams, (SchemeRegistry)localObject);
    d = new SyncBasicHttpContext(new BasicHttpContext());
    c = new DefaultHttpClient((ClientConnectionManager)localObject, localBasicHttpParams);
    c.addRequestInterceptor(new at(this));
    c.addResponseInterceptor(new au(this));
    c.setHttpRequestRetryHandler(new bb(5));
    e = ((ThreadPoolExecutor)Executors.newCachedThreadPool());
    f = new WeakHashMap();
    g = new HashMap();
  }
  
  private void a(DefaultHttpClient paramDefaultHttpClient, HttpContext paramHttpContext, HttpUriRequest paramHttpUriRequest, String paramString, ax paramax, Context paramContext)
  {
    if (paramString != null) {
      paramHttpUriRequest.addHeader("Content-Type", paramString);
    }
    paramHttpUriRequest = e.submit(new aw(paramDefaultHttpClient, paramHttpContext, paramHttpUriRequest, paramax));
    if (paramContext != null)
    {
      paramHttpContext = (List)f.get(paramContext);
      paramDefaultHttpClient = paramHttpContext;
      if (paramHttpContext == null)
      {
        paramDefaultHttpClient = new LinkedList();
        f.put(paramContext, paramDefaultHttpClient);
      }
      paramDefaultHttpClient.add(new WeakReference(paramHttpUriRequest));
    }
  }
  
  public final HttpClient a()
  {
    return c;
  }
  
  public final void a(int paramInt)
  {
    HttpParams localHttpParams = c.getParams();
    ConnManagerParams.setTimeout(localHttpParams, paramInt);
    HttpConnectionParams.setSoTimeout(localHttpParams, paramInt);
    HttpConnectionParams.setConnectionTimeout(localHttpParams, paramInt);
  }
  
  public final void a(Context paramContext, String paramString, Header[] paramArrayOfHeader, ax paramax)
  {
    paramString = new HttpDelete(paramString);
    if (paramArrayOfHeader != null) {
      paramString.setHeaders(paramArrayOfHeader);
    }
    a(c, d, paramString, null, paramax, paramContext);
  }
  
  public final void a(Context paramContext, String paramString, Header[] paramArrayOfHeader, ba paramba, ax paramax)
  {
    if (0 != 0) {
      throw new NullPointerException();
    }
    paramString = new HttpGet(paramString);
    if (paramArrayOfHeader != null) {
      paramString.setHeaders(paramArrayOfHeader);
    }
    a(c, d, paramString, null, paramax, paramContext);
  }
  
  public final void a(Context paramContext, String paramString1, Header[] paramArrayOfHeader, HttpEntity paramHttpEntity, String paramString2, ax paramax)
  {
    paramString1 = new HttpPost(paramString1);
    if (paramHttpEntity != null) {
      paramString1.setEntity(paramHttpEntity);
    }
    if (paramArrayOfHeader != null) {
      paramString1.setHeaders(paramArrayOfHeader);
    }
    a(c, d, paramString1, null, paramax, paramContext);
  }
  
  public final void a(Context paramContext, boolean paramBoolean)
  {
    Object localObject = (List)f.get(paramContext);
    if (localObject != null)
    {
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        Future localFuture = (Future)((WeakReference)((Iterator)localObject).next()).get();
        if (localFuture != null) {
          localFuture.cancel(true);
        }
      }
    }
    f.remove(paramContext);
  }
  
  public final void a(String paramString)
  {
    HttpProtocolParams.setUserAgent(c.getParams(), paramString);
  }
  
  public final void a(ThreadPoolExecutor paramThreadPoolExecutor)
  {
    e = paramThreadPoolExecutor;
  }
  
  public final void a(SSLSocketFactory paramSSLSocketFactory)
  {
    c.getConnectionManager().getSchemeRegistry().register(new Scheme("https", paramSSLSocketFactory, 443));
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.as
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */