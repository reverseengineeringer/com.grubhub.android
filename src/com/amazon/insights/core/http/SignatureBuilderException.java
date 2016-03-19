package com.amazon.insights.core.http;

class SignatureBuilderException
  extends Exception
{
  private static final long serialVersionUID = 1L;
  
  public SignatureBuilderException() {}
  
  public SignatureBuilderException(String paramString)
  {
    super(paramString);
  }
  
  public SignatureBuilderException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
  
  public SignatureBuilderException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.core.http.SignatureBuilderException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */