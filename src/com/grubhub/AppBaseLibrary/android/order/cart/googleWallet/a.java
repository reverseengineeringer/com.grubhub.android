package com.grubhub.AppBaseLibrary.android.order.cart.googleWallet;

import android.os.Handler;
import android.os.Message;
import com.google.android.gms.common.api.GoogleApiClient;
import java.lang.ref.WeakReference;

class a
  extends Handler
{
  private WeakReference<GHSGoogleWalletBaseFragment> b;
  
  public a(GHSGoogleWalletBaseFragment paramGHSGoogleWalletBaseFragment1, GHSGoogleWalletBaseFragment paramGHSGoogleWalletBaseFragment2)
  {
    b = new WeakReference(paramGHSGoogleWalletBaseFragment2);
  }
  
  public void handleMessage(Message paramMessage)
  {
    if (what == 1000)
    {
      paramMessage = (GHSGoogleWalletBaseFragment)b.get();
      if (paramMessage != null) {
        a.connect();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.googleWallet.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */