package com.paypal.android.sdk.payments;

import com.paypal.android.sdk.ad;
import com.paypal.android.sdk.ag;
import com.paypal.android.sdk.cm;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.TimeZone;

final class ar
{
  private PayPalService a;
  private String b;
  
  public ar(PayPalService paramPayPalService)
  {
    a = paramPayPalService;
    b = Integer.toString(new GregorianCalendar().getTimeZone().getRawOffset() / 1000 / 60);
  }
  
  public final cm a()
  {
    return a.d();
  }
  
  public final void a(ag paramag)
  {
    a.a(paramag);
  }
  
  public final String b()
  {
    return a.g();
  }
  
  public final ad c()
  {
    return a.c();
  }
  
  public final String d()
  {
    return a.f();
  }
  
  public final String e()
  {
    return b;
  }
  
  public final String f()
  {
    return a.s();
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.payments.ar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */