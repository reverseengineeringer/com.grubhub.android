package com.urbanairship.push.iam;

import android.view.View;
import android.view.View.OnClickListener;
import com.urbanairship.UAirship;
import com.urbanairship.actions.Situation;
import com.urbanairship.analytics.Analytics;

class InAppMessageFragment$3
  implements View.OnClickListener
{
  InAppMessageFragment$3(InAppMessageFragment paramInAppMessageFragment) {}
  
  public void onClick(View paramView)
  {
    this$0.dismiss(true);
    InAppMessageFragment.access$200(this$0, InAppMessageFragment.access$000(this$0).getClickActionValues(), Situation.FOREGROUND_NOTIFICATION_ACTION_BUTTON);
    paramView = ResolutionEvent.createClickedResolutionEvent(InAppMessageFragment.access$000(this$0), InAppMessageFragment.access$100(this$0).getRunTime());
    UAirship.shared().getAnalytics().addEvent(paramView);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.iam.InAppMessageFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */