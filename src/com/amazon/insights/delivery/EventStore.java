package com.amazon.insights.delivery;

public abstract interface EventStore
{
  public abstract EventStore.EventIterator iterator();
  
  public abstract boolean put(String paramString)
    throws EventStoreException;
}

/* Location:
 * Qualified Name:     com.amazon.insights.delivery.EventStore
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */