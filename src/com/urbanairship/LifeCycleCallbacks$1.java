package com.urbanairship;

import android.app.Activity;
import android.app.Application.ActivityLifecycleCallbacks;
import android.os.Bundle;

class LifeCycleCallbacks$1
  implements Application.ActivityLifecycleCallbacks
{
  LifeCycleCallbacks$1(LifeCycleCallbacks paramLifeCycleCallbacks) {}
  
  public void onActivityCreated(Activity paramActivity, Bundle paramBundle) {}
  
  public void onActivityDestroyed(Activity paramActivity) {}
  
  public void onActivityPaused(Activity paramActivity)
  {
    this$0.onActivityPaused(paramActivity);
  }
  
  public void onActivityResumed(Activity paramActivity)
  {
    this$0.onActivityResumed(paramActivity);
  }
  
  public void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle) {}
  
  public void onActivityStarted(Activity paramActivity)
  {
    this$0.onActivityStarted(paramActivity);
  }
  
  public void onActivityStopped(Activity paramActivity)
  {
    this$0.onActivityStopped(paramActivity);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.LifeCycleCallbacks.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */