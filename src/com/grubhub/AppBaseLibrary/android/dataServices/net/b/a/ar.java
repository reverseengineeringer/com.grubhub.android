package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2RestaurantDTO.GHSMenuItem;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIMenuItem;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.c;
import com.grubhub.AppBaseLibrary.android.dataServices.net.k;
import com.grubhub.AppBaseLibrary.android.utils.f;

public class ar
  extends a<ar, GHSIFoodMenuDataModel.GHSIMenuItem, Void>
{
  protected String l;
  protected String m;
  
  private ar(as paramas)
  {
    super(paramas);
    l = j;
    m = k;
  }
  
  protected void b()
  {
    if (g == null) {
      g = new com.grubhub.AppBaseLibrary.android.dataServices.net.a.a(d, e);
    }
    g.a("restaurants");
    g.a(l);
    g.a("menu_items");
    g.a(m);
  }
  
  protected void c()
  {
    c localc = new c(g.toString(), new k(), V2RestaurantDTO.GHSMenuItem.class, a, i, j);
    localc.setTag(c);
    h = localc;
  }
  
  protected boolean d()
  {
    return (super.d()) && (f.b(l)) && (f.b(m));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.ar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */