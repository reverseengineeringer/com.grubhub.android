package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2CartDTO;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.d;
import com.grubhub.AppBaseLibrary.android.dataServices.net.k;
import com.grubhub.AppBaseLibrary.android.utils.b;
import java.util.HashMap;
import java.util.Map;

public class u
  extends a<u, GHSICartDataModel, Void>
{
  protected String l;
  protected Long m;
  
  private u(v paramv)
  {
    super(paramv);
    l = v.a(paramv);
    m = v.b(paramv);
  }
  
  protected void b()
  {
    if (g == null) {
      g = new com.grubhub.AppBaseLibrary.android.dataServices.net.a.a(d, e);
    }
    g.a("espresso");
    g.a("carts");
  }
  
  protected void c()
  {
    Object localObject = new HashMap();
    ((Map)localObject).put("brand", l);
    if (m != null) {
      ((Map)localObject).put("when_for", b.a(m.longValue(), "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", true));
    }
    localObject = new d(g.toString(), (Map)localObject, new k(), V2CartDTO.class, a, i, j);
    ((d)localObject).setTag(c);
    h = ((com.grubhub.AppBaseLibrary.android.dataServices.net.b.f)localObject);
  }
  
  protected boolean d()
  {
    return (super.d()) && (com.grubhub.AppBaseLibrary.android.utils.f.b(l)) && (com.grubhub.AppBaseLibrary.android.utils.f.b(e));
  }
  
  protected Map<String, String> e()
  {
    Map localMap = super.e();
    localMap.put("brand", l);
    if (m != null) {
      localMap.put("when_for", b.a(m.longValue(), "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", true));
    }
    return localMap;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */