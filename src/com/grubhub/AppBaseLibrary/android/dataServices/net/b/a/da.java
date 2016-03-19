package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSPaymentTokenEnum;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2PaymentResourceCreatedDTO;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIPaymentResourceCreatedDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.d;
import com.grubhub.AppBaseLibrary.android.dataServices.net.k;
import com.grubhub.AppBaseLibrary.android.utils.f;
import java.util.HashMap;
import java.util.Map;

public class da
  extends a<da, GHSIPaymentResourceCreatedDataModel, Void>
{
  protected String l;
  protected String m;
  protected boolean n;
  protected GHSPaymentTokenEnum o;
  
  public da(db paramdb)
  {
    super(paramdb);
    l = db.a(paramdb);
    m = db.b(paramdb);
    n = db.c(paramdb);
    o = db.d(paramdb);
  }
  
  protected void b()
  {
    if (g == null) {
      g = new com.grubhub.AppBaseLibrary.android.dataServices.net.a.a(d, e);
    }
    g.a("payments");
    g.a(o.toString().toLowerCase());
    g.a(l);
  }
  
  protected void c()
  {
    d locald = new d(g.toString(), h(), new k(), V2PaymentResourceCreatedDTO.class, a, i, j);
    locald.setTag(c);
    h = locald;
  }
  
  protected boolean d()
  {
    return (super.d()) && (f.b(l)) && (f.b(m)) && (o != null) && (f.b(e));
  }
  
  protected Map<String, String> e()
  {
    Map localMap = super.e();
    localMap.put("paymentNonce", m);
    localMap.put("paymentId", l);
    localMap.put("isSingleUse", Boolean.toString(n));
    if (o != null) {
      localMap.put("paymentType", o.toString().toLowerCase());
    }
    return localMap;
  }
  
  protected Map<String, Object> h()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("payment_nonce", m);
    if (!n) {}
    for (boolean bool = true;; bool = false)
    {
      localHashMap.put("vaulted", Boolean.valueOf(bool));
      localHashMap.put("type", o.toString());
      return localHashMap;
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.da
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */