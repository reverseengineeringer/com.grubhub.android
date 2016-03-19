package com.taplytics;

import android.os.Handler;
import android.os.Looper;
import java.lang.reflect.Method;

class di
  implements Runnable
{
  di(dg paramdg) {}
  
  public void run()
  {
    try
    {
      Class localClass = Class.forName("com.flurry.android.FlurryAgent");
      if (localClass != null) {
        localClass.getMethod("logEvent", new Class[] { String.class }).invoke(localClass, new Object[] { "app started" });
      }
    }
    catch (Exception localException1)
    {
      if (!(localException1 instanceof Exception)) {
        break label87;
      }
      for (Exception localException2 = (Exception)localException1;; localException2 = null)
      {
        ck.b("flr", localException2);
        break;
      }
    }
    catch (Error localError)
    {
      label87:
      for (;;) {}
    }
    new Handler(Looper.getMainLooper()).postDelayed(new dj(this), 750L);
  }
}

/* Location:
 * Qualified Name:     com.taplytics.di
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */