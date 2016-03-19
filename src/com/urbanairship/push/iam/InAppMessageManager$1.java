package com.urbanairship.push.iam;

import android.app.Activity;

class InAppMessageManager$1
  implements Runnable
{
  InAppMessageManager$1(InAppMessageManager paramInAppMessageManager) {}
  
  public void run()
  {
    if (((!InAppMessageManager.access$000(this$0)) && (!this$0.isDisplayAsapEnabled())) || (!this$0.isAutoDisplayEnabled())) {}
    Activity localActivity;
    do
    {
      return;
      localActivity = InAppMessageManager.access$100(this$0);
    } while ((localActivity == null) || (!this$0.showPendingMessage(localActivity)));
    InAppMessageManager.access$002(this$0, false);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.iam.InAppMessageManager.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */