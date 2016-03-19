package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2CartDTO;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.d;
import com.grubhub.AppBaseLibrary.android.dataServices.net.k;
import com.grubhub.AppBaseLibrary.android.utils.b;
import com.grubhub.AppBaseLibrary.android.utils.f;
import java.util.HashMap;
import java.util.Map;

public class cp
  extends a<cp, GHSICartDataModel, Void>
{
  protected String l;
  protected long m;
  
  private cp(cq paramcq)
  {
    super(paramcq);
    l = cq.a(paramcq);
    m = cq.b(paramcq);
  }
  
  protected void b()
  {
    if (g == null) {
      g = new com.grubhub.AppBaseLibrary.android.dataServices.net.a.a(d, e);
    }
    g.a("espresso");
    g.a("carts");
    g.a(l);
  }
  
  protected void c()
  {
    d locald = new d(g.toString(), h(), new k(), V2CartDTO.class, a, i, j);
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
    localMap.put("cartId", l);
    if (m != 0L) {
      localMap.put("when_for", b.a(m, "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", true));
    }
    return localMap;
  }
  
  protected Map<String, Object> h()
  {
    HashMap localHashMap = new HashMap();
    if (m != 0L) {
      localHashMap.put("when_for", b.a(m, "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", true));
    }
    return localHashMap;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.cp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */