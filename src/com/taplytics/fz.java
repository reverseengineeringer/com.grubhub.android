package com.taplytics;

import android.app.Activity;
import android.app.AlertDialog.Builder;

class fz
  implements Runnable
{
  fz(fy paramfy, Activity paramActivity) {}
  
  public void run()
  {
    new AlertDialog.Builder(a).setTitle("Taplytics has changed its socket dependency!").setMessage("Please update it to ensure Taplytics works properly. Thank you!").setPositiveButton("OK", new gc(this)).setNegativeButton("Read More", new gb(this)).show();
  }
}

/* Location:
 * Qualified Name:     com.taplytics.fz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */