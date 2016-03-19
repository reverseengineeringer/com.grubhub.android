package com.amazon.insights.session;

import com.amazon.insights.SessionClient;

public abstract interface InternalSessionClient
  extends SessionClient
{
  public abstract void startSession();
  
  public abstract void stopSession();
}

/* Location:
 * Qualified Name:     com.amazon.insights.session.InternalSessionClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */