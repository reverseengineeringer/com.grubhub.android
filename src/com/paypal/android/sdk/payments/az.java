package com.paypal.android.sdk.payments;

import com.paypal.android.sdk.ed;
import com.paypal.android.sdk.ek;
import com.paypal.android.sdk.ez;
import com.paypal.android.sdk.g;

class az
{
  private static final String a = az.class.getSimpleName();
  
  static String a()
  {
    String str = ed.a().c().a();
    return String.format("https://www.paypal.com/signup/account?country.x=%s&locale.x=%s", new Object[] { str, ek.c(str) });
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.payments.az
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */