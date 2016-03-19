package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2FavoritesDTO;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.favorites.GHSIFavoriteListDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.c;
import com.grubhub.AppBaseLibrary.android.dataServices.net.k;

public class ap
  extends a<ap, GHSIFavoriteListDataModel, Void>
{
  protected String l;
  
  private ap(aq paramaq)
  {
    super(paramaq);
    l = j;
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
  }
  
  protected void c()
  {
    c localc = new c(g.toString(), new k(), V2FavoritesDTO.class, a, i, j);
    localc.setTag(c);
    h = localc;
    h.a(com.grubhub.AppBaseLibrary.android.utils.a.a.d(f));
  }
  
  protected boolean d()
  {
    return (super.d()) && (com.grubhub.AppBaseLibrary.android.utils.f.b(l));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.ap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */