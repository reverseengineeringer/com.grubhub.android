package com.google.android.gms.d;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.c;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.j;
import com.google.android.gms.common.api.k;
import com.google.android.gms.common.internal.i;

public final class am
{
  public static final j<as> a = new j();
  public static final c<f> b = new c("Common.API", d, a, new Scope[0]);
  public static final an c = new ao();
  private static final k<as, f> d = new k()
  {
    public int a()
    {
      return Integer.MAX_VALUE;
    }
    
    public as a(Context paramAnonymousContext, Looper paramAnonymousLooper, i paramAnonymousi, f paramAnonymousf, GoogleApiClient.ConnectionCallbacks paramAnonymousConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramAnonymousOnConnectionFailedListener)
    {
      return new as(paramAnonymousContext, paramAnonymousLooper, paramAnonymousConnectionCallbacks, paramAnonymousOnConnectionFailedListener);
    }
  };
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.am
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */