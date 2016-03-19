package com.paypal.android.sdk.payments;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

final class aC
  extends BroadcastReceiver
{
  aC(PayPalService paramPayPalService) {}
  
  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getAction().equals("com.paypal.android.sdk.clearAllUserData"))
    {
      a.h();
      Log.w("paypal.sdk", "active service user data cleared");
    }
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.payments.aC
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */