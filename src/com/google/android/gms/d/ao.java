package com.google.android.gms.d;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.s;

public final class ao
  implements an
{
  public s<Status> a(GoogleApiClient paramGoogleApiClient)
  {
    paramGoogleApiClient.zzb(new ar(paramGoogleApiClient)
    {
      protected void a(as paramAnonymousas)
        throws RemoteException
      {
        ((aw)paramAnonymousas.m()).a(new ap(this));
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.ao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */