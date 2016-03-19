package com.paypal.android.sdk.payments;

import com.paypal.android.sdk.ed;
import com.paypal.android.sdk.ek;
import com.paypal.android.sdk.ez;
import com.paypal.android.sdk.ft;
import com.paypal.android.sdk.g;

class j
{
  private static final String a = j.class.getSimpleName();
  
  static String a()
  {
    String str1 = ed.a().c().a();
    if ((ft.b(str1)) || (str1.equalsIgnoreCase("US"))) {
      return "https://www.paypal.com/webapps/accountrecovery/passwordrecovery";
    }
    String str2 = ek.c(str1);
    return String.format("https://www.paypal.com/%s/cgi-bin/webscr?cmd=_account-recovery&from=%s&locale.x=%s", new Object[] { str1.toLowerCase(), "PayPalMPL", str2 });
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.payments.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */