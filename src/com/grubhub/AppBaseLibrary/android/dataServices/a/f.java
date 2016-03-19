package com.grubhub.AppBaseLibrary.android.dataServices.a;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantListDataModel;

public class f
  extends a<GHSIRestaurantListDataModel>
  implements i
{
  private GHSFilterSortCriteria b;
  private boolean c;
  private int d = 30;
  private int e = 0;
  private String f;
  private GHSIRestaurantListDataModel g;
  
  public f(Context paramContext, GHSFilterSortCriteria paramGHSFilterSortCriteria, boolean paramBoolean, GHSIRestaurantListDataModel paramGHSIRestaurantListDataModel, int paramInt1, int paramInt2, String paramString, i parami1, i parami2)
  {
    super(paramContext, parami1, parami2);
    b = paramGHSFilterSortCriteria;
    c = paramBoolean;
    g = paramGHSIRestaurantListDataModel;
    d = paramInt1;
    e = paramInt2;
    f = paramString;
  }
  
  public void a()
  {
    super.a();
    if (e > 1)
    {
      c = true;
      if (g == null) {
        a(new com.grubhub.AppBaseLibrary.android.b.b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_UNKNOWN));
      }
    }
    else if (!c)
    {
      GHSIRestaurantListDataModel localGHSIRestaurantListDataModel = c().W();
      if (localGHSIRestaurantListDataModel != null)
      {
        a(localGHSIRestaurantListDataModel);
        return;
      }
    }
    b().a(b, d, e, f, this, this, f());
  }
  
  public void a(GHSIRestaurantListDataModel paramGHSIRestaurantListDataModel)
  {
    GHSIRestaurantListDataModel localGHSIRestaurantListDataModel = paramGHSIRestaurantListDataModel;
    if (e > 1) {
      if (paramGHSIRestaurantListDataModel == null) {
        break label52;
      }
    }
    label52:
    for (paramGHSIRestaurantListDataModel = paramGHSIRestaurantListDataModel.getRestaurants();; paramGHSIRestaurantListDataModel = null)
    {
      g.addToRestaurantList(paramGHSIRestaurantListDataModel);
      localGHSIRestaurantListDataModel = g;
      c().a(localGHSIRestaurantListDataModel);
      super.onResponse(localGHSIRestaurantListDataModel);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.a.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */