package com.paypal.android.sdk.payments;

import android.content.Context;
import com.paypal.android.sdk.cj;
import com.paypal.android.sdk.r;

class ci
{
  private static final String a = ci.class.getSimpleName();
  
  static boolean a(Context paramContext, PayPalService paramPayPalService)
  {
    boolean bool = false;
    if (cj.e(paramPayPalService.f())) {
      new StringBuilder("Is mock or sandbox:").append(paramPayPalService.f());
    }
    for (;;)
    {
      new StringBuilder("returning isValid:").append(bool);
      return bool;
      if (paramPayPalService.t()) {
        bool = new r().a(paramContext, paramPayPalService.u());
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.payments.ci
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */