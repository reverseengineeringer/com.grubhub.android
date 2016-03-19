package com.amazon.insights.session.client;

import com.amazon.insights.Event;
import com.amazon.insights.core.log.Logger;
import com.amazon.insights.event.InternalEventClient;

public class InactiveSessionState
  extends SessionClientState
{
  public InactiveSessionState(DefaultSessionClient paramDefaultSessionClient)
  {
    super(paramDefaultSessionClient);
  }
  
  public void pause()
  {
    Event localEvent = client.eventClient.createEvent("_session.pause");
    client.eventClient.recordEvent(localEvent);
    DefaultSessionClient.logger.devi("Session Pause Failed: No session is running.");
  }
  
  public void resume()
  {
    Event localEvent = client.eventClient.createEvent("_session.resume");
    client.eventClient.recordEvent(localEvent);
    DefaultSessionClient.logger.devi("Session Resume Failed: No session is paused.");
  }
  
  public void start()
  {
    super.executeStart();
  }
  
  public void stop()
  {
    DefaultSessionClient.logger.devi("Session Stop Failed: No session is running.");
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.session.client.InactiveSessionState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */