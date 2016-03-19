package com.amazon.insights.session.client;

import com.amazon.insights.core.log.Logger;
import com.amazon.insights.session.Session;

public class PausedSessionState
  extends SessionClientState
{
  public PausedSessionState(DefaultSessionClient paramDefaultSessionClient)
  {
    super(paramDefaultSessionClient);
  }
  
  public void pause()
  {
    DefaultSessionClient.logger.devi("Session Pause Failed: Session is already paused.");
  }
  
  public void resume()
  {
    if (System.currentTimeMillis() - client.session.getStopTime().longValue() < client.getResumeDelay())
    {
      super.executeResume();
      return;
    }
    DefaultSessionClient.logger.devi("Session has expired. Starting a fresh one...");
    start();
  }
  
  public void start()
  {
    super.executeStop();
    super.executeStart();
  }
  
  public void stop()
  {
    super.executeStop();
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.session.client.PausedSessionState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */