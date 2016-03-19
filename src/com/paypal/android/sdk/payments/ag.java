package com.paypal.android.sdk.payments;

import android.content.Context;
import android.content.Intent;
import com.paypal.android.sdk.ck;
import com.paypal.android.sdk.cn;
import com.paypal.android.sdk.co;
import com.paypal.android.sdk.db;
import com.paypal.android.sdk.dd;
import java.util.Iterator;
import java.util.List;

final class ag
  implements Runnable
{
  ag(Context paramContext) {}
  
  public final void run()
  {
    PayPalService.v();
    Object localObject = a;
    new cg();
    localObject = new ck((Context)localObject, "AndroidBasePrefs");
    db.a((ck)localObject);
    dd.a((ck)localObject);
    Iterator localIterator = new ah(this).iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      co localco = new co((ck)localObject, str);
      localco.a();
      localco.b();
      cn.a(str);
    }
    localObject = new Intent("com.paypal.android.sdk.clearAllUserData");
    e.a(a).a((Intent)localObject);
    PayPalService.v();
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.payments.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */