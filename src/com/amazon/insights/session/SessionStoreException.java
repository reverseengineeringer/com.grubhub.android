package com.amazon.insights.session;

public class SessionStoreException
  extends RuntimeException
{
  private static final long serialVersionUID = 1L;
  
  public SessionStoreException(String paramString)
  {
    super(paramString);
  }
  
  public SessionStoreException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
  
  public SessionStoreException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.session.SessionStoreException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */