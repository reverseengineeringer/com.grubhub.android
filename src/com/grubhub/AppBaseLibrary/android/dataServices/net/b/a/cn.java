package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2TokenizeCreditCardDTO;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSITokenizeCreditCardDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.d;
import com.grubhub.AppBaseLibrary.android.dataServices.net.k;
import com.grubhub.AppBaseLibrary.android.utils.f;
import java.util.HashMap;
import java.util.Map;

public class cn
  extends a<cn, GHSITokenizeCreditCardDataModel, Void>
{
  protected String l;
  protected String m;
  protected String n;
  protected String o;
  protected String p;
  protected String q;
  protected boolean r;
  protected String s;
  
  public cn(co paramco)
  {
    super(paramco);
    l = co.a(paramco);
    m = co.b(paramco);
    n = co.c(paramco);
    o = co.d(paramco);
    p = co.e(paramco);
    q = co.f(paramco);
    s = co.g(paramco);
    r = co.h(paramco);
  }
  
  protected void b()
  {
    if (g == null) {
      g = new com.grubhub.AppBaseLibrary.android.dataServices.net.a.a(d);
    }
    g.a("tokenizer");
    g.a(l);
    g.a("credit_card");
  }
  
  protected void c()
  {
    d locald = new d(g.toString(), h(), new k(), V2TokenizeCreditCardDTO.class, a, i, j);
    locald.setTag(c);
    h = locald;
  }
  
  protected boolean d()
  {
    return (super.d()) && (f.b(l)) && (f.b(m)) && (f.b(n)) && (f.b(o)) && (f.b(p)) && (f.b(q));
  }
  
  protected Map<String, String> e()
  {
    Map localMap = super.e();
    localMap.put("paymentToken", l);
    localMap.put("expirationMonth", m);
    localMap.put("creditCardNumber", n);
    localMap.put("cvv", o);
    localMap.put("zipCode", p);
    localMap.put("expirationYear", q);
    localMap.put("cardHolderName", s);
    localMap.put("isSingleUse", Boolean.toString(r));
    return localMap;
  }
  
  protected Map<String, Object> h()
  {
    HashMap localHashMap = new HashMap();
    if (f.b(s)) {
      localHashMap.put("card_holder_name", s);
    }
    localHashMap.put("expiration_month", m);
    localHashMap.put("credit_card_number", n);
    localHashMap.put("cvv", o);
    localHashMap.put("cc_zipcode", p);
    localHashMap.put("expiration_year", q);
    if (!r) {}
    for (boolean bool = true;; bool = false)
    {
      localHashMap.put("vaulted", Boolean.valueOf(bool));
      return localHashMap;
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.cn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */