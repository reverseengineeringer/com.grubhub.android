package com.urbanairship.push.iam;

import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import com.urbanairship.actions.Situation;
import com.urbanairship.analytics.Analytics;
import com.urbanairship.push.iam.view.Banner.OnActionClickListener;
import com.urbanairship.push.notifications.NotificationActionButton;

class InAppMessageFragment$5
  implements Banner.OnActionClickListener
{
  InAppMessageFragment$5(InAppMessageFragment paramInAppMessageFragment) {}
  
  public void onActionClick(NotificationActionButton paramNotificationActionButton)
  {
    Logger.info("In-app message button clicked: " + paramNotificationActionButton.getId());
    this$0.dismiss(true);
    if (paramNotificationActionButton.isForegroundAction()) {}
    for (Situation localSituation = Situation.FOREGROUND_NOTIFICATION_ACTION_BUTTON;; localSituation = Situation.BACKGROUND_NOTIFICATION_ACTION_BUTTON)
    {
      InAppMessageFragment.access$200(this$0, InAppMessageFragment.access$000(this$0).getButtonActionValues(paramNotificationActionButton.getId()), localSituation);
      paramNotificationActionButton = ResolutionEvent.createButtonClickedResolutionEvent(this$0.getActivity(), InAppMessageFragment.access$000(this$0), paramNotificationActionButton, InAppMessageFragment.access$100(this$0).getRunTime());
      UAirship.shared().getAnalytics().addEvent(paramNotificationActionButton);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.iam.InAppMessageFragment.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */