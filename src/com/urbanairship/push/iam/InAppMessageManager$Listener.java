package com.urbanairship.push.iam;

public abstract interface InAppMessageManager$Listener
{
  public abstract void onDisplay(InAppMessageFragment paramInAppMessageFragment, InAppMessage paramInAppMessage);
  
  public abstract void onPendingMessageAvailable(InAppMessage paramInAppMessage);
}

/* Location:
 * Qualified Name:     com.urbanairship.push.iam.InAppMessageManager.Listener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */