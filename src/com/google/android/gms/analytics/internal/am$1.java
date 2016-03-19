package com.google.android.gms.analytics.internal;

import android.os.Looper;
import com.google.android.gms.d.bs;

class am$1
  implements Runnable
{
  am$1(am paramam) {}
  
  public void run()
  {
    if (Looper.myLooper() == Looper.getMainLooper()) {
      am.a(a).h().a(this);
    }
    boolean bool;
    do
    {
      return;
      bool = a.c();
      am.a(a, 0L);
    } while ((!bool) || (am.b(a)));
    a.a();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.am.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */