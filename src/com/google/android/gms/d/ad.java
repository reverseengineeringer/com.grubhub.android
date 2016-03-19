package com.google.android.gms.d;

import android.content.Context;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.internal.n;

public class ad
  extends n<w>
{
  public ad(Context paramContext, Looper paramLooper, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    super(paramContext, paramLooper, 19, paramConnectionCallbacks, paramOnConnectionFailedListener);
  }
  
  protected w b(IBinder paramIBinder)
  {
    return x.a(paramIBinder);
  }
  
  protected String d()
  {
    return "com.google.android.gms.icing.LIGHTWEIGHT_INDEX_SERVICE";
  }
  
  protected String e()
  {
    return "com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearch";
  }
  
  public w p()
    throws DeadObjectException
  {
    return (w)m();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */