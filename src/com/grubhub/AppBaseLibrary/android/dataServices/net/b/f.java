package com.grubhub.AppBaseLibrary.android.dataServices.net.b;

import com.android.volley.AuthFailureError;
import com.android.volley.Cache.Entry;
import com.android.volley.NetworkResponse;
import com.android.volley.ParseError;
import com.android.volley.Response;
import com.android.volley.Response.ErrorListener;
import com.android.volley.Response.Listener;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.HttpHeaderParser;
import com.google.gson.Gson;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Map;
import java.util.zip.GZIPInputStream;

public class f<T>
  extends a<T>
{
  private static final String a = f.class.getSimpleName();
  private String b;
  private String c;
  private String d;
  private final Type e;
  private final e<T> f;
  private final d g;
  private final Class<? extends T> h;
  private final com.grubhub.AppBaseLibrary.android.dataServices.net.b<T> i;
  
  public f(int paramInt, String paramString, com.grubhub.AppBaseLibrary.android.dataServices.net.b<T> paramb, Class<? extends T> paramClass, e<T> parame, d paramd)
  {
    super(paramInt, paramString, new Response.ErrorListener()
    {
      public void onErrorResponse(VolleyError paramAnonymousVolleyError)
      {
        if (f.this != null) {
          a(new com.grubhub.AppBaseLibrary.android.b.b(paramAnonymousVolleyError));
        }
      }
    });
    i = paramb;
    h = paramClass;
    e = null;
    f = parame;
    g = paramd;
  }
  
  public f(int paramInt, String paramString, com.grubhub.AppBaseLibrary.android.dataServices.net.b<T> paramb, Type paramType, final Response.Listener<T> paramListener, final Response.ErrorListener paramErrorListener)
  {
    super(paramInt, paramString, new Response.ErrorListener()
    {
      public void onErrorResponse(VolleyError paramAnonymousVolleyError)
      {
        f.this.onErrorResponse(paramAnonymousVolleyError);
      }
    });
    i = paramb;
    h = null;
    e = paramType;
    f = new e()
    {
      public void onResponse(T paramAnonymousT)
      {
        if (paramListener != null) {
          paramListener.onResponse(paramAnonymousT);
        }
      }
    };
    g = new d()
    {
      public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
      {
        if (paramErrorListener != null) {
          paramErrorListener.onErrorResponse(new VolleyError(a));
        }
      }
    };
  }
  
  public f(int paramInt, String paramString, com.grubhub.AppBaseLibrary.android.dataServices.net.b<T> paramb, Type paramType, e<T> parame, d paramd)
  {
    super(paramInt, paramString, new Response.ErrorListener()
    {
      public void onErrorResponse(VolleyError paramAnonymousVolleyError)
      {
        if (f.this != null) {
          a(new com.grubhub.AppBaseLibrary.android.b.b(paramAnonymousVolleyError));
        }
      }
    });
    i = paramb;
    h = null;
    e = paramType;
    f = parame;
    g = paramd;
  }
  
  public void a(String paramString)
  {
    b = paramString;
  }
  
  public String b()
  {
    if (com.grubhub.AppBaseLibrary.android.utils.f.a(d)) {
      d = com.grubhub.AppBaseLibrary.android.utils.b.a();
    }
    return d;
  }
  
  public void b(String paramString)
  {
    c = paramString;
  }
  
  public void deliverError(VolleyError paramVolleyError)
  {
    if ((g != null) && (i != null)) {
      i.a(paramVolleyError, this, g);
    }
    for (;;)
    {
      super.deliverError(paramVolleyError);
      return;
      if (g != null)
      {
        com.grubhub.AppBaseLibrary.android.b.b localb = new com.grubhub.AppBaseLibrary.android.b.b(paramVolleyError);
        g.a(localb);
      }
    }
  }
  
  protected void deliverResponse(T paramT)
  {
    if (f != null) {
      f.onResponse(paramT);
    }
  }
  
  public String getBodyContentType()
  {
    return "application/json";
  }
  
  public Map<String, String> getHeaders()
    throws AuthFailureError
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("Vary", "Accept-Encoding");
    localHashMap.put("Accept", "*/*");
    localHashMap.put("User-Agent", b());
    localHashMap.put("Content-Type", getBodyContentType());
    localHashMap.put("Accept-Encoding", "gzip");
    if (b != null) {
      localHashMap.put("Authorization", "Bearer " + b);
    }
    if (c != null) {
      localHashMap.put("ETag", c);
    }
    return localHashMap;
  }
  
  protected VolleyError parseNetworkError(VolleyError paramVolleyError)
  {
    return paramVolleyError;
  }
  
  protected Response<T> parseNetworkResponse(NetworkResponse paramNetworkResponse)
  {
    Object localObject1;
    Cache.Entry localEntry;
    for (;;)
    {
      Object localObject2;
      try
      {
        localObject2 = headers;
        if ((!((Map)localObject2).containsKey("Content-Encoding")) || (!((String)((Map)localObject2).get("Content-Encoding")).equals("gzip"))) {
          break label226;
        }
        localObject1 = new StringBuilder();
        try
        {
          GZIPInputStream localGZIPInputStream = new GZIPInputStream(new ByteArrayInputStream(data));
          localObject2 = new InputStreamReader(localGZIPInputStream, HttpHeaderParser.parseCharset((Map)localObject2));
          localBufferedReader = new BufferedReader((Reader)localObject2, 16384);
          String str = localBufferedReader.readLine();
          if (str == null) {
            continue;
          }
          ((StringBuilder)localObject1).append(str).append("\n");
          continue;
          localObject1 = ((StringBuilder)localObject1).toString();
        }
        catch (IOException localIOException)
        {
          com.grubhub.AppBaseLibrary.android.utils.e.a.b(a, localIOException.getMessage());
        }
        localEntry = HttpHeaderParser.parseCacheHeaders(paramNetworkResponse);
        if (i == null) {
          break;
        }
        paramNetworkResponse = i.a(paramNetworkResponse, (String)localObject1, h, e, f, g);
        return paramNetworkResponse;
      }
      catch (Exception paramNetworkResponse)
      {
        BufferedReader localBufferedReader;
        com.grubhub.AppBaseLibrary.android.utils.e.a.b(a, paramNetworkResponse.getMessage());
        a(paramNetworkResponse);
        return Response.error(new ParseError(paramNetworkResponse));
      }
      ((InputStreamReader)localObject2).close();
      localBufferedReader.close();
      localEntry.close();
      continue;
      label226:
      localObject1 = new String(data, HttpHeaderParser.parseCharset((Map)localObject2));
    }
    if (h != null) {
      return Response.success(new Gson().fromJson((String)localObject1, h), localEntry);
    }
    paramNetworkResponse = Response.success(new Gson().fromJson((String)localObject1, e), localEntry);
    return paramNetworkResponse;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */