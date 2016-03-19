package com.google.android.gms.common.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.p;

public class t
  implements p
{
  public t(n paramn) {}
  
  public void a(ConnectionResult paramConnectionResult)
  {
    if (paramConnectionResult.b()) {
      a.a(null, n.d(a));
    }
    while (n.e(a) == null) {
      return;
    }
    n.e(a).onConnectionFailed(paramConnectionResult);
  }
  
  public void b(ConnectionResult paramConnectionResult)
  {
    throw new IllegalStateException("Legacy GmsClient received onReportAccountValidation callback.");
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */