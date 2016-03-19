package com.facebook;

public class p
  extends h
{
  private static final long serialVersionUID = 1L;
  private final j a;
  
  public p(j paramj, String paramString)
  {
    super(paramString);
    a = paramj;
  }
  
  public final j a()
  {
    return a;
  }
  
  public final String toString()
  {
    return "{FacebookServiceException: " + "httpResponseCode: " + a.a() + ", facebookErrorCode: " + a.b() + ", facebookErrorType: " + a.c() + ", message: " + a.d() + "}";
  }
}

/* Location:
 * Qualified Name:     com.facebook.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */