package com.google.android.gms.appdatasearch;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.k;
import com.google.android.gms.common.internal.i;
import com.google.android.gms.d.ad;

final class d$1
  implements k<ad, f>
{
  public int a()
  {
    return Integer.MAX_VALUE;
  }
  
  public ad a(Context paramContext, Looper paramLooper, i parami, f paramf, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    return new ad(paramContext, paramLooper, paramConnectionCallbacks, paramOnConnectionFailedListener);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.appdatasearch.d.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */