package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2RestaurantAvailabilityDTO;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantAvailabilityDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.c;
import com.grubhub.AppBaseLibrary.android.dataServices.net.k;
import com.grubhub.AppBaseLibrary.android.utils.f;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class be
  extends a<be, GHSIRestaurantAvailabilityDataModel, Void>
{
  protected List<String> l;
  protected String m;
  protected String n;
  
  private be(bf parambf)
  {
    super(parambf);
    l = bf.a(parambf);
    m = bf.b(parambf);
    n = bf.c(parambf);
  }
  
  protected void b()
  {
    if (g == null) {
      g = new com.grubhub.AppBaseLibrary.android.dataServices.net.a.a(d, e);
    }
    g.a("restaurants");
    g.a("availability_summaries");
    Iterator localIterator = l.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      g.a("ids", str);
    }
    if ((f.b(m)) && (f.b(n))) {
      g.a("location", "POINT(" + n + " " + m + ")");
    }
  }
  
  protected void c()
  {
    c localc = new c(g.toString(), new k(), V2RestaurantAvailabilityDTO.class, a, i, j);
    localc.setTag(c);
    h = localc;
  }
  
  protected boolean d()
  {
    return (super.d()) && (l != null) && (!l.isEmpty()) && (f.b(e));
  }
  
  protected Map<String, String> e()
  {
    Map localMap = super.e();
    if (l != null)
    {
      Iterator localIterator = l.iterator();
      while (localIterator.hasNext()) {
        localMap.put("ids", (String)localIterator.next());
      }
    }
    localMap.put("latitude", m);
    localMap.put("longitude", n);
    return localMap;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.be
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */