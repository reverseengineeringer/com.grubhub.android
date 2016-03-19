package com.android.volley;

public class Response<T>
{
  public final Cache.Entry cacheEntry;
  public final VolleyError error;
  public boolean intermediate = false;
  public final T result;
  
  private Response(VolleyError paramVolleyError)
  {
    result = null;
    cacheEntry = null;
    error = paramVolleyError;
  }
  
  private Response(T paramT, Cache.Entry paramEntry)
  {
    result = paramT;
    cacheEntry = paramEntry;
    error = null;
  }
  
  public static <T> Response<T> error(VolleyError paramVolleyError)
  {
    return new Response(paramVolleyError);
  }
  
  public static <T> Response<T> success(T paramT, Cache.Entry paramEntry)
  {
    return new Response(paramT, paramEntry);
  }
  
  public boolean isSuccess()
  {
    return error == null;
  }
}

/* Location:
 * Qualified Name:     com.android.volley.Response
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */