package com.taplytics;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.Context;
import android.os.Build.VERSION;
import android.os.Bundle;
import java.util.ArrayList;

@TargetApi(14)
public class n
  implements Application.ActivityLifecycleCallbacks
{
  private c<Object> a = new c();
  private c b = new c();
  private ArrayList<Integer> c = new ArrayList();
  
  @TargetApi(14)
  public static n a(Context paramContext)
  {
    if ((Build.VERSION.SDK_INT >= 14) && ((paramContext.getApplicationContext() instanceof Application)))
    {
      paramContext = (Application)paramContext.getApplicationContext();
      n localn = new n();
      paramContext.registerActivityLifecycleCallbacks(localn);
      fy.e().a(true);
      return localn;
    }
    return null;
  }
  
  public static void a(n paramn)
  {
    if (Build.VERSION.SDK_INT >= 14)
    {
      Context localContext = fy.e().p();
      if (localContext != null)
      {
        ((Application)localContext.getApplicationContext()).unregisterActivityLifecycleCallbacks(paramn);
        fy.e().a(false);
      }
    }
  }
  
  public void onActivityCreated(Activity paramActivity, Bundle paramBundle)
  {
    fy.e().a(new o(this, paramActivity));
  }
  
  public void onActivityDestroyed(Activity paramActivity)
  {
    fy.e().a(new r(this, paramActivity));
  }
  
  public void onActivityPaused(Activity paramActivity)
  {
    fy.e().a(new s(this, paramActivity));
  }
  
  public void onActivityResumed(Activity paramActivity)
  {
    fy.e().a(new y(this, paramActivity));
  }
  
  public void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle) {}
  
  public void onActivityStarted(Activity paramActivity)
  {
    fy.e().a(new ak(this, paramActivity));
  }
  
  public void onActivityStopped(Activity paramActivity)
  {
    fy.e().a(new al(this, paramActivity));
  }
}

/* Location:
 * Qualified Name:     com.taplytics.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */