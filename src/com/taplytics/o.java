package com.taplytics;

import android.app.Activity;

class o
  implements Runnable
{
  o(n paramn, Activity paramActivity) {}
  
  public void run()
  {
    try
    {
      if (ck.c()) {
        ck.a("Activity has been created: " + a.getClass().getSimpleName());
      }
      fy.e().t();
      return;
    }
    catch (Exception localException)
    {
      ck.b("Activity null", localException);
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */