package com.google.android.gms.common.api;

import java.util.concurrent.locks.Lock;

public abstract class aj
  implements GoogleApiClient.ConnectionCallbacks
{
  public aj(zzg paramzzg) {}
  
  public void onConnectionSuspended(int paramInt)
  {
    zzg.b(b).lock();
    try
    {
      zzg.a(b).b(paramInt);
      return;
    }
    finally
    {
      zzg.b(b).unlock();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */