package com.taplytics;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;

class fj
  implements Runnable
{
  fj(fi paramfi) {}
  
  public void run()
  {
    Object localObject = new StringBuilder();
    if (gq.h().s()) {}
    for (String str = "Disable";; str = "Enable")
    {
      str = str + " Borders";
      try
      {
        if ((fy.e().q() != null) && (fy.e().i()))
        {
          localObject = a;
          fk localfk = new fk(this);
          a = jk.a("Taplytics", new String[] { "Show Experiments", "Clear", str }, localfk).create();
          jk.a(a.a, 80);
          a.a.dismiss();
          a.a.show();
          fi.a(a);
        }
        return;
      }
      catch (Exception localException)
      {
        ck.b("dialog err", localException);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.fj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */