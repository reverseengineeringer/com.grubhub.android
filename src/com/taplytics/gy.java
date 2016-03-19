package com.taplytics;

import android.view.ViewGroup;

class gy
  implements Runnable
{
  gy(gq paramgq) {}
  
  public void run()
  {
    try
    {
      if (gq.c(a).findViewById(js.b()) != null) {
        gq.c(a).removeView(gq.c(a).findViewById(js.b()));
      }
      return;
    }
    catch (Exception localException)
    {
      ck.b("problem removing border", localException);
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.gy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */