package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2CartDTO;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel.TipTypes;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.d;
import com.grubhub.AppBaseLibrary.android.dataServices.net.k;
import com.grubhub.AppBaseLibrary.android.utils.f;
import java.util.HashMap;
import java.util.Map;

public class cl
  extends a<cl, GHSICartDataModel, Void>
{
  protected String l;
  protected float m;
  protected GHSICartDataModel.TipTypes n;
  
  private cl(cm paramcm)
  {
    super(paramcm);
    l = cm.a(paramcm);
    m = cm.b(paramcm);
    n = cm.c(paramcm);
  }
  
  private int a(float paramFloat)
  {
    return Math.round(100.0F * paramFloat);
  }
  
  private Map<String, String> h()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("amount", Integer.toString(a(m)));
    if (n != null) {
      localHashMap.put("type", n.toString());
    }
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
    g.a("tip");
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
    localMap.put("amount", Integer.toString(a(m)));
    localMap.putAll(h());
    return localMap;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.cl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */