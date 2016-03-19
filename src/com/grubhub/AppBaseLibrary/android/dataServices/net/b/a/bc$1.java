package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.b.a;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;

class bc$1
  implements e<GHSIRestaurantDataModel>
{
  bc$1(bc parambc) {}
  
  public void a(GHSIRestaurantDataModel paramGHSIRestaurantDataModel)
  {
    GHSIFoodMenuDataModel localGHSIFoodMenuDataModel;
    if ((paramGHSIRestaurantDataModel instanceof GHSIFoodMenuDataModel))
    {
      localGHSIFoodMenuDataModel = (GHSIFoodMenuDataModel)paramGHSIRestaurantDataModel;
      if ((localGHSIFoodMenuDataModel != null) && (localGHSIFoodMenuDataModel.getMenuSections() != null)) {
        break label65;
      }
      paramGHSIRestaurantDataModel = new com.grubhub.AppBaseLibrary.android.b.b(a.ERROR_CODE_UNKNOWN);
      if (a.j != null) {
        a.j.a(paramGHSIRestaurantDataModel);
      }
    }
    label65:
    do
    {
      return;
      localGHSIFoodMenuDataModel = null;
      break;
      GHSApplication.a().b().a(localGHSIFoodMenuDataModel);
    } while (a.i == null);
    a.i.onResponse(paramGHSIRestaurantDataModel);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.bc.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */