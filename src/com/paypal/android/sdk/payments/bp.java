package com.paypal.android.sdk.payments;

import java.util.Calendar;
import java.util.Date;
import java.util.Timer;

final class bp
  implements am
{
  bp(s params) {}
  
  public final void a()
  {
    Date localDate = Calendar.getInstance().getTime();
    if (s.d(a).compareTo(localDate) > 0)
    {
      long l = s.d(a).getTime() - localDate.getTime();
      s.a();
      new StringBuilder("Delaying ").append(l).append(" milliseconds so user doesn't see flicker.");
      s.a(a, new Timer());
      s.f(a).schedule(new bq(this), l);
      return;
    }
    s.e(a);
  }
  
  public final void a(an paraman)
  {
    by.a(a, paraman, 1, 2, 3);
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.payments.bp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */