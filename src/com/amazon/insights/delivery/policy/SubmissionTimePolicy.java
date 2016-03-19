package com.amazon.insights.delivery.policy;

import com.amazon.insights.core.InsightsContext;
import com.amazon.insights.core.system.Preferences;

public class SubmissionTimePolicy
  implements DeliveryPolicy
{
  static final String SUBMITTED_TIME_KEY = "SubmissionTimePolicy.submissionTime";
  private final InsightsContext context;
  private Long lastSubmittedTime;
  private final Long waitInterval;
  
  public SubmissionTimePolicy(InsightsContext paramInsightsContext, Long paramLong)
  {
    context = paramInsightsContext;
    waitInterval = paramLong;
    lastSubmittedTime = Long.valueOf(paramInsightsContext.getSystem().getPreferences().getLong("SubmissionTimePolicy.submissionTime", 0L));
  }
  
  public void handleDeliveryAttempt(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      lastSubmittedTime = Long.valueOf(System.currentTimeMillis());
      context.getSystem().getPreferences().putLong("SubmissionTimePolicy.submissionTime", lastSubmittedTime.longValue());
    }
  }
  
  public boolean isAllowed()
  {
    return System.currentTimeMillis() - lastSubmittedTime.longValue() > waitInterval.longValue();
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.delivery.policy.SubmissionTimePolicy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */