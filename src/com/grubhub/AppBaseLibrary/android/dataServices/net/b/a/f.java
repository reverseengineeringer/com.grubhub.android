package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2CartDTO;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.d;
import com.grubhub.AppBaseLibrary.android.dataServices.net.k;
import java.util.HashMap;
import java.util.Map;

public class f
  extends a<f, GHSICartDataModel, Void>
{
  protected String l;
  protected String m;
  protected String n;
  
  public f(g paramg)
  {
    super(paramg);
    l = g.a(paramg);
    m = g.b(paramg);
    n = g.c(paramg);
  }
  
  protected void b()
  {
    if (g == null) {
      g = new com.grubhub.AppBaseLibrary.android.dataServices.net.a.a(d, e);
    }
    g.a("espresso");
    g.a("carts");
    g.a(l);
    g.a("coupons");
  }
  
  protected void c()
  {
    d locald = new d(g.toString(), h(), new k(), V2CartDTO.class, a, i, j);
    locald.setTag(c);
    h = locald;
  }
  
  protected boolean d()
  {
    return (super.d()) && (com.grubhub.AppBaseLibrary.android.utils.f.b(l)) && (com.grubhub.AppBaseLibrary.android.utils.f.b(e)) && (com.grubhub.AppBaseLibrary.android.utils.f.b(m)) && (com.grubhub.AppBaseLibrary.android.utils.f.b(n));
  }
  
  protected Map<String, String> e()
  {
    Map localMap = super.e();
    localMap.put("cartId", l);
    localMap.put("couponId", m);
    localMap.put("restaurantId", n);
    return localMap;
  }
  
  protected Map<String, Object> h()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("coupon_id", m);
    localHashMap.put("restaurant_id", n);
    return localHashMap;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */