package com.amazon.insights.delivery.policy;

public abstract interface DeliveryPolicy
{
  public abstract void handleDeliveryAttempt(boolean paramBoolean);
  
  public abstract boolean isAllowed();
}

/* Location:
 * Qualified Name:     com.amazon.insights.delivery.policy.DeliveryPolicy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */