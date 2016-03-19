package com.paypal.android.sdk.payments;

import android.content.Intent;
import android.util.Log;

abstract class d
{
  private Intent a;
  private PayPalConfiguration b;
  
  d(Intent paramIntent, PayPalConfiguration paramPayPalConfiguration)
  {
    a = paramIntent;
    b = paramPayPalConfiguration;
    if (!a.hasExtra("com.paypal.android.sdk.paypalConfiguration")) {
      Log.w(a(), "Please add PayPalService.EXTRA_PAYPAL_CONFIGURATION to this activity for restart resiliency.");
    }
  }
  
  abstract String a();
  
  protected final void a(boolean paramBoolean, String paramString)
  {
    if (!paramBoolean) {
      Log.e(a(), paramString + " is invalid.  Please see the docs.");
    }
  }
  
  final Intent b()
  {
    return a;
  }
  
  final PayPalConfiguration c()
  {
    return b;
  }
  
  protected final boolean d()
  {
    if (!b.n())
    {
      Log.e(a(), "Service extra invalid.");
      return false;
    }
    return true;
  }
  
  abstract boolean e();
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.payments.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */