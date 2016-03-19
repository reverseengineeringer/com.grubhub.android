package com.crashlytics.android.internal;

import android.app.Activity;
import android.app.Application.ActivityLifecycleCallbacks;
import android.os.Bundle;

final class x
  implements Application.ActivityLifecycleCallbacks
{
  x(w paramw) {}
  
  public final void onActivityCreated(Activity paramActivity, Bundle paramBundle)
  {
    v.a(a.a, paramActivity);
  }
  
  public final void onActivityDestroyed(Activity paramActivity) {}
  
  public final void onActivityPaused(Activity paramActivity) {}
  
  public final void onActivityResumed(Activity paramActivity)
  {
    v.a(a.a, paramActivity);
  }
  
  public final void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle) {}
  
  public final void onActivityStarted(Activity paramActivity)
  {
    v.a(a.a, paramActivity);
  }
  
  public final void onActivityStopped(Activity paramActivity) {}
}

/* Location:
 * Qualified Name:     com.crashlytics.android.internal.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */