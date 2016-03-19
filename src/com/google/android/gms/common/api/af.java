package com.google.android.gms.common.api;

import android.os.Bundle;
import com.google.android.gms.d.cj;

class af
  implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener
{
  private af(ab paramab) {}
  
  public void onConnected(Bundle paramBundle)
  {
    ab.c(a).a(new ad(a));
  }
  
  /* Error */
  public void onConnectionFailed(com.google.android.gms.common.ConnectionResult paramConnectionResult)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 14	com/google/android/gms/common/api/af:a	Lcom/google/android/gms/common/api/ab;
    //   4: invokestatic 42	com/google/android/gms/common/api/ab:a	(Lcom/google/android/gms/common/api/ab;)Ljava/util/concurrent/locks/Lock;
    //   7: invokeinterface 47 1 0
    //   12: aload_0
    //   13: getfield 14	com/google/android/gms/common/api/af:a	Lcom/google/android/gms/common/api/ab;
    //   16: aload_1
    //   17: invokestatic 51	com/google/android/gms/common/api/ab:b	(Lcom/google/android/gms/common/api/ab;Lcom/google/android/gms/common/ConnectionResult;)Z
    //   20: ifeq +30 -> 50
    //   23: aload_0
    //   24: getfield 14	com/google/android/gms/common/api/af:a	Lcom/google/android/gms/common/api/ab;
    //   27: invokestatic 54	com/google/android/gms/common/api/ab:d	(Lcom/google/android/gms/common/api/ab;)V
    //   30: aload_0
    //   31: getfield 14	com/google/android/gms/common/api/af:a	Lcom/google/android/gms/common/api/ab;
    //   34: invokestatic 57	com/google/android/gms/common/api/ab:e	(Lcom/google/android/gms/common/api/ab;)V
    //   37: aload_0
    //   38: getfield 14	com/google/android/gms/common/api/af:a	Lcom/google/android/gms/common/api/ab;
    //   41: invokestatic 42	com/google/android/gms/common/api/ab:a	(Lcom/google/android/gms/common/api/ab;)Ljava/util/concurrent/locks/Lock;
    //   44: invokeinterface 60 1 0
    //   49: return
    //   50: aload_0
    //   51: getfield 14	com/google/android/gms/common/api/af:a	Lcom/google/android/gms/common/api/ab;
    //   54: aload_1
    //   55: invokestatic 63	com/google/android/gms/common/api/ab:a	(Lcom/google/android/gms/common/api/ab;Lcom/google/android/gms/common/ConnectionResult;)V
    //   58: goto -21 -> 37
    //   61: astore_1
    //   62: aload_0
    //   63: getfield 14	com/google/android/gms/common/api/af:a	Lcom/google/android/gms/common/api/ab;
    //   66: invokestatic 42	com/google/android/gms/common/api/ab:a	(Lcom/google/android/gms/common/api/ab;)Ljava/util/concurrent/locks/Lock;
    //   69: invokeinterface 60 1 0
    //   74: aload_1
    //   75: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	76	0	this	af
    //   0	76	1	paramConnectionResult	com.google.android.gms.common.ConnectionResult
    // Exception table:
    //   from	to	target	type
    //   12	37	61	finally
    //   50	58	61	finally
  }
  
  public void onConnectionSuspended(int paramInt) {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.af
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */