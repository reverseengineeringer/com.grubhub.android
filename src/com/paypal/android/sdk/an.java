package com.paypal.android.sdk;

public class an
  extends al
{
  public an(am paramam, Exception paramException)
  {
    this(paramam.toString(), paramException);
  }
  
  public an(String paramString)
  {
    super("RequestError", paramString);
  }
  
  public an(String paramString1, String paramString2, String paramString3)
  {
    super("RequestError", paramString1, paramString2, paramString3);
  }
  
  public an(String paramString, Throwable paramThrowable)
  {
    super(paramThrowable.getClass().toString(), paramString, paramThrowable.toString(), paramThrowable.getMessage());
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.an
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */