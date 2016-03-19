package com.urbanairship.push.iam;

import android.annotation.TargetApi;

public abstract class InAppMessageFragmentFactory
{
  @TargetApi(11)
  public abstract InAppMessageFragment createFragment(InAppMessage paramInAppMessage);
}

/* Location:
 * Qualified Name:     com.urbanairship.push.iam.InAppMessageFragmentFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */