package com.amazon.insights.event;

import com.amazon.insights.Event;
import com.amazon.insights.core.idresolver.Id;
import com.amazon.insights.core.util.JSONSerializable;

public abstract interface InternalEvent
  extends Event, JSONSerializable
{
  public abstract String getApplicationKey();
  
  public abstract Long getEventTimestamp();
  
  public abstract String getSdkName();
  
  public abstract String getSdkVersion();
  
  public abstract Id getUniqueId();
}

/* Location:
 * Qualified Name:     com.amazon.insights.event.InternalEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */