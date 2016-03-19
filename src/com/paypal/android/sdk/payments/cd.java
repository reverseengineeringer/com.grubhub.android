package com.paypal.android.sdk.payments;

import com.paypal.android.sdk.ad;
import com.paypal.android.sdk.ag;
import com.paypal.android.sdk.cA;
import com.paypal.android.sdk.ck;
import com.paypal.android.sdk.cm;
import com.paypal.android.sdk.eh;
import com.paypal.android.sdk.ej;
import com.paypal.android.sdk.ft;
import java.util.Map;

final class cd
  extends cc
{
  public cd(PayPalService paramPayPalService)
  {
    super(new ar(paramPayPalService));
  }
  
  protected final void a(String paramString, Map paramMap)
  {
    if (!aab.b()) {
      aab = new cA();
    }
    paramMap.put("v49", paramString);
    paramMap.put("v51", a().c().d().d());
    paramMap.put("v52", eh.a + " " + eh.d);
    paramMap.put("v53", eh.e);
    paramMap.put("clid", a().b());
    paramMap.put("apid", a().c().d().c() + "|" + paramString + "|" + a().f());
    paramString = new ag(aab.a(), paramMap, eh.c, eh.b, false);
    a().a(paramString);
  }
  
  protected final void a(Map paramMap, ej paramej, String paramString1, String paramString2)
  {
    paramMap.put("g", a().e());
    paramMap.put("vers", eh.a + ":" + a().d() + ":");
    paramMap.put("srce", "msdk");
    paramMap.put("sv", "mobile");
    paramMap.put("bchn", "msdk");
    paramMap.put("adte", "FALSE");
    paramMap.put("bzsr", "mobile");
    if (ft.c(paramString1)) {
      paramMap.put("calc", paramString1);
    }
    if (ft.c(paramString2)) {
      paramMap.put("prid", paramString2);
    }
    if (paramej.b()) {}
    for (paramej = "cl";; paramej = "im")
    {
      paramMap.put("e", paramej);
      return;
    }
  }
  
  protected final String b()
  {
    return "msdk";
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.payments.cd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */