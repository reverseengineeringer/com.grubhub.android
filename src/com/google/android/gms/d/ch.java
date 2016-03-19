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
import com.google.android.gms.signin.internal.l;
import com.google.android.gms.signin.internal.m;
import java.util.concurrent.Executors;

public final class ch
{
  public static final j<m> a = new j();
  public static final j<m> b = new j();
  public static final k<m, ck> c = new k()
  {
    public int a()
    {
      return Integer.MAX_VALUE;
    }
    
    public m a(Context paramAnonymousContext, Looper paramAnonymousLooper, i paramAnonymousi, ck paramAnonymousck, GoogleApiClient.ConnectionCallbacks paramAnonymousConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramAnonymousOnConnectionFailedListener)
    {
      if (paramAnonymousck == null) {
        paramAnonymousck = ck.a;
      }
      for (;;)
      {
        return new m(paramAnonymousContext, paramAnonymousLooper, true, paramAnonymousi, paramAnonymousck, paramAnonymousConnectionCallbacks, paramAnonymousOnConnectionFailedListener, Executors.newSingleThreadExecutor());
      }
    }
  };
  static final k<m, f> d = new k()
  {
    public int a()
    {
      return Integer.MAX_VALUE;
    }
    
    public m a(Context paramAnonymousContext, Looper paramAnonymousLooper, i paramAnonymousi, f paramAnonymousf, GoogleApiClient.ConnectionCallbacks paramAnonymousConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramAnonymousOnConnectionFailedListener)
    {
      return new m(paramAnonymousContext, paramAnonymousLooper, false, paramAnonymousi, ck.a, paramAnonymousConnectionCallbacks, paramAnonymousOnConnectionFailedListener, Executors.newSingleThreadExecutor());
    }
  };
  public static final c<ck> e = new c("SignIn.API", c, a, new Scope[0]);
  public static final c<f> f = new c("SignIn.INTERNAL_API", d, b, new Scope[0]);
  public static final ci g = new l();
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.ch
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */