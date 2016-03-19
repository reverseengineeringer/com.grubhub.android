package com.google.android.gms.common.api;

import com.google.android.gms.common.ConnectionResult;
import java.util.concurrent.locks.Lock;

class ab$1
  implements Runnable
{
  ab$1(ab paramab, ConnectionResult paramConnectionResult) {}
  
  public void run()
  {
    ab.a(b).lock();
    try
    {
      ab.a(b, a);
      return;
    }
    finally
    {
      ab.a(b).unlock();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.ab.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */