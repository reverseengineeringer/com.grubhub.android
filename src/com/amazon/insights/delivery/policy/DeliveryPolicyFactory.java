package com.amazon.insights.delivery.policy;

public abstract interface DeliveryPolicyFactory
{
  public abstract DeliveryPolicy newBackgroundSubmissionTimePolicy();
  
  public abstract DeliveryPolicy newConnectivityPolicy();
  
  public abstract DeliveryPolicy newForceSubmissionTimePolicy();
}

/* Location:
 * Qualified Name:     com.amazon.insights.delivery.policy.DeliveryPolicyFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */