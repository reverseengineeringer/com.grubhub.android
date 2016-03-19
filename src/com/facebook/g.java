package com.facebook;

public class g
  extends h
{
  static final long serialVersionUID = 1L;
  private int a;
  private String b;
  
  public g(String paramString1, int paramInt, String paramString2)
  {
    super(paramString1);
    a = paramInt;
    b = paramString2;
  }
  
  public int a()
  {
    return a;
  }
  
  public String b()
  {
    return b;
  }
  
  public final String toString()
  {
    return "{FacebookDialogException: " + "errorCode: " + a() + ", message: " + getMessage() + ", url: " + b() + "}";
  }
}

/* Location:
 * Qualified Name:     com.facebook.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */