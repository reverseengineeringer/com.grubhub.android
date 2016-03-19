package com.google.android.gms.wallet;

import android.app.Activity;
import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.k;
import com.google.android.gms.common.internal.aq;
import com.google.android.gms.common.internal.i;
import com.google.android.gms.d.dv;

final class g$1
  implements k<dv, h>
{
  public int a()
  {
    return Integer.MAX_VALUE;
  }
  
  public dv a(Context paramContext, Looper paramLooper, i parami, h paramh, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    aq.b(paramContext instanceof Activity, "An Activity must be used for Wallet APIs");
    paramContext = (Activity)paramContext;
    if (paramh != null) {}
    for (;;)
    {
      return new dv(paramContext, paramLooper, paramConnectionCallbacks, paramOnConnectionFailedListener, a, parami.a(), b);
      paramh = new h(null);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.g.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */