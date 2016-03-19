package com.amazon.insights.event;

public abstract interface EventObserver
{
  public abstract void notify(InternalEvent paramInternalEvent);
}

/* Location:
 * Qualified Name:     com.amazon.insights.event.EventObserver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */