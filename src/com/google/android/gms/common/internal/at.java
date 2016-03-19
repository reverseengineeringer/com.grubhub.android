package com.google.android.gms.common.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.l;

public class at<T extends IInterface>
  extends n<T>
{
  private final l<T> d;
  
  public at(Context paramContext, Looper paramLooper, int paramInt, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener, i parami, l paraml)
  {
    super(paramContext, paramLooper, paramInt, paramConnectionCallbacks, paramOnConnectionFailedListener, parami);
    d = paraml;
  }
  
  protected T a(IBinder paramIBinder)
  {
    return d.a(paramIBinder);
  }
  
  protected String d()
  {
    return d.a();
  }
  
  protected String e()
  {
    return d.b();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.at
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */