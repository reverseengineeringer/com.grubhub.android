package com.amazon.insights.delivery.policy;

import com.amazon.insights.core.InsightsContext;
import com.amazon.insights.core.configuration.Configuration;

public class DefaultDeliveryPolicyFactory
  implements DeliveryPolicyFactory
{
  private static final long BG_SUBMISSION_WAIT_TIME_SEC = 0L;
  private static final long FORCE_SUBMISSION_WAIT_TIME_SEC = 60L;
  private final long backgroundSubmissionInterval;
  private final InsightsContext context;
  private final long forceSubmissionInterval;
  private final boolean isWanAllowed;
  
  public DefaultDeliveryPolicyFactory(InsightsContext paramInsightsContext, boolean paramBoolean)
  {
    context = paramInsightsContext;
    isWanAllowed = paramBoolean;
    forceSubmissionInterval = (paramInsightsContext.getConfiguration().optLong("forceSubmissionWaitTime", Long.valueOf(60L)).longValue() * 1000L);
    backgroundSubmissionInterval = (paramInsightsContext.getConfiguration().optLong("backgroundSubmissionWaitTime", Long.valueOf(0L)).longValue() * 1000L);
  }
  
  public DeliveryPolicy newBackgroundSubmissionTimePolicy()
  {
    return new SubmissionTimePolicy(context, Long.valueOf(backgroundSubmissionInterval));
  }
  
  public DeliveryPolicy newConnectivityPolicy()
  {
    return new ConnectivityPolicy(context, isWanAllowed);
  }
  
  public DeliveryPolicy newForceSubmissionTimePolicy()
  {
    return new SubmissionTimePolicy(context, Long.valueOf(forceSubmissionInterval));
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.delivery.policy.DefaultDeliveryPolicyFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */