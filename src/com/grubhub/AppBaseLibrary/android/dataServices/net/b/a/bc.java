package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2RestaurantDTO;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.c;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import com.grubhub.AppBaseLibrary.android.dataServices.net.k;
import com.grubhub.AppBaseLibrary.android.order.l;
import com.grubhub.AppBaseLibrary.android.utils.f;
import java.util.Map;

public class bc
  extends a<bc, GHSIRestaurantDataModel, Void>
{
  protected String l;
  protected String m;
  protected String n;
  protected Long o;
  protected l p;
  
  private bc(bd parambd)
  {
    super(parambd);
    l = j;
    m = k;
    n = l;
    p = n;
    o = m;
  }
  
  protected void b()
  {
    if (g == null) {
      g = new com.grubhub.AppBaseLibrary.android.dataServices.net.a.a(d, e);
    }
    g.a("restaurants");
    g.a(l);
    g.a("hideChoiceCategories", "true");
    g.a("hideUnavailableMenuItems", "true");
    if ((f.b(m)) && (f.b(n))) {
      g.a("location", "POINT(" + n + " " + m + ")");
    }
    if (p == l.FUTURE) {
      g.a("isFutureOrder", String.valueOf(true));
    }
    if (o != null) {
      g.a("time", o.toString());
    }
  }
  
  protected void c()
  {
    c localc = new c(g.toString(), new k(), V2RestaurantDTO.class, a, new e()
    {
      public void a(GHSIRestaurantDataModel paramAnonymousGHSIRestaurantDataModel)
      {
        GHSIFoodMenuDataModel localGHSIFoodMenuDataModel;
        if ((paramAnonymousGHSIRestaurantDataModel instanceof GHSIFoodMenuDataModel))
        {
          localGHSIFoodMenuDataModel = (GHSIFoodMenuDataModel)paramAnonymousGHSIRestaurantDataModel;
          if ((localGHSIFoodMenuDataModel != null) && (localGHSIFoodMenuDataModel.getMenuSections() != null)) {
            break label65;
          }
          paramAnonymousGHSIRestaurantDataModel = new com.grubhub.AppBaseLibrary.android.b.b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_UNKNOWN);
          if (j != null) {
            j.a(paramAnonymousGHSIRestaurantDataModel);
          }
        }
        label65:
        do
        {
          return;
          localGHSIFoodMenuDataModel = null;
          break;
          GHSApplication.a().b().a(localGHSIFoodMenuDataModel);
        } while (i == null);
        i.onResponse(paramAnonymousGHSIRestaurantDataModel);
      }
    }, j);
    localc.setTag(c);
    h = localc;
  }
  
  protected boolean d()
  {
    return (super.d()) && (f.b(e)) && (f.b(l));
  }
  
  protected Map<String, String> e()
  {
    Map localMap = super.e();
    localMap.put("restaurantId", l);
    localMap.put("latitude", String.valueOf(m));
    localMap.put("longitude", String.valueOf(n));
    if (p == l.FUTURE) {
      localMap.put("isFutureOrder", String.valueOf(true));
    }
    if (o != null) {
      localMap.put("time", o.toString());
    }
    return localMap;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.bc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */