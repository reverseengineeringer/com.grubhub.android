package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import com.grubhub.AppBaseLibrary.android.dataServices.net.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.net.k;
import com.grubhub.AppBaseLibrary.android.utils.f;
import java.util.Map;

public class z
  extends a<z, Void, Void>
{
  protected String l;
  
  public z(aa paramaa)
  {
    super(paramaa);
    l = aa.a(paramaa);
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
    b localb = new b(g.toString(), new k(), Void.class, a, i, j);
    localb.setTag(c);
    h = localb;
  }
  
  protected boolean d()
  {
    return (super.d()) && (f.b(l)) && (f.b(e));
  }
  
  protected Map<String, String> e()
  {
    Map localMap = super.e();
    localMap.put("cartId", l);
    return localMap;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */