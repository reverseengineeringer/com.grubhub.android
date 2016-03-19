package com.google.android.gms.d;

import android.os.Process;

class bv
  extends Thread
{
  bv(Runnable paramRunnable, String paramString)
  {
    super(paramRunnable, paramString);
  }
  
  public void run()
  {
    Process.setThreadPriority(10);
    super.run();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.bv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */