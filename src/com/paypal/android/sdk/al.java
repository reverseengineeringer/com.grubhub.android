package com.paypal.android.sdk;

public abstract class al
{
  private String a;
  private String b;
  
  private al(String paramString) {}
  
  protected al(String paramString1, String paramString2)
  {
    this(paramString1);
    a = paramString2;
    b = null;
  }
  
  protected al(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    this(paramString1);
    a = paramString2;
    b = paramString3;
  }
  
  public final String a()
  {
    return b;
  }
  
  public final String b()
  {
    return a;
  }
  
  public String toString()
  {
    return "ErrorBase[errorCode=" + a + " errorMsgShort=" + b + "]";
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.al
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */