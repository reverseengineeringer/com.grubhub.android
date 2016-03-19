package com.grubhub.AppBaseLibrary.android.dataServices.net.b;

import com.android.volley.AuthFailureError;
import com.android.volley.DefaultRetryPolicy;
import com.google.gson.Gson;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;
import com.grubhub.AppBaseLibrary.android.utils.e.a;
import java.io.UnsupportedEncodingException;
import java.util.Map;

public class e<T>
  extends f<T>
{
  private static final String a = e.class.getSimpleName();
  private Map<String, ?> b;
  
  public e(String paramString, Map<String, ?> paramMap, b<T> paramb, Class<? extends T> paramClass, int paramInt, com.grubhub.AppBaseLibrary.android.dataServices.net.e<T> parame, d paramd)
  {
    super(2, paramString, paramb, paramClass, parame, paramd);
    b = paramMap;
    setShouldCache(true);
    setRetryPolicy(new DefaultRetryPolicy(paramInt, 0, 1.0F));
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
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */