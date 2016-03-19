package com.urbanairship;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import android.os.Bundle;

@TargetApi(14)
public abstract class LifeCycleCallbacks
{
  private final Application.ActivityLifecycleCallbacks activityLifecycleCallbacks;
  private final Application application;
  private boolean isRegistered = false;
  
  public LifeCycleCallbacks(Application paramApplication)
  {
    application = paramApplication;
    activityLifecycleCallbacks = new Application.ActivityLifecycleCallbacks()
    {
      public void onActivityCreated(Activity paramAnonymousActivity, Bundle paramAnonymousBundle) {}
      
      public void onActivityDestroyed(Activity paramAnonymousActivity) {}
      
      public void onActivityPaused(Activity paramAnonymousActivity)
      {
        LifeCycleCallbacks.this.onActivityPaused(paramAnonymousActivity);
      }
      
      public void onActivityResumed(Activity paramAnonymousActivity)
      {
        LifeCycleCallbacks.this.onActivityResumed(paramAnonymousActivity);
      }
      
      public void onActivitySaveInstanceState(Activity paramAnonymousActivity, Bundle paramAnonymousBundle) {}
      
      public void onActivityStarted(Activity paramAnonymousActivity)
      {
        LifeCycleCallbacks.this.onActivityStarted(paramAnonymousActivity);
      }
      
      public void onActivityStopped(Activity paramAnonymousActivity)
      {
        LifeCycleCallbacks.this.onActivityStopped(paramAnonymousActivity);
      }
    };
  }
  
  public void onActivityPaused(Activity paramActivity) {}
  
  public void onActivityResumed(Activity paramActivity) {}
  
  public void onActivityStarted(Activity paramActivity) {}
  
  public void onActivityStopped(Activity paramActivity) {}
  
  public void register()
  {
    if (!isRegistered)
    {
      application.registerActivityLifecycleCallbacks(activityLifecycleCallbacks);
      isRegistered = true;
    }
  }
  
  public void unregister()
  {
    if (isRegistered)
    {
      application.unregisterActivityLifecycleCallbacks(activityLifecycleCallbacks);
      isRegistered = false;
    }
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.LifeCycleCallbacks
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */