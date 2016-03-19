package com.braintreepayments.api;

import android.app.Activity;
import com.braintreepayments.api.exceptions.h;
import com.braintreepayments.api.exceptions.j;
import com.google.android.gms.wallet.Cart;

class c$10
  implements Runnable
{
  c$10(c paramc, Activity paramActivity, int paramInt, Cart paramCart, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3) {}
  
  public void run()
  {
    try
    {
      c.c(g).a(a, b, c, d, e, f);
      return;
    }
    catch (h localh)
    {
      g.a(localh);
      return;
    }
    catch (j localj)
    {
      g.a(localj);
    }
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.api.c.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */