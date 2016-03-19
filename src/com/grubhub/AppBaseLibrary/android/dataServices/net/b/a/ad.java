package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2CartDTO;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.net.k;
import com.grubhub.AppBaseLibrary.android.utils.f;
import java.util.Map;

public class ad
  extends a<ad, GHSICartDataModel, Void>
{
  protected String l;
  protected String m;
  
  public ad(ae paramae)
  {
    super(paramae);
    l = ae.a(paramae);
    m = ae.b(paramae);
  }
  
  protected void b()
  {
    if (g == null) {
      g = new com.grubhub.AppBaseLibrary.android.dataServices.net.a.a(d, e);
    }
    g.a("espresso");
    g.a("carts");
    g.a(l);
    g.a("lines");
    g.a(m);
  }
  
  protected void c()
  {
    b localb = new b(g.toString(), new k(), V2CartDTO.class, a, i, j);
    localb.setTag(c);
    h = localb;
  }
  
  protected boolean d()
  {
    return (super.d()) && (f.b(l)) && (f.b(m)) && (f.b(e));
  }
  
  protected Map<String, String> e()
  {
    Map localMap = super.e();
    localMap.put("cartId", l);
    localMap.put("lineId", m);
    return localMap;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */