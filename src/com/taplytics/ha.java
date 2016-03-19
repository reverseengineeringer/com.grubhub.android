package com.taplytics;

import android.graphics.drawable.Drawable;
import android.view.ViewGroup;

class ha
  implements Runnable
{
  ha(gq paramgq, ViewGroup paramViewGroup, Drawable paramDrawable) {}
  
  public void run()
  {
    try
    {
      if ((a.findViewById(jk.b()) == null) && (fy.e().k() == null))
      {
        gq.a(c, jk.a(b));
        a.addView(gq.m(c));
        if (ck.c()) {
          ck.a("delay image added");
        }
      }
      return;
    }
    catch (Exception localException)
    {
      ck.b("Error making splash screen", localException);
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.ha
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */