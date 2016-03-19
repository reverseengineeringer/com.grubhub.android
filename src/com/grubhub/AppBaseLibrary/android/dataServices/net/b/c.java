package com.grubhub.AppBaseLibrary.android.dataServices.net.b;

import com.android.volley.DefaultRetryPolicy;
import com.android.volley.Response.ErrorListener;
import com.android.volley.Response.Listener;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import java.lang.reflect.Type;

public class c<T>
  extends f<T>
{
  public c(String paramString, b<T> paramb, Class<? extends T> paramClass, int paramInt, e<T> parame, d paramd)
  {
    super(0, paramString, paramb, paramClass, parame, paramd);
    setShouldCache(true);
    setRetryPolicy(new DefaultRetryPolicy(paramInt, 0, 1.0F));
  }
  
  public c(String paramString, b<T> paramb, Type paramType, int paramInt, e<T> parame, d paramd)
  {
    super(0, paramString, paramb, paramType, parame, paramd);
    setShouldCache(true);
    setRetryPolicy(new DefaultRetryPolicy(paramInt, 0, 1.0F));
  }
  
  public c(String paramString, b<T> paramb, Type paramType, Response.Listener<T> paramListener, Response.ErrorListener paramErrorListener)
  {
    super(0, paramString, paramb, paramType, paramListener, paramErrorListener);
    setShouldCache(true);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */