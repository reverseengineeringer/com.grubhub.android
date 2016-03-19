package com.urbanairship.push.iam;

import android.app.Activity;
import android.app.Application;
import android.os.Handler;
import android.os.Looper;
import com.urbanairship.Cancelable;
import com.urbanairship.LifeCycleCallbacks;
import com.urbanairship.UAirship;
import com.urbanairship.UAirship.OnReadyCallback;
import java.lang.ref.WeakReference;

final class InAppMessageManager$5
  extends LifeCycleCallbacks
{
  InAppMessageManager$5(Application paramApplication)
  {
    super(paramApplication);
  }
  
  public void onActivityPaused(Activity paramActivity)
  {
    if ((InAppMessageManager.access$1100() != null) && (!InAppMessageManager.access$1100().isDone()))
    {
      InAppMessageManager.access$1100().cancel();
      return;
    }
    UAirship.shared().getInAppMessageManager().onActivityPaused(paramActivity);
  }
  
  public void onActivityResumed(Activity paramActivity)
  {
    InAppMessageManager.access$1102(UAirship.shared(new UAirship.OnReadyCallback()
    {
      public void onAirshipReady(UAirship paramAnonymousUAirship)
      {
        paramAnonymousUAirship = (Activity)val$weakReference.get();
        if (paramAnonymousUAirship != null) {
          UAirship.shared().getInAppMessageManager().onActivityResumed(paramAnonymousUAirship);
        }
      }
    }));
  }
  
  public void onActivityStarted(Activity paramActivity)
  {
    InAppMessageManager.access$908();
    if (!InAppMessageManager.access$1000())
    {
      InAppMessageManager.access$1002(true);
      if (UAirship.isFlying()) {
        UAirship.shared().getInAppMessageManager().onForeground();
      }
    }
    else
    {
      return;
    }
    UAirship.shared(new UAirship.OnReadyCallback()
    {
      public void onAirshipReady(UAirship paramAnonymousUAirship)
      {
        UAirship.shared().getInAppMessageManager().onForeground();
      }
    });
  }
  
  public void onActivityStopped(Activity paramActivity)
  {
    InAppMessageManager.access$910();
    if (InAppMessageManager.access$900() == 0) {
      new Handler(Looper.getMainLooper()).postDelayed(new Runnable()
      {
        public void run()
        {
          if (InAppMessageManager.access$900() == 0) {
            InAppMessageManager.access$1002(false);
          }
        }
      }, 500L);
    }
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.iam.InAppMessageManager.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */