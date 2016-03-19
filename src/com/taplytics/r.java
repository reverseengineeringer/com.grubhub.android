package com.taplytics;

import android.app.Activity;

class r
  implements Runnable
{
  r(n paramn, Activity paramActivity) {}
  
  public void run()
  {
    try
    {
      String str = a.getClass().getSimpleName();
      if (ck.c()) {
        ck.a("Activity has been destroyed: " + str);
      }
      if ((fy.e().q().equals(a)) && (!iz.a(kb.albatross)))
      {
        n.b(b).a();
        fy.e().n().a("appTerminate");
      }
      return;
    }
    catch (Exception localException)
    {
      ck.b("Problem destroying activity: ", localException);
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */