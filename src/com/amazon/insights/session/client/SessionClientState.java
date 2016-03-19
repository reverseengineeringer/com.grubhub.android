package com.amazon.insights.session.client;

import com.amazon.insights.Event;
import com.amazon.insights.core.log.Logger;
import com.amazon.insights.event.InternalEventClient;
import com.amazon.insights.session.Session;
import com.amazon.insights.session.SessionStore;

public abstract class SessionClientState
{
  protected final DefaultSessionClient client;
  
  public SessionClientState(DefaultSessionClient paramDefaultSessionClient)
  {
    client = paramDefaultSessionClient;
  }
  
  protected void executePause()
  {
    client.session.pause();
    DefaultSessionClient.logger.i("Session Paused: " + client.session.getSessionID());
    DefaultSessionClient.logger.devi("Session Paused.");
    DefaultSessionClient.logger.devv("Firing Session Event: _session.pause");
    Event localEvent = client.eventClient.createEvent("_session.pause");
    localEvent.addMetric("_session.duration", client.session.getSessionDuration());
    client.eventClient.recordEvent(localEvent);
    client.sessionStore.storeSession(client.session);
    client.changeState(DefaultSessionClient.SessionState.PAUSED);
  }
  
  protected void executeResume()
  {
    client.session.resume();
    DefaultSessionClient.logger.devv("Firing Session Event: _session.resume");
    Event localEvent = client.eventClient.createEvent("_session.resume");
    client.eventClient.recordEvent(localEvent);
    DefaultSessionClient.logger.i("Session Resumed: " + client.session.getSessionID());
    DefaultSessionClient.logger.devi("Session Resumed.");
    client.changeState(DefaultSessionClient.SessionState.ACTIVE);
  }
  
  protected void executeStart()
  {
    client.session = Session.newInstance(client.context);
    client.eventClient.addGlobalAttribute("_session.id", client.session.getSessionID());
    DefaultSessionClient.logger.devv("Firing Session Event: _session.start");
    Event localEvent = client.eventClient.createEvent("_session.start");
    client.eventClient.recordEvent(localEvent);
    client.changeState(DefaultSessionClient.SessionState.ACTIVE);
  }
  
  protected void executeStop()
  {
    if (!client.session.isPaused()) {
      client.session.pause();
    }
    DefaultSessionClient.logger.devv("Firing Session Event: _session.stop");
    Event localEvent = client.eventClient.createEvent("_session.stop");
    localEvent.addMetric("_session.duration", client.session.getSessionDuration());
    localEvent.addAttribute("_session.id", client.session.getSessionID());
    if (client.session.getStopTime() == null) {}
    for (long l = 0L;; l = client.session.getStopTime().longValue())
    {
      localEvent.addAttribute("_session.startTime", Long.toString(client.session.getStartTime()));
      localEvent.addAttribute("_session.stopTime", Long.toString(Long.valueOf(l).longValue()));
      client.eventClient.recordEvent(localEvent);
      client.eventClient.removeGlobalAttribute("_session.id");
      client.session = null;
      client.changeState(DefaultSessionClient.SessionState.INACTIVE);
      return;
    }
  }
  
  public abstract void pause();
  
  public abstract void resume();
  
  public abstract void start();
  
  public abstract void stop();
}

/* Location:
 * Qualified Name:     com.amazon.insights.session.client.SessionClientState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */