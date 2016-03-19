package com.flurry.sdk;

import android.app.Activity;
import android.app.Application.ActivityLifecycleCallbacks;
import android.os.Bundle;

class hr$1
  implements Application.ActivityLifecycleCallbacks
{
  hr$1(hr paramhr) {}
  
  protected void a(Activity paramActivity, hq.a parama)
  {
    hq localhq = new hq();
    a = paramActivity;
    b = parama;
    localhq.b();
  }
  
  public void onActivityCreated(Activity paramActivity, Bundle paramBundle)
  {
    ib.a(3, hr.d(), "onActivityCreated for activity:" + paramActivity);
    a(paramActivity, hq.a.a);
  }
  
  public void onActivityDestroyed(Activity paramActivity)
  {
    ib.a(3, hr.d(), "onActivityDestroyed for activity:" + paramActivity);
    a(paramActivity, hq.a.b);
  }
  
  public void onActivityPaused(Activity paramActivity)
  {
    ib.a(3, hr.d(), "onActivityPaused for activity:" + paramActivity);
    a(paramActivity, hq.a.c);
  }
  
  public void onActivityResumed(Activity paramActivity)
  {
    ib.a(3, hr.d(), "onActivityResumed for activity:" + paramActivity);
    a(paramActivity, hq.a.d);
  }
  
  public void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle)
  {
    ib.a(3, hr.d(), "onActivitySaveInstanceState for activity:" + paramActivity);
    a(paramActivity, hq.a.g);
  }
  
  public void onActivityStarted(Activity paramActivity)
  {
    ib.a(3, hr.d(), "onActivityStarted for activity:" + paramActivity);
    a(paramActivity, hq.a.e);
  }
  
  public void onActivityStopped(Activity paramActivity)
  {
    ib.a(3, hr.d(), "onActivityStopped for activity:" + paramActivity);
    a(paramActivity, hq.a.f);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.hr.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */