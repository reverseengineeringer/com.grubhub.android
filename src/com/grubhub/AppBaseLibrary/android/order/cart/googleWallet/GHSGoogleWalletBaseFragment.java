package com.grubhub.AppBaseLibrary.android.order.cart.googleWallet;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient.Builder;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.e;
import com.google.android.gms.wallet.g;
import com.google.android.gms.wallet.i;
import com.grubhub.AppBaseLibrary.android.GHSApplication;

public abstract class GHSGoogleWalletBaseFragment
  extends Fragment
  implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener
{
  protected GoogleApiClient a;
  private int b = 0;
  private a c;
  
  private void a()
  {
    if (GHSApplication.m())
    {
      if (e.a(getActivity()) == 0) {
        a.connect();
      }
    }
    else {
      return;
    }
    com.grubhub.AppBaseLibrary.android.utils.e.a.a.a("GOOGLE_PLAY_SERVICES_UNAVAILABLE");
  }
  
  private void b()
  {
    if (b < 3)
    {
      c.sendMessageDelayed(c.obtainMessage(1000), (1000.0D * Math.pow(2.0D, b)));
      b += 1;
      return;
    }
    com.grubhub.AppBaseLibrary.android.utils.e.a.a.a("GOOGLE_PLAY_SERVICES_CONNECTION_FAILED");
  }
  
  private int c()
  {
    if (GHSApplication.u()) {
      return 0;
    }
    return 1;
  }
  
  public void onConnected(Bundle paramBundle)
  {
    com.grubhub.AppBaseLibrary.android.utils.e.a.a("GoogleApiClient Status", "Connected");
  }
  
  public void onConnectionFailed(ConnectionResult paramConnectionResult)
  {
    com.grubhub.AppBaseLibrary.android.utils.e.a.d("GoogleApiClient Status", "Connection Failed");
    switch (paramConnectionResult.c())
    {
    default: 
      com.grubhub.AppBaseLibrary.android.utils.e.a.a.a("GOOGLE_PLAY_SERVICES_CONNECTION_FAILED");
      return;
    }
    b();
  }
  
  public void onConnectionSuspended(int paramInt)
  {
    com.grubhub.AppBaseLibrary.android.utils.e.a.a("GoogleApiClient Status", "Suspended");
    com.grubhub.AppBaseLibrary.android.utils.e.a.a.a("GOOGLE_PLAY_SERVICES_CONNECTION_SUSPENDED");
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a = new GoogleApiClient.Builder(getActivity()).addConnectionCallbacks(this).addOnConnectionFailedListener(this).addApi(g.a, new i().a(c()).b(1).a()).build();
    c = new a(this, this);
  }
  
  public void onStart()
  {
    super.onStart();
    a();
  }
  
  public void onStop()
  {
    super.onStop();
    a.disconnect();
    c.removeMessages(1000);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.googleWallet.GHSGoogleWalletBaseFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */