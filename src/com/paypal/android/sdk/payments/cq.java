package com.paypal.android.sdk.payments;

import android.widget.LinearLayout;
import com.paypal.android.sdk.ek;
import com.paypal.android.sdk.em;
import com.paypal.android.sdk.en;
import com.paypal.android.sdk.fj;

final class cq
  implements ak
{
  cq(ck paramck) {}
  
  public final void a(an paraman)
  {
    a.dismissDialog(2);
    if (b.equals("invalid_nonce"))
    {
      a.c.h.setEnabled(false);
      by.a(a, ek.a(em.aL), 4);
      return;
    }
    a.c.h.setEnabled(true);
    by.a(a, ek.a(b), 1);
  }
  
  public final void a(Object paramObject)
  {
    if ((paramObject instanceof fj))
    {
      ck.a(a, (fj)paramObject);
      return;
    }
    ck.b(a);
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.payments.cq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */