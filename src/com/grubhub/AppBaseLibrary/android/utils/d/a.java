package com.grubhub.AppBaseLibrary.android.utils.d;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient.Builder;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.e;
import com.google.android.gms.wallet.g;
import com.google.android.gms.wallet.i;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;

public class a
  implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener
{
  protected GoogleApiClient a;
  private int b = 0;
  private c c;
  private Activity d;
  private b e;
  
  public a(Activity paramActivity, b paramb)
  {
    d = paramActivity;
    e = paramb;
    a = new GoogleApiClient.Builder(d).addConnectionCallbacks(this).addOnConnectionFailedListener(this).addApi(g.a, new i().a(e()).b(1).a()).build();
    c = new c(this, this);
  }
  
  private void c()
  {
    if (GHSApplication.m())
    {
      if (e.a(d) == 0) {
        a.connect();
      }
    }
    else {
      return;
    }
    com.grubhub.AppBaseLibrary.android.utils.e.a.a.a("GOOGLE_PLAY_SERVICES_UNAVAILABLE");
  }
  
  private void d()
  {
    if (b < 3)
    {
      c.sendMessageDelayed(c.obtainMessage(1000), (1000.0D * Math.pow(2.0D, b)));
      b += 1;
      return;
    }
    com.grubhub.AppBaseLibrary.android.utils.e.a.a.a("GOOGLE_PLAY_SERVICES_CONNECTION_FAILED");
  }
  
  private int e()
  {
    if (GHSApplication.u()) {
      return 0;
    }
    return 1;
  }
  
  public void a()
  {
    if ((!a.isConnected()) && (!a.isConnecting())) {
      c();
    }
  }
  
  public void a(Context paramContext, GHSICartDataModel paramGHSICartDataModel, com.braintreepayments.api.c paramc, int paramInt)
  {
    g.a(a, d.a(paramContext, paramGHSICartDataModel, paramc), paramInt);
  }
  
  public void a(String paramString, GHSICartDataModel paramGHSICartDataModel, int paramInt)
  {
    g.a(a, d.a(paramString, paramGHSICartDataModel), paramInt);
  }
  
  public void a(String paramString1, String paramString2, int paramInt)
  {
    g.a(a, paramString1, paramString2, paramInt);
  }
  
  public void b()
  {
    a.disconnect();
    c.removeMessages(1000);
  }
  
  public void onConnected(Bundle paramBundle)
  {
    com.grubhub.AppBaseLibrary.android.utils.e.a.a("GoogleApiClient Status", "Connected");
    if (e != null) {
      e.a();
    }
  }
  
  public void onConnectionFailed(ConnectionResult paramConnectionResult)
  {
    com.grubhub.AppBaseLibrary.android.utils.e.a.d("GoogleApiClient Status", "Connection Failed");
    switch (paramConnectionResult.c())
    {
    default: 
      com.grubhub.AppBaseLibrary.android.utils.e.a.a.a("GOOGLE_PLAY_SERVICES_CONNECTION_FAILED");
    }
    for (;;)
    {
      if (e != null) {
        e.c();
      }
      return;
      d();
    }
  }
  
  public void onConnectionSuspended(int paramInt)
  {
    com.grubhub.AppBaseLibrary.android.utils.e.a.a("GoogleApiClient Status", "Suspended");
    com.grubhub.AppBaseLibrary.android.utils.e.a.a.a("GOOGLE_PLAY_SERVICES_CONNECTION_SUSPENDED");
    if (e != null) {
      e.b();
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.utils.d.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */