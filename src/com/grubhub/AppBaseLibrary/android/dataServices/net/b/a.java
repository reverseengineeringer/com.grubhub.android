package com.grubhub.AppBaseLibrary.android.dataServices.net.b;

import android.text.TextUtils;
import com.android.volley.AuthFailureError;
import com.android.volley.NetworkResponse;
import com.android.volley.Request;
import com.android.volley.Response.ErrorListener;
import com.android.volley.VolleyError;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSILoggableRequest;
import com.grubhub.AppBaseLibrary.android.utils.f;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

public abstract class a<T>
  extends Request<T>
  implements GHSILoggableRequest
{
  private static final String a = a.class.getSimpleName();
  private boolean b = true;
  private String c = UUID.randomUUID().toString();
  
  protected a(int paramInt, String paramString, Response.ErrorListener paramErrorListener)
  {
    super(paramInt, paramString, paramErrorListener);
    com.grubhub.AppBaseLibrary.android.utils.e.a.a("METHOD/URL", a(paramInt) + "/" + paramString);
  }
  
  private String a(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return "";
    case -1: 
      return "DEPRECATED_GET_OR_POST";
    case 3: 
      return "DELETE";
    case 0: 
      return "GET";
    case 4: 
      return "HEAD";
    case 5: 
      return "OPTIONS";
    case 7: 
      return "PATCH";
    case 1: 
      return "POST";
    case 2: 
      return "PUT";
    }
    return "TRACE";
  }
  
  private void a(Map<String, String> paramMap)
  {
    if (paramMap != null) {
      com.grubhub.AppBaseLibrary.android.utils.e.a.a.a("API_RESPONSE_ERROR", paramMap);
    }
  }
  
  private void b(Map<String, String> paramMap)
  {
    try
    {
      Map localMap = getHeaders();
      if ((paramMap != null) && (localMap != null))
      {
        Iterator localIterator = localMap.keySet().iterator();
        while (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          paramMap.put("Header_" + str, localMap.get(str));
        }
      }
    }
    catch (AuthFailureError localAuthFailureError)
    {
      for (;;)
      {
        com.grubhub.AppBaseLibrary.android.utils.e.a.b(a, localAuthFailureError.getMessage());
        Object localObject = null;
      }
    }
  }
  
  private void c(Map<String, String> paramMap)
  {
    String[] arrayOfString1 = getUrl().split("\\?");
    paramMap.put("BaseUrl", arrayOfString1[0]);
    if ((b) && (arrayOfString1.length == 2))
    {
      arrayOfString1 = arrayOfString1[1].split("&");
      int j = arrayOfString1.length;
      int i = 0;
      while (i < j)
      {
        String[] arrayOfString2 = arrayOfString1[i].split("=");
        if (arrayOfString2.length == 2) {
          paramMap.put(arrayOfString2[0], arrayOfString2[1]);
        }
        i += 1;
      }
    }
  }
  
  protected String a()
  {
    return c;
  }
  
  protected void a(Exception paramException)
  {
    if (paramException != null) {
      com.grubhub.AppBaseLibrary.android.utils.e.a.a.a(a(), String.format("%s: %s", new Object[] { "PARSE_ERROR", paramException.getMessage() }), paramException);
    }
  }
  
  public void deliverError(VolleyError paramVolleyError)
  {
    HashMap localHashMap = new HashMap();
    c(localHashMap);
    if (paramVolleyError != null)
    {
      String str2 = paramVolleyError.getMessage();
      str1 = str2;
      if (f.a(str2)) {
        if (networkResponse == null) {
          break label142;
        }
      }
    }
    label142:
    for (String str1 = String.format("%s %s: %s", new Object[] { "Error message unknown.", "HTTP Status Code", Integer.valueOf(networkResponse.statusCode) });; str1 = "Error message unknown.")
    {
      localHashMap.put("ErrorMessage", str1);
      if (networkResponse != null) {
        localHashMap.put("HttpStatusCode", Integer.toString(networkResponse.statusCode));
      }
      if (!TextUtils.isEmpty(a())) {
        localHashMap.put("RequestLogId", a());
      }
      a(localHashMap);
      return;
    }
  }
  
  public void logRequest()
  {
    HashMap localHashMap = new HashMap();
    b(localHashMap);
    c(localHashMap);
    localHashMap.put("ContentType", getBodyContentType());
    localHashMap.put("HttpVerb", a(getMethod()));
    com.grubhub.AppBaseLibrary.android.utils.e.a.a.a("API_REQUEST", localHashMap, a());
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */