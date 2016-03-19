package com.google.android.gms.wallet;

import android.app.Activity;
import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.c;
import com.google.android.gms.common.api.j;
import com.google.android.gms.common.internal.aq;
import com.google.android.gms.common.internal.i;
import com.google.android.gms.d.du;
import com.google.android.gms.d.dv;
import com.google.android.gms.d.dz;
import com.google.android.gms.d.ea;
import com.google.android.gms.wallet.firstparty.a;

public final class g
{
  public static final c<h> a = new c("Wallet.API", f, e, new Scope[0]);
  public static final f b = new du();
  public static final com.google.android.gms.wallet.wobs.k c = new ea();
  public static final a d = new dz();
  private static final j<dv> e = new j();
  private static final com.google.android.gms.common.api.k<dv, h> f = new com.google.android.gms.common.api.k()
  {
    public int a()
    {
      return Integer.MAX_VALUE;
    }
    
    public dv a(Context paramAnonymousContext, Looper paramAnonymousLooper, i paramAnonymousi, h paramAnonymoush, GoogleApiClient.ConnectionCallbacks paramAnonymousConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramAnonymousOnConnectionFailedListener)
    {
      aq.b(paramAnonymousContext instanceof Activity, "An Activity must be used for Wallet APIs");
      paramAnonymousContext = (Activity)paramAnonymousContext;
      if (paramAnonymoush != null) {}
      for (;;)
      {
        return new dv(paramAnonymousContext, paramAnonymousLooper, paramAnonymousConnectionCallbacks, paramAnonymousOnConnectionFailedListener, a, paramAnonymousi.a(), b);
        paramAnonymoush = new h(null);
      }
    }
  };
  
  @Deprecated
  public static void a(GoogleApiClient paramGoogleApiClient, int paramInt)
  {
    b.a(paramGoogleApiClient, paramInt);
  }
  
  @Deprecated
  public static void a(GoogleApiClient paramGoogleApiClient, FullWalletRequest paramFullWalletRequest, int paramInt)
  {
    b.a(paramGoogleApiClient, paramFullWalletRequest, paramInt);
  }
  
  @Deprecated
  public static void a(GoogleApiClient paramGoogleApiClient, MaskedWalletRequest paramMaskedWalletRequest, int paramInt)
  {
    b.a(paramGoogleApiClient, paramMaskedWalletRequest, paramInt);
  }
  
  @Deprecated
  public static void a(GoogleApiClient paramGoogleApiClient, String paramString1, String paramString2, int paramInt)
  {
    b.a(paramGoogleApiClient, paramString1, paramString2, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */