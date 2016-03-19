package com.amazon.insights.session;

public abstract interface SessionStore
{
  public abstract Session getSession();
  
  public abstract void storeSession(Session paramSession);
}

/* Location:
 * Qualified Name:     com.amazon.insights.session.SessionStore
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */