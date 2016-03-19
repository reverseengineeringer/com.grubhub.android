package com.urbanairship.push.iam.view;

import android.view.View;
import android.view.View.OnClickListener;
import com.urbanairship.push.notifications.NotificationActionButton;

class BannerContent$2
  implements View.OnClickListener
{
  BannerContent$2(BannerContent paramBannerContent, NotificationActionButton paramNotificationActionButton) {}
  
  public void onClick(View paramView)
  {
    if (BannerContent.access$100(this$0) != null) {
      BannerContent.access$100(this$0).onActionClick(val$actionButton);
    }
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.iam.view.BannerContent.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */