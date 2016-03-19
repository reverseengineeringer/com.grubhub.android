package com.urbanairship.push.iam;

import com.urbanairship.UAirship;
import com.urbanairship.analytics.Analytics;

class InAppMessageFragment$1
  extends Timer
{
  InAppMessageFragment$1(InAppMessageFragment paramInAppMessageFragment, long paramLong)
  {
    super(paramLong);
  }
  
  protected void onFinish()
  {
    this$0.dismiss(true);
    ResolutionEvent localResolutionEvent = ResolutionEvent.createTimedOutResolutionEvent(InAppMessageFragment.access$000(this$0), InAppMessageFragment.access$100(this$0).getRunTime());
    UAirship.shared().getAnalytics().addEvent(localResolutionEvent);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.iam.InAppMessageFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */