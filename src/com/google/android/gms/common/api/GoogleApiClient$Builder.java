package com.google.android.gms.common.api;

import android.accounts.Account;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import com.google.android.gms.common.internal.aq;
import com.google.android.gms.common.internal.i;
import com.google.android.gms.common.internal.j;
import com.google.android.gms.d.ch;
import com.google.android.gms.d.cj;
import com.google.android.gms.d.ck;
import com.google.android.gms.d.cl;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public final class GoogleApiClient$Builder
{
  private final Context mContext;
  private Account zzMY;
  private String zzOd;
  private String zzOe;
  private android.support.v4.app.q zzWA;
  private int zzWB = -1;
  private int zzWC = -1;
  private GoogleApiClient.OnConnectionFailedListener zzWD;
  private k<? extends cj, ck> zzWE;
  private final Set<GoogleApiClient.ConnectionCallbacks> zzWF = new HashSet();
  private final Set<GoogleApiClient.OnConnectionFailedListener> zzWG = new HashSet();
  private cl zzWH = new cl();
  private Looper zzWt;
  private final Set<Scope> zzWv = new HashSet();
  private int zzWw;
  private View zzWx;
  private final Map<c<?>, j> zzWy = new HashMap();
  private final Map<c<?>, d> zzWz = new HashMap();
  
  public GoogleApiClient$Builder(Context paramContext)
  {
    mContext = paramContext;
    zzWt = paramContext.getMainLooper();
    zzOe = paramContext.getPackageName();
    zzOd = paramContext.getClass().getName();
    zzWE = ch.c;
  }
  
  public GoogleApiClient$Builder(Context paramContext, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    this(paramContext);
    aq.a(paramConnectionCallbacks, "Must provide a connected listener");
    zzWF.add(paramConnectionCallbacks);
    aq.a(paramOnConnectionFailedListener, "Must provide a connection failed listener");
    zzWG.add(paramOnConnectionFailedListener);
  }
  
  private void zza(c<?> paramc, int paramInt, Scope... paramVarArgs)
  {
    boolean bool = true;
    int i = 0;
    if (paramInt == 1) {}
    HashSet localHashSet;
    for (;;)
    {
      localHashSet = new HashSet(paramc.c());
      int j = paramVarArgs.length;
      paramInt = i;
      while (paramInt < j)
      {
        localHashSet.add(paramVarArgs[paramInt]);
        paramInt += 1;
      }
      if (paramInt != 2) {
        break;
      }
      bool = false;
    }
    throw new IllegalArgumentException("Invalid resolution mode: '" + paramInt + "', use a constant from GoogleApiClient.ResolutionMode");
    zzWy.put(paramc, new j(localHashSet, bool));
  }
  
  private GoogleApiClient zzmy()
  {
    zzm localzzm = zzm.a(zzWA);
    zzg localzzg = new zzg(mContext.getApplicationContext(), zzWt, zzmx(), zzWE, zzWz, zzWF, zzWG, zzWB, -1);
    localzzm.a(zzWB, localzzg, zzWD);
    return localzzg;
  }
  
  private GoogleApiClient zzmz()
  {
    zzn localzzn = zzn.a(zzWA);
    GoogleApiClient localGoogleApiClient = localzzn.a(zzWC);
    Object localObject = localGoogleApiClient;
    if (localGoogleApiClient == null) {
      localObject = new zzg(mContext.getApplicationContext(), zzWt, zzmx(), zzWE, zzWz, zzWF, zzWG, -1, zzWC);
    }
    localzzn.a(zzWC, (GoogleApiClient)localObject, zzWD);
    return (GoogleApiClient)localObject;
  }
  
  public Builder addApi(c<? extends g> paramc)
  {
    zzWz.put(paramc, null);
    zzWv.addAll(paramc.c());
    return this;
  }
  
  public <O extends e> Builder addApi(c<O> paramc, O paramO)
  {
    aq.a(paramO, "Null options are not permitted for this Api");
    zzWz.put(paramc, paramO);
    zzWv.addAll(paramc.c());
    return this;
  }
  
  public <O extends e> Builder addApiIfAvailable(c<O> paramc, O paramO, Scope... paramVarArgs)
  {
    aq.a(paramO, "Null options are not permitted for this Api");
    zzWz.put(paramc, paramO);
    zza(paramc, 1, paramVarArgs);
    return this;
  }
  
  public Builder addApiIfAvailable(c<? extends g> paramc, Scope... paramVarArgs)
  {
    zzWz.put(paramc, null);
    zza(paramc, 1, paramVarArgs);
    return this;
  }
  
  public Builder addConnectionCallbacks(GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    zzWF.add(paramConnectionCallbacks);
    return this;
  }
  
  public Builder addOnConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    zzWG.add(paramOnConnectionFailedListener);
    return this;
  }
  
  public Builder addScope(Scope paramScope)
  {
    zzWv.add(paramScope);
    return this;
  }
  
  public GoogleApiClient build()
  {
    if (!zzWz.isEmpty()) {}
    for (boolean bool = true;; bool = false)
    {
      aq.b(bool, "must call addApi() to add at least one API");
      if (zzWB < 0) {
        break;
      }
      return zzmy();
    }
    if (zzWC >= 0) {
      return zzmz();
    }
    return new zzg(mContext, zzWt, zzmx(), zzWE, zzWz, zzWF, zzWG, -1, -1);
  }
  
  public Builder enableAutoManage(android.support.v4.app.q paramq, int paramInt, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    if (paramInt >= 0) {}
    for (boolean bool = true;; bool = false)
    {
      aq.b(bool, "clientId must be non-negative");
      zzWB = paramInt;
      zzWA = ((android.support.v4.app.q)aq.a(paramq, "Null activity is not permitted."));
      zzWD = paramOnConnectionFailedListener;
      return this;
    }
  }
  
  public Builder requestServerAuthCode(String paramString, q paramq)
  {
    zzWH.a(paramString, paramq);
    return this;
  }
  
  public Builder setAccountName(String paramString)
  {
    if (paramString == null) {}
    for (paramString = null;; paramString = new Account(paramString, "com.google"))
    {
      zzMY = paramString;
      return this;
    }
  }
  
  public Builder setGravityForPopups(int paramInt)
  {
    zzWw = paramInt;
    return this;
  }
  
  public Builder setHandler(Handler paramHandler)
  {
    aq.a(paramHandler, "Handler must not be null");
    zzWt = paramHandler.getLooper();
    return this;
  }
  
  public Builder setViewForPopups(View paramView)
  {
    zzWx = paramView;
    return this;
  }
  
  public Builder useDefaultAccount()
  {
    return setAccountName("<<default account>>");
  }
  
  public i zzmx()
  {
    return new i(zzMY, zzWv, zzWy, zzWw, zzWx, zzOe, zzOd, zzWH.a());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.GoogleApiClient.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */