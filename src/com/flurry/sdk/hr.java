package com.flurry.sdk;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.Context;
import android.os.Build.VERSION;
import android.os.Bundle;

public class hr
{
  private static hr a;
  private static final String b = hr.class.getSimpleName();
  private Object c;
  
  private hr()
  {
    e();
  }
  
  public static hr a()
  {
    try
    {
      if (a == null) {
        a = new hr();
      }
      hr localhr = a;
      return localhr;
    }
    finally {}
  }
  
  public static void b()
  {
    try
    {
      if (a != null) {
        a.f();
      }
      a = null;
      return;
    }
    finally {}
  }
  
  @TargetApi(14)
  private void e()
  {
    if ((Build.VERSION.SDK_INT < 14) || (c != null)) {}
    Context localContext;
    do
    {
      return;
      localContext = hn.a().c();
    } while (!(localContext instanceof Application));
    c = new Application.ActivityLifecycleCallbacks()
    {
      protected void a(Activity paramAnonymousActivity, hq.a paramAnonymousa)
      {
        hq localhq = new hq();
        a = paramAnonymousActivity;
        b = paramAnonymousa;
        localhq.b();
      }
      
      public void onActivityCreated(Activity paramAnonymousActivity, Bundle paramAnonymousBundle)
      {
        ib.a(3, hr.d(), "onActivityCreated for activity:" + paramAnonymousActivity);
        a(paramAnonymousActivity, hq.a.a);
      }
      
      public void onActivityDestroyed(Activity paramAnonymousActivity)
      {
        ib.a(3, hr.d(), "onActivityDestroyed for activity:" + paramAnonymousActivity);
        a(paramAnonymousActivity, hq.a.b);
      }
      
      public void onActivityPaused(Activity paramAnonymousActivity)
      {
        ib.a(3, hr.d(), "onActivityPaused for activity:" + paramAnonymousActivity);
        a(paramAnonymousActivity, hq.a.c);
      }
      
      public void onActivityResumed(Activity paramAnonymousActivity)
      {
        ib.a(3, hr.d(), "onActivityResumed for activity:" + paramAnonymousActivity);
        a(paramAnonymousActivity, hq.a.d);
      }
      
      public void onActivitySaveInstanceState(Activity paramAnonymousActivity, Bundle paramAnonymousBundle)
      {
        ib.a(3, hr.d(), "onActivitySaveInstanceState for activity:" + paramAnonymousActivity);
        a(paramAnonymousActivity, hq.a.g);
      }
      
      public void onActivityStarted(Activity paramAnonymousActivity)
      {
        ib.a(3, hr.d(), "onActivityStarted for activity:" + paramAnonymousActivity);
        a(paramAnonymousActivity, hq.a.e);
      }
      
      public void onActivityStopped(Activity paramAnonymousActivity)
      {
        ib.a(3, hr.d(), "onActivityStopped for activity:" + paramAnonymousActivity);
        a(paramAnonymousActivity, hq.a.f);
      }
    };
    ((Application)localContext).registerActivityLifecycleCallbacks((Application.ActivityLifecycleCallbacks)c);
  }
  
  @TargetApi(14)
  private void f()
  {
    if ((Build.VERSION.SDK_INT < 14) || (c == null)) {}
    Context localContext;
    do
    {
      return;
      localContext = hn.a().c();
    } while (!(localContext instanceof Application));
    ((Application)localContext).unregisterActivityLifecycleCallbacks((Application.ActivityLifecycleCallbacks)c);
    c = null;
  }
  
  public boolean c()
  {
    return c != null;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.hr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */