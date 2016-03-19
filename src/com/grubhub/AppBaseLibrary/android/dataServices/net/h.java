package com.grubhub.AppBaseLibrary.android.dataServices.net;

import com.android.volley.NetworkResponse;
import com.android.volley.Request;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.HttpHeaderParser;
import com.google.gson.Gson;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1ErrorMessageParser;
import com.grubhub.AppBaseLibrary.android.utils.e.a;
import java.lang.reflect.Type;
import java.util.ArrayList;

public class h<T>
  implements b<T>
{
  private static String a = h.class.getSimpleName();
  
  public Response<T> a(NetworkResponse paramNetworkResponse, String paramString, Class<? extends T> paramClass, Type paramType, e<T> parame, d paramd)
  {
    if ((paramString != null) && (paramString.startsWith("{")))
    {
      parame = new V1ErrorMessageParser().parseJSONMessages(paramString);
      if ((parame != null) && (!parame.isEmpty())) {
        return Response.error(new VolleyError(paramNetworkResponse));
      }
    }
    else if ((paramString != null) && (paramString.startsWith("<")))
    {
      paramClass = new V1ErrorMessageParser();
      try
      {
        paramClass = paramClass.parseXMLErrors(paramString, null);
        if ((paramClass != null) && (!paramClass.isEmpty())) {
          return Response.error(new VolleyError(paramNetworkResponse));
        }
      }
      catch (Exception paramString)
      {
        return Response.error(new VolleyError(paramNetworkResponse));
      }
      return Response.success(paramString, null);
    }
    if (paramClass != null) {}
    for (;;)
    {
      try
      {
        paramString = new Gson().fromJson(paramString, paramClass);
        return Response.success(paramString, HttpHeaderParser.parseCacheHeaders(paramNetworkResponse));
      }
      catch (Exception paramString)
      {
        a.a(a, "Parse network response error.", paramString);
      }
      paramString = new Gson().fromJson(paramString, paramType);
    }
    return Response.error(new VolleyError(paramNetworkResponse));
  }
  
  public void a(VolleyError paramVolleyError, Request<T> paramRequest, d paramd)
  {
    paramRequest = new com.grubhub.AppBaseLibrary.android.b.b(paramVolleyError);
    if ((a != null) && (a.data != null)) {
      for (;;)
      {
        try
        {
          String str = HttpHeaderParser.parseCharset(networkResponse.headers);
          if (str != null)
          {
            paramVolleyError = new String(networkResponse.data, str);
            if ((paramVolleyError != null) && (paramVolleyError.startsWith("{")))
            {
              g.a(paramRequest, new V1ErrorMessageParser().parseJSONMessages(paramVolleyError));
              paramd.a(paramRequest);
            }
          }
          else
          {
            paramVolleyError = new String(networkResponse.data);
            continue;
          }
          if (paramVolleyError == null) {
            continue;
          }
        }
        catch (Exception paramVolleyError)
        {
          a.b(a, paramVolleyError.getMessage());
          paramd.a(paramRequest);
          return;
        }
        if (paramVolleyError.startsWith("<")) {
          g.a(paramRequest, new V1ErrorMessageParser().parseXMLErrors(paramVolleyError, null));
        }
      }
    }
    paramd.a(paramRequest);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */