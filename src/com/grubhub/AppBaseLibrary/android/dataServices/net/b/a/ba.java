package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSPaymentTokenEnum;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2PaymentTokenModelDTO;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIPaymentTokenModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.d;
import com.grubhub.AppBaseLibrary.android.dataServices.net.k;
import com.grubhub.AppBaseLibrary.android.utils.f;
import java.util.HashMap;
import java.util.Map;

public class ba
  extends a<ba, GHSIPaymentTokenModel, Void>
{
  protected GHSPaymentTokenEnum l;
  
  public ba(bb parambb)
  {
    super(parambb);
    l = bb.a(parambb);
  }
  
  protected void b()
  {
    if (g == null) {
      g = new com.grubhub.AppBaseLibrary.android.dataServices.net.a.a(d, e);
    }
    g.a("payments");
    g.a("client_token");
  }
  
  protected void c()
  {
    d locald = new d(g.toString(), h(), new k(), V2PaymentTokenModelDTO.class, a, i, j);
    locald.setTag(c);
    h = locald;
  }
  
  protected boolean d()
  {
    return (super.d()) && (f.b(e)) && (l != null);
  }
  
  protected Map<String, String> e()
  {
    Map localMap = super.e();
    if (l != null) {
      localMap.put("payment_type", l.toString());
    }
    return localMap;
  }
  
  protected Map<String, Object> h()
  {
    HashMap localHashMap = new HashMap();
    if (l != null) {
      localHashMap.put("payment_type", l.toString());
    }
    return localHashMap;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.ba
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */