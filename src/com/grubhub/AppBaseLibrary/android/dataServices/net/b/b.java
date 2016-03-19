package com.grubhub.AppBaseLibrary.android.dataServices.net.b;

import com.android.volley.DefaultRetryPolicy;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;

public class b<T>
  extends f<T>
{
  public b(String paramString, com.grubhub.AppBaseLibrary.android.dataServices.net.b<T> paramb, Class<? extends T> paramClass, int paramInt, e<T> parame, d paramd)
  {
    super(3, paramString, paramb, paramClass, parame, paramd);
    setShouldCache(true);
    setRetryPolicy(new DefaultRetryPolicy(paramInt, 0, 1.0F));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */