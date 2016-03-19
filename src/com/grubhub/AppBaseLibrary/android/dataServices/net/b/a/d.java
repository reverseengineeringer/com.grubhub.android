package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1OrderStatusDTO;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderStatus;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.c;
import com.grubhub.AppBaseLibrary.android.dataServices.net.h;
import com.grubhub.AppBaseLibrary.android.utils.f;
import java.util.Map;

public class d
  extends a<d, GHSIOrderStatus, Void>
{
  protected String l;
  protected String m;
  protected String n;
  
  private d(e parame)
  {
    super(parame);
    l = j;
    n = k;
    m = l;
  }
  
  protected void b()
  {
    String str = com.grubhub.AppBaseLibrary.android.utils.a.a.a(f);
    if (g == null) {
      g = new com.grubhub.AppBaseLibrary.android.dataServices.net.a.a(d);
    }
    g.a("utility");
    g.a("wheresmyfood");
    g.a("apiKey", b);
    g.a("token", str);
    g.a("format", "json");
    g.a("brand", m);
    g.a("orderId", l);
    g.a("orderToken", n);
  }
  
  protected void c()
  {
    c localc = new c(g.toString(), new h(), V1OrderStatusDTO.class, a, i, j);
    localc.setTag(c);
    h = localc;
  }
  
  protected boolean d()
  {
    return (super.d()) && (f.b(b)) && (f.b(l)) && (f.b(m));
  }
  
  protected Map<String, String> e()
  {
    Map localMap = super.e();
    localMap.put("orderId", l);
    localMap.put("orderToken", n);
    localMap.put("userAccountType", m);
    return localMap;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */