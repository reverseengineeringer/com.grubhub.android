package com.grubhub.AppBaseLibrary.android.dataServices.net;

import com.android.volley.NetworkResponse;
import com.android.volley.Request;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import java.lang.reflect.Type;

public abstract interface b<T>
{
  public abstract Response<T> a(NetworkResponse paramNetworkResponse, String paramString, Class<? extends T> paramClass, Type paramType, e<T> parame, d paramd);
  
  public abstract void a(VolleyError paramVolleyError, Request<T> paramRequest, d paramd);
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */