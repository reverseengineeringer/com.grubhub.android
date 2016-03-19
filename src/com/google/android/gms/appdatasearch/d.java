package com.google.android.gms.appdatasearch;

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
import com.google.android.gms.d.ad;
import com.google.android.gms.d.af;

public final class d
{
  public static final j<ad> a = new j();
  public static final c<f> b = new c("AppDataSearch.LIGHTWEIGHT_API", d, a, new Scope[0]);
  public static final n c = new af();
  private static final k<ad, f> d = new k()
  {
    public int a()
    {
      return Integer.MAX_VALUE;
    }
    
    public ad a(Context paramAnonymousContext, Looper paramAnonymousLooper, i paramAnonymousi, f paramAnonymousf, GoogleApiClient.ConnectionCallbacks paramAnonymousConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramAnonymousOnConnectionFailedListener)
    {
      return new ad(paramAnonymousContext, paramAnonymousLooper, paramAnonymousConnectionCallbacks, paramAnonymousOnConnectionFailedListener);
    }
  };
}

/* Location:
 * Qualified Name:     com.google.android.gms.appdatasearch.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */