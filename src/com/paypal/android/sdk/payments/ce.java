package com.paypal.android.sdk.payments;

import com.paypal.android.sdk.ad;
import com.paypal.android.sdk.ag;
import com.paypal.android.sdk.bQ;
import com.paypal.android.sdk.ck;
import com.paypal.android.sdk.cm;
import com.paypal.android.sdk.eh;
import java.util.Map;

final class ce
  extends cc
{
  public ce(PayPalService paramPayPalService)
  {
    super(new ar(paramPayPalService));
  }
  
  protected final void a(String paramString, Map paramMap)
  {
    if (!aaa.b())
    {
      aaa = new bQ();
      paramMap.put("v49", paramString);
      paramMap.put("v51", a().c().d().d());
      paramMap.put("v52", eh.a + " " + eh.d);
      paramMap.put("v53", eh.e);
    }
    paramString = new ag(aaa.a(), paramMap, eh.c, eh.b, true);
    a().a(paramString);
  }
  
  protected final String b()
  {
    return "mpl";
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.payments.ce
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */