package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2CartDTO;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.d;
import com.grubhub.AppBaseLibrary.android.dataServices.net.k;
import com.grubhub.AppBaseLibrary.android.utils.f;
import java.util.HashMap;
import java.util.Map;

public class bz
  extends a<bz, GHSICartDataModel, Void>
{
  protected String l;
  protected String m;
  
  private bz(ca paramca)
  {
    super(paramca);
    l = ca.a(paramca);
    m = ca.b(paramca);
  }
  
  private Map<String, String> h()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("brand", m);
    return localHashMap;
  }
  
  protected void b()
  {
    if (g == null) {
      g = new com.grubhub.AppBaseLibrary.android.dataServices.net.a.a(d, e);
    }
    g.a("espresso");
    g.a("carts");
    g.a(l);
    g.a("recart");
  }
  
  protected void c()
  {
    d locald = new d(g.toString(), h(), new k(), V2CartDTO.class, a, i, j);
    locald.setTag(c);
    h = locald;
  }
  
  protected boolean d()
  {
    return (super.d()) && (f.b(l)) && (f.b(m)) && (f.b(e));
  }
  
  protected Map<String, String> e()
  {
    Map localMap = super.e();
    localMap.put("cartId", l);
    localMap.put("brand", m);
    localMap.putAll(h());
    return localMap;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.bz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */