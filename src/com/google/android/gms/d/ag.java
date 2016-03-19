package com.google.android.gms.d;

import android.os.RemoteException;
import com.google.android.gms.appdatasearch.d;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.v;
import com.google.android.gms.common.api.y;

abstract class ag<T extends v>
  extends y<T, ad>
{
  public ag(GoogleApiClient paramGoogleApiClient)
  {
    super(d.a, paramGoogleApiClient);
  }
  
  protected final void a(ad paramad)
    throws RemoteException
  {
    a(paramad.p());
  }
  
  protected abstract void a(w paramw)
    throws RemoteException;
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */