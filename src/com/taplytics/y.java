package com.taplytics;

import android.app.Activity;
import android.content.res.Configuration;
import android.content.res.Resources;
import java.util.ArrayList;

class y
  implements Runnable
{
  y(n paramn, Activity paramActivity) {}
  
  public void run()
  {
    try
    {
      if (ck.c()) {
        ck.a("Activity Resumed: " + a.getClass().getSimpleName());
      }
      if ((fy.e().q() != null) && (fy.e().q() == a)) {
        fy.e().c(true);
      }
      n.b(b).a();
      if (fy.e().g()) {
        gq.h().j();
      }
      fy.e().b(a);
      if ((fy.e().y()) && (fy.e().i()) && (fy.e().g()) && (fy.e().j()))
      {
        if ((n.c(b).isEmpty()) || (n.d(b).c()) || (n.d(b).d()))
        {
          n.c(b).clear();
          n.c(b).add(Integer.valueOf(a.getResources().getConfiguration().orientation));
          n.b(b, new c());
          n.d(b).a(new aj(this));
          n.d(b).a(30000);
          return;
        }
        int i = ((Integer)n.c(b).get(n.c(b).size() - 1)).intValue();
        int j = a.getResources().getConfiguration().orientation;
        if (j != i)
        {
          n.c(b).add(Integer.valueOf(j));
          if (n.c(b).size() > 3)
          {
            fi.a().b();
            n.d(b).a();
            return;
          }
        }
      }
    }
    catch (Exception localException)
    {
      ck.b("Error resuming", localException);
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */