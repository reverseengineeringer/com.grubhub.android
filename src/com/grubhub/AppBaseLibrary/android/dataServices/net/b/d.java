package com.grubhub.AppBaseLibrary.android.dataServices.net.b;

import com.android.volley.AuthFailureError;
import com.android.volley.DefaultRetryPolicy;
import com.android.volley.Response.ErrorListener;
import com.android.volley.Response.Listener;
import com.google.gson.Gson;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import com.grubhub.AppBaseLibrary.android.utils.e.a;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Type;
import java.util.Map;

public class d<T>
  extends f<T>
{
  private static final String a = d.class.getSimpleName();
  private Map<String, ?> b;
  
  public d(String paramString, Map<String, ?> paramMap, b<T> paramb, Class<? extends T> paramClass, int paramInt, e<T> parame, com.grubhub.AppBaseLibrary.android.dataServices.net.d paramd)
  {
    super(1, paramString, paramb, paramClass, parame, paramd);
    b = paramMap;
    setShouldCache(true);
    setRetryPolicy(new DefaultRetryPolicy(paramInt, 0, 1.0F));
  }
  
  public d(String paramString, Map<String, ?> paramMap, b<T> paramb, Type paramType, int paramInt, e<T> parame, com.grubhub.AppBaseLibrary.android.dataServices.net.d paramd)
  {
    super(1, paramString, paramb, paramType, parame, paramd);
    b = paramMap;
    setShouldCache(true);
    setRetryPolicy(new DefaultRetryPolicy(paramInt, 0, 1.0F));
  }
  
  public d(String paramString, Map<String, ?> paramMap, b<T> paramb, Type paramType, Response.Listener<T> paramListener, Response.ErrorListener paramErrorListener)
  {
    super(1, paramString, paramb, paramType, paramListener, paramErrorListener);
    b = paramMap;
    setShouldCache(true);
  }
  
  public byte[] getBody()
    throws AuthFailureError
  {
    byte[] arrayOfByte = null;
    if (b != null) {}
    try
    {
      arrayOfByte = new Gson().toJson(b).getBytes("UTF-8");
      return arrayOfByte;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      a.b(a, localUnsupportedEncodingException.getMessage());
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */