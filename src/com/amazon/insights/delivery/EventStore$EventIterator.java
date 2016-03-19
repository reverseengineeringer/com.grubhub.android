package com.amazon.insights.delivery;

import java.util.Iterator;

public abstract interface EventStore$EventIterator
  extends Iterator<String>
{
  public abstract String peek();
  
  public abstract void removeReadEvents();
}

/* Location:
 * Qualified Name:     com.amazon.insights.delivery.EventStore.EventIterator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */