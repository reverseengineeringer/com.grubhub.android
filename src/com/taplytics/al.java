package com.taplytics;

import android.app.Activity;

class al
  implements Runnable
{
  al(n paramn, Activity paramActivity) {}
  
  public void run()
  {
    try
    {
      String str = a.getClass().getSimpleName();
      if (ck.c()) {
        ck.a("App Activity Stopped: " + str);
      }
      if (!iz.a(kb.albatross))
      {
        fy.e().n().b("viewDisappeared", str, null);
        cc.b(str);
      }
      gq.h().o();
      return;
    }
    catch (Exception localException)
    {
      ck.b("Error stopping activity: ", localException);
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.al
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */