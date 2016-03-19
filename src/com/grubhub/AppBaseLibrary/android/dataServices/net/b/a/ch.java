package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import com.grubhub.AppBaseLibrary.android.dataServices.net.b.d;
import com.grubhub.AppBaseLibrary.android.dataServices.net.k;
import com.grubhub.AppBaseLibrary.android.utils.f;
import java.util.HashMap;
import java.util.Map;

public class ch
  extends a<ch, Void, Void>
{
  protected String l;
  protected String m;
  protected String n;
  
  public ch(ci paramci)
  {
    super(paramci);
    l = ci.a(paramci);
    n = ci.b(paramci);
    m = ci.c(paramci);
  }
  
  protected void b()
  {
    if (g == null) {
      g = new com.grubhub.AppBaseLibrary.android.dataServices.net.a.a(d, e);
    }
    g.a("payments");
    g.a("device_data");
    g.a(l);
  }
  
  protected void c()
  {
    d locald = new d(g.toString(), h(), new k(), Void.class, a, i, j);
    locald.setTag(c);
    h = locald;
  }
  
  protected boolean d()
  {
    return (super.d()) && (f.b(l)) && (f.b(e));
  }
  
  protected Map<String, String> e()
  {
    Map localMap = super.e();
    localMap.put("paymentId", l);
    localMap.put("orderId", n);
    localMap.put("deviceData", m);
    return localMap;
  }
  
  protected Map<String, Object> h()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("device_data", m);
    localHashMap.put("order_id", n);
    return localHashMap;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.ch
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */