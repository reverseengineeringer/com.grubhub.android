package com.amazon.insights.event.adapter;

import com.amazon.insights.event.InternalEvent;

public abstract interface EventAdapter<T>
{
  public abstract T translateFromEvent(InternalEvent paramInternalEvent);
}

/* Location:
 * Qualified Name:     com.amazon.insights.event.adapter.EventAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */