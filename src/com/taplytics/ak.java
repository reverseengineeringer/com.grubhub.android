package com.taplytics;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import java.util.Map;

class ak
  implements Runnable
{
  ak(n paramn, Activity paramActivity) {}
  
  public void run()
  {
    try
    {
      String str = a.getClass().getSimpleName();
      if (ck.c()) {
        ck.a("Activity Started: " + str);
      }
      if (!iz.a(kb.albatross))
      {
        fy.e().n().b("viewAppeared", str, null);
        fy.e().n().b().put(str, Long.valueOf(System.currentTimeMillis()));
      }
      fy.e().a(a);
      fy.e().b(a);
      if ((fy.e().g()) && (!aa)) {
        im.a().a(null);
      }
      gq.h().a((ViewGroup)a.findViewById(16908290).getRootView());
      return;
    }
    catch (Exception localException)
    {
      ck.b("error starting activity", localException);
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.ak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */