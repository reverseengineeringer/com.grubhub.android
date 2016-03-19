package com.grubhub.AppBaseLibrary.android.dataServices.net;

import com.android.volley.NetworkResponse;
import com.android.volley.Request;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.HttpHeaderParser;
import com.google.gson.Gson;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.b.c;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2ErrorMessageParser;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIErrorMessage;
import com.grubhub.AppBaseLibrary.android.utils.e.a;
import com.grubhub.AppBaseLibrary.android.utils.f;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;

public class k<T>
  implements b<T>
{
  public Response<T> a(NetworkResponse paramNetworkResponse, String paramString, Class<? extends T> paramClass, Type paramType, e<T> parame, d paramd)
  {
    if ((paramString != null) && ((paramString.startsWith("{")) || (paramString.startsWith("["))))
    {
      if (paramClass != null) {}
      for (;;)
      {
        try
        {
          paramString = new Gson().fromJson(paramString, paramClass);
          return Response.success(paramString, HttpHeaderParser.parseCacheHeaders(paramNetworkResponse));
        }
        catch (Exception paramNetworkResponse)
        {
          a.b(i.e(), paramNetworkResponse.getMessage());
          return Response.error(new VolleyError(GHSApplication.a().getString(2131231592)));
        }
        paramString = new Gson().fromJson(paramString, paramType);
      }
    }
    return Response.success(null, null);
  }
  
  public void a(VolleyError paramVolleyError, Request<T> paramRequest, d paramd)
  {
    paramRequest = new com.grubhub.AppBaseLibrary.android.b.b(paramVolleyError);
    if ((a != null) && (a.data != null))
    {
      for (;;)
      {
        try
        {
          Object localObject = HttpHeaderParser.parseCharset(networkResponse.headers);
          if (localObject != null)
          {
            paramVolleyError = new String(networkResponse.data, (String)localObject);
            if ((!f.b(paramVolleyError)) || (paramVolleyError.startsWith("<"))) {
              break;
            }
            paramVolleyError = new V2ErrorMessageParser().parseJSONMessages(paramVolleyError);
            if ((paramVolleyError == null) || (paramVolleyError.isEmpty())) {
              break;
            }
            paramVolleyError = paramVolleyError.iterator();
            if (!paramVolleyError.hasNext()) {
              break;
            }
            localObject = (GHSIErrorMessage)paramVolleyError.next();
            if (localObject == null) {
              continue;
            }
            paramRequest.a(new c(((GHSIErrorMessage)localObject).getField(), ((GHSIErrorMessage)localObject).getMessage()));
            continue;
          }
          paramVolleyError = new String(networkResponse.data);
        }
        catch (Exception paramVolleyError)
        {
          a.b(i.e(), paramVolleyError.getMessage());
          paramd.a(paramRequest);
          return;
        }
      }
      paramd.a(paramRequest);
      return;
    }
    paramd.a(paramRequest);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */