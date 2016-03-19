package com.amazon.insights.session.client;

import com.amazon.insights.core.log.Logger;
import com.amazon.insights.session.Session;

public final class ActiveSessionState
  extends SessionClientState
{
  public ActiveSessionState(DefaultSessionClient paramDefaultSessionClient)
  {
    super(paramDefaultSessionClient);
  }
  
  public void pause()
  {
    super.executePause();
  }
  
  public void resume()
  {
    DefaultSessionClient.logger.devi("Session Resume Failed: Session is already running.");
  }
  
  public void start()
  {
    if (System.currentTimeMillis() - client.session.getStartTime() > client.getRestartDelay())
    {
      super.executeStop();
      super.executeStart();
      return;
    }
    DefaultSessionClient.logger.devi("Session Start Failed: Previous session was started too recently");
  }
  
  public void stop()
  {
    super.executeStop();
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.session.client.ActiveSessionState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */