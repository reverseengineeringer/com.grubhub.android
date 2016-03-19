package com.google.android.gms.d;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.k;
import com.google.android.gms.common.internal.i;
import com.google.android.gms.signin.internal.m;
import java.util.concurrent.Executors;

final class ch$1
  implements k<m, ck>
{
  public int a()
  {
    return Integer.MAX_VALUE;
  }
  
  public m a(Context paramContext, Looper paramLooper, i parami, ck paramck, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    if (paramck == null) {
      paramck = ck.a;
    }
    for (;;)
    {
      return new m(paramContext, paramLooper, true, parami, paramck, paramConnectionCallbacks, paramOnConnectionFailedListener, Executors.newSingleThreadExecutor());
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.ch.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */