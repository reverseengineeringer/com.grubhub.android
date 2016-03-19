package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import com.google.gson.Gson;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2CartDTO;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2CartPaymentDataModelDTO;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel.PaymentTypes;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.d;
import com.grubhub.AppBaseLibrary.android.dataServices.net.k;
import com.grubhub.AppBaseLibrary.android.utils.f;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class l
  extends a<l, GHSICartDataModel, Void>
{
  protected String l;
  protected V2CartPaymentDataModelDTO m;
  
  public l(m paramm)
  {
    super(paramm);
    l = m.a(paramm);
    m = new V2CartPaymentDataModelDTO(m.b(paramm));
  }
  
  private boolean i()
  {
    return (m != null) && (m.getType() != null);
  }
  
  protected void b()
  {
    if (g == null) {
      g = new com.grubhub.AppBaseLibrary.android.dataServices.net.a.a(d, e);
    }
    g.a("espresso");
    g.a("carts");
    g.a(l);
    g.a("payments");
  }
  
  protected void c()
  {
    d locald = new d(g.toString(), h(), new k(), V2CartDTO.class, a, i, j);
    locald.setTag(c);
    h = locald;
  }
  
  protected boolean d()
  {
    return (super.d()) && (f.b(l)) && (f.b(e)) && (i());
  }
  
  protected Map<String, String> e()
  {
    Map localMap = super.e();
    localMap.put("cartId", l);
    Gson localGson = new Gson();
    Iterator localIterator = h().entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localMap.put(localEntry.getKey(), localGson.toJson(localEntry.getValue()));
    }
    return localMap;
  }
  
  protected Map<String, Object> h()
  {
    HashMap localHashMap = new HashMap();
    if (m != null)
    {
      localHashMap.put("payment_id", m.getPaymentId());
      if (m.getType() != null) {
        localHashMap.put("type", m.getType().toString());
      }
      if (m.getAmount() != null) {
        localHashMap.put("amount", m.getAmount());
      }
    }
    return localHashMap;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */