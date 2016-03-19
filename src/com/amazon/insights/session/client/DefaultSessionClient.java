package com.amazon.insights.session.client;

import com.amazon.insights.core.InsightsContext;
import com.amazon.insights.core.configuration.Configuration;
import com.amazon.insights.core.log.Logger;
import com.amazon.insights.core.util.Preconditions;
import com.amazon.insights.event.InternalEventClient;
import com.amazon.insights.session.FileSessionStore;
import com.amazon.insights.session.InternalSessionClient;
import com.amazon.insights.session.Session;
import com.amazon.insights.session.SessionStore;

public class DefaultSessionClient
  implements InternalSessionClient
{
  protected static final long DEFAULT_RESTART_DELAY = 30000L;
  protected static final long DEFAULT_RESUME_DELAY = 5000L;
  protected static final String RESTART_DELAY_CONFIG_KEY = "sessionRestartDelay";
  protected static final String RESUME_DELAY_CONFIG_KEY = "sessionResumeDelay";
  public static final String SESSION_DURATION_METRIC_KEY = "_session.duration";
  public static final String SESSION_ID_ATTRIBUTE_KEY = "_session.id";
  public static final String SESSION_PAUSE_EVENT_TYPE = "_session.pause";
  public static final String SESSION_RESUME_EVENT_TYPE = "_session.resume";
  public static final String SESSION_START_EVENT_TYPE = "_session.start";
  public static final String SESSION_START_TIME_ATTRIBUTE_KEY = "_session.startTime";
  public static final String SESSION_STOP_EVENT_TYPE = "_session.stop";
  public static final String SESSION_STOP_TIME_ATTRIBUTE_KEY = "_session.stopTime";
  protected static final Logger logger = Logger.getLogger(DefaultSessionClient.class);
  private final SessionClientState ACTIVE_STATE = new ActiveSessionState(this);
  private final SessionClientState INACTIVE_STATE = new InactiveSessionState(this);
  private final SessionClientState PAUSED_STATE = new PausedSessionState(this);
  protected final InsightsContext context;
  protected final InternalEventClient eventClient;
  private final long restartDelay;
  private final long resumeDelay;
  protected Session session;
  protected final SessionStore sessionStore;
  protected SessionClientState state;
  
  protected DefaultSessionClient(InsightsContext paramInsightsContext, InternalEventClient paramInternalEventClient, SessionStore paramSessionStore)
  {
    Preconditions.checkNotNull(paramInsightsContext, "A valid InsightsContext must be provided!");
    Preconditions.checkNotNull(paramInternalEventClient, "A valid EventClient must be provided!");
    Preconditions.checkNotNull(paramSessionStore, "A valid SessionStore must be provided!");
    sessionStore = paramSessionStore;
    eventClient = paramInternalEventClient;
    context = paramInsightsContext;
    session = sessionStore.getSession();
    if (session == null) {}
    for (paramInternalEventClient = INACTIVE_STATE;; paramInternalEventClient = PAUSED_STATE)
    {
      state = paramInternalEventClient;
      restartDelay = paramInsightsContext.getConfiguration().optLong("sessionRestartDelay", Long.valueOf(30000L)).longValue();
      resumeDelay = paramInsightsContext.getConfiguration().optLong("sessionResumeDelay", Long.valueOf(5000L)).longValue();
      return;
    }
  }
  
  public static DefaultSessionClient newInstance(InsightsContext paramInsightsContext, InternalEventClient paramInternalEventClient)
  {
    return new DefaultSessionClient(paramInsightsContext, paramInternalEventClient, new FileSessionStore(paramInsightsContext));
  }
  
  protected void changeState(DefaultSessionClient.SessionState paramSessionState)
  {
    for (;;)
    {
      try
      {
        int i = 1.$SwitchMap$com$amazon$insights$session$client$DefaultSessionClient$SessionState[paramSessionState.ordinal()];
        switch (i)
        {
        default: 
          return;
        }
      }
      finally {}
      state = INACTIVE_STATE;
      continue;
      state = ACTIVE_STATE;
      continue;
      state = PAUSED_STATE;
    }
  }
  
  public long getRestartDelay()
  {
    return restartDelay;
  }
  
  public long getResumeDelay()
  {
    return resumeDelay;
  }
  
  protected Session getSession()
  {
    return session;
  }
  
  protected DefaultSessionClient.SessionState getSessionState()
  {
    if (session != null)
    {
      if (session.isPaused()) {
        return DefaultSessionClient.SessionState.PAUSED;
      }
      return DefaultSessionClient.SessionState.ACTIVE;
    }
    return DefaultSessionClient.SessionState.INACTIVE;
  }
  
  public void pauseSession()
  {
    try
    {
      state.pause();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void resumeSession()
  {
    try
    {
      state.resume();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void startSession()
  {
    try
    {
      state.start();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void stopSession()
  {
    try
    {
      state.stop();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder().append("[DefaultSessionClient]\n- session: ");
    if (session == null)
    {
      str = "<null>";
      localStringBuilder = localStringBuilder.append(str);
      if ((session == null) || (!session.isPaused())) {
        break label69;
      }
    }
    label69:
    for (String str = ": paused";; str = "")
    {
      return str;
      str = session.getSessionID();
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.session.client.DefaultSessionClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */