package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2FavoritesDTO;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.favorites.GHSIFavoriteListDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.net.k;

public class cb
  extends a<cb, GHSIFavoriteListDataModel, Void>
{
  protected String l;
  protected String m;
  
  private cb(cc paramcc)
  {
    super(paramcc);
    l = j;
    m = k;
  }
  
  protected void b()
  {
    if (g == null) {
      g = new com.grubhub.AppBaseLibrary.android.dataServices.net.a.a(d);
    }
    g.a("diners");
    g.a(l);
    g.a("favorites");
    g.a("restaurants");
    g.a(m);
  }
  
  protected void c()
  {
    b localb = new b(g.toString(), new k(), V2FavoritesDTO.class, a, i, j);
    localb.setTag(c);
    h = localb;
    h.a(com.grubhub.AppBaseLibrary.android.utils.a.a.d(f));
  }
  
  protected boolean d()
  {
    return (super.d()) && (com.grubhub.AppBaseLibrary.android.utils.f.b(l)) && (com.grubhub.AppBaseLibrary.android.utils.f.b(m));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.cb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */