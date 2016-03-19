package com.paypal.android.sdk.payments;

import com.paypal.android.sdk.ff;
import com.paypal.android.sdk.fj;

class af
{
  private static final String a = af.class.getSimpleName();
  private an b;
  private Object c;
  private ak d;
  
  private void b(ak paramak)
  {
    paramak.a(c);
    if ((!(c instanceof ff)) && (!(c instanceof fj))) {}
    for (int i = 1;; i = 0)
    {
      c = null;
      if (i != 0) {
        d = null;
      }
      return;
    }
  }
  
  final void a()
  {
    if (c == null) {
      c = "success";
    }
    if (d != null) {
      b(d);
    }
  }
  
  final void a(ak paramak)
  {
    if (c != null)
    {
      b(paramak);
      return;
    }
    if (b != null)
    {
      paramak.a(b);
      b = null;
      d = null;
      return;
    }
    d = paramak;
  }
  
  final void a(an paraman)
  {
    if (d != null)
    {
      d.a(paraman);
      return;
    }
    b = paraman;
  }
  
  final void a(Object paramObject)
  {
    c = paramObject;
  }
  
  final void b()
  {
    d = null;
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.payments.af
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */