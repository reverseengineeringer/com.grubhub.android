package com.paypal.android.sdk.payments;

import java.util.Calendar;
import java.util.Date;
import java.util.Timer;

final class bu
  implements am
{
  bu(PayPalProfileSharingActivity paramPayPalProfileSharingActivity) {}
  
  public final void a()
  {
    Date localDate = Calendar.getInstance().getTime();
    if (PayPalProfileSharingActivity.d(a).compareTo(localDate) > 0)
    {
      long l = PayPalProfileSharingActivity.d(a).getTime() - localDate.getTime();
      PayPalProfileSharingActivity.a();
      new StringBuilder("Delaying ").append(l).append(" miliseconds so user doesn't see flicker.");
      PayPalProfileSharingActivity.a(a, new Timer());
      PayPalProfileSharingActivity.e(a).schedule(new bv(this), l);
      return;
    }
    PayPalProfileSharingActivity.c(a);
  }
  
  public final void a(an paraman)
  {
    by.a(a, paraman, 1, 2, 3);
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.payments.bu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */