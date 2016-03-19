package com.amazon.insights.event;

import com.amazon.insights.Event;
import com.amazon.insights.EventClient;

public abstract interface InternalEventClient
  extends EventClient
{
  public abstract void addEventObserver(EventObserver paramEventObserver);
  
  public abstract InternalEvent createInternalEvent(String paramString);
  
  public abstract void recordEvent(Event paramEvent, boolean paramBoolean);
  
  public abstract void removeEventObserver(EventObserver paramEventObserver);
}

/* Location:
 * Qualified Name:     com.amazon.insights.event.InternalEventClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */