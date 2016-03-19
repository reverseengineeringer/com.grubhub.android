package com.taplytics;

import android.app.Activity;

class s
  implements Runnable
{
  s(n paramn, Activity paramActivity) {}
  
  public void run()
  {
    try
    {
      if (ck.c()) {
        ck.a("Activity Paused");
      }
      n.a(b, new c());
      n.b(b).a(new v(this));
      fi.a().c();
      if ((fy.e().q() != null) && (fy.e().q() == a)) {
        fy.e().c(false);
      }
      n.b(b).a(800);
      return;
    }
    catch (Exception localException)
    {
      ck.b("Error pausing: ", localException);
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */