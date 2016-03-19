package com.amazon.insights.delivery;

import com.amazon.insights.event.EventObserver;
import com.amazon.insights.event.InternalEvent;

public abstract interface DeliveryClient
  extends EventObserver
{
  public abstract void attemptDelivery();
  
  public abstract String[] batchedEvents();
  
  public abstract void enqueueEventForDelivery(InternalEvent paramInternalEvent);
}

/* Location:
 * Qualified Name:     com.amazon.insights.delivery.DeliveryClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */