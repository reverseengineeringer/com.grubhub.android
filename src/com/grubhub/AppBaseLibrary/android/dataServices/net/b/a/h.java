package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2FavoritesDTO;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.favorites.GHSIFavoriteListDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.d;
import com.grubhub.AppBaseLibrary.android.dataServices.net.k;
import java.util.HashMap;
import java.util.Map;

public class h
  extends a<h, GHSIFavoriteListDataModel, Void>
{
  protected String l;
  protected String m;
  
  private h(i parami)
  {
    super(parami);
    l = j;
    m = k;
  }
  
  protected void b()
  {
    if (g == null) {
      g = new com.grubhub.AppBaseLibrary.android.dataServices.net.a.a(d, e);
    }
    g.a("diners");
    g.a(l);
    g.a("favorites");
    g.a("restaurants");
  }
  
  protected void c()
  {
    d locald = new d(g.toString(), h(), new k(), V2FavoritesDTO.class, a, i, j);
    locald.setTag(c);
    h = locald;
    h.a(com.grubhub.AppBaseLibrary.android.utils.a.a.d(f));
  }
  
  protected boolean d()
  {
    return (super.d()) && (com.grubhub.AppBaseLibrary.android.utils.f.b(l)) && (com.grubhub.AppBaseLibrary.android.utils.f.b(m));
  }
  
  protected Map<String, String> e()
  {
    Map localMap = super.e();
    localMap.put("restaurant_id", m);
    return localMap;
  }
  
  protected Map<String, Object> h()
  {
    HashMap localHashMap = new HashMap();
    if (m != null) {
      localHashMap.put("restaurant_id", m);
    }
    return localHashMap;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */