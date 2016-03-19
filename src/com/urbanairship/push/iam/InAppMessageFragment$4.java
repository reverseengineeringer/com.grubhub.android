package com.urbanairship.push.iam;

import com.urbanairship.UAirship;
import com.urbanairship.analytics.Analytics;
import com.urbanairship.push.iam.view.Banner.OnDismissClickListener;

class InAppMessageFragment$4
  implements Banner.OnDismissClickListener
{
  InAppMessageFragment$4(InAppMessageFragment paramInAppMessageFragment) {}
  
  public void onDismissClick()
  {
    this$0.dismiss(true);
    ResolutionEvent localResolutionEvent = ResolutionEvent.createUserDismissedResolutionEvent(InAppMessageFragment.access$000(this$0), InAppMessageFragment.access$100(this$0).getRunTime());
    UAirship.shared().getAnalytics().addEvent(localResolutionEvent);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.iam.InAppMessageFragment.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */