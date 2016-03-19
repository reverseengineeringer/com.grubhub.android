package com.facebook;

public class h
  extends RuntimeException
{
  static final long serialVersionUID = 1L;
  
  public h() {}
  
  public h(String paramString)
  {
    super(paramString);
  }
  
  public h(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
  
  public h(String paramString, Object... paramVarArgs)
  {
    this(String.format(paramString, paramVarArgs));
  }
  
  public h(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
  
  public String toString()
  {
    return getMessage();
  }
}

/* Location:
 * Qualified Name:     com.facebook.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */