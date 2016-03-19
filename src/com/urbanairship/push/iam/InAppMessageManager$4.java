package com.urbanairship.push.iam;

import android.annotation.TargetApi;
import android.app.Activity;
import android.os.Handler;
import com.urbanairship.Logger;

class InAppMessageManager$4
  implements InAppMessageFragment.Listener
{
  InAppMessageManager$4(InAppMessageManager paramInAppMessageManager) {}
  
  public void onFinish(InAppMessageFragment paramInAppMessageFragment)
  {
    Logger.verbose("InAppMessageManager - InAppMessageFragment finished: " + paramInAppMessageFragment);
    InAppMessage localInAppMessage = paramInAppMessageFragment.getMessage();
    paramInAppMessageFragment = InAppMessageManager.access$500(this$0);
    if (localInAppMessage != null) {}
    try
    {
      if (localInAppMessage.equals(this$0.getPendingMessage())) {
        this$0.setPendingMessage(null);
      }
      if ((localInAppMessage != null) && (localInAppMessage.equals(InAppMessageManager.access$400(this$0))))
      {
        InAppMessageManager.access$402(this$0, null);
        if ((this$0.isDisplayAsapEnabled()) && (InAppMessageManager.access$100(this$0) != null))
        {
          InAppMessageManager.access$002(this$0, true);
          InAppMessageManager.access$700(this$0).removeCallbacks(InAppMessageManager.access$600(this$0));
          InAppMessageManager.access$700(this$0).postDelayed(InAppMessageManager.access$600(this$0), InAppMessageManager.access$800(this$0));
        }
      }
      return;
    }
    finally {}
  }
  
  @TargetApi(11)
  public void onPause(InAppMessageFragment paramInAppMessageFragment)
  {
    Logger.verbose("InAppMessageManager - InAppMessageFragment paused: " + paramInAppMessageFragment);
    if (paramInAppMessageFragment != InAppMessageManager.access$300(this$0)) {}
    do
    {
      return;
      InAppMessageManager.access$302(this$0, null);
    } while ((paramInAppMessageFragment.isDismissed()) || (!paramInAppMessageFragment.getActivity().isFinishing()));
    Logger.verbose("InAppMessageManager - InAppMessageFragment's activity is finishing: " + paramInAppMessageFragment);
    InAppMessageManager.access$002(this$0, true);
  }
  
  public void onResume(InAppMessageFragment paramInAppMessageFragment)
  {
    Logger.verbose("InAppMessageManager - InAppMessageFragment resumed: " + paramInAppMessageFragment);
    if ((InAppMessageManager.access$300(this$0) != null) && (InAppMessageManager.access$300(this$0) != paramInAppMessageFragment))
    {
      Logger.debug("InAppMessageManager - Dismissing " + paramInAppMessageFragment + " because it is no longer the current fragment.");
      paramInAppMessageFragment.dismiss(false);
      return;
    }
    if ((InAppMessageManager.access$400(this$0) == null) || (!InAppMessageManager.access$400(this$0).equals(paramInAppMessageFragment.getMessage())))
    {
      Logger.debug("InAppMessageManager - Dismissing " + paramInAppMessageFragment + " because its message is no longer current.");
      paramInAppMessageFragment.dismiss(false);
      return;
    }
    InAppMessageManager.access$302(this$0, paramInAppMessageFragment);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.iam.InAppMessageManager.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */