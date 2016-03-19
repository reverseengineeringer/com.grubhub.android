package com.urbanairship.push.iam;

import android.view.View;
import com.urbanairship.UAirship;
import com.urbanairship.analytics.Analytics;
import com.urbanairship.push.iam.view.SwipeDismissViewLayout.Listener;

class InAppMessageFragment$2
  implements SwipeDismissViewLayout.Listener
{
  InAppMessageFragment$2(InAppMessageFragment paramInAppMessageFragment) {}
  
  public void onDismissed(View paramView)
  {
    this$0.dismiss(false);
    paramView = ResolutionEvent.createUserDismissedResolutionEvent(InAppMessageFragment.access$000(this$0), InAppMessageFragment.access$100(this$0).getRunTime());
    UAirship.shared().getAnalytics().addEvent(paramView);
  }
  
  public void onDragStateChanged(View paramView, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    case 1: 
      InAppMessageFragment.access$100(this$0).stop();
      return;
    }
    InAppMessageFragment.access$100(this$0).start();
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.iam.InAppMessageFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */