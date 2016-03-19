package com.google.android.gms.d;

import android.content.Context;
import android.os.IBinder;
import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.internal.n;

public class as
  extends n<aw>
{
  public as(Context paramContext, Looper paramLooper, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    super(paramContext, paramLooper, 39, paramConnectionCallbacks, paramOnConnectionFailedListener);
  }
  
  protected aw b(IBinder paramIBinder)
  {
    return ax.a(paramIBinder);
  }
  
  public String d()
  {
    return "com.google.android.gms.common.service.START";
  }
  
  protected String e()
  {
    return "com.google.android.gms.common.internal.service.ICommonService";
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.as
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */