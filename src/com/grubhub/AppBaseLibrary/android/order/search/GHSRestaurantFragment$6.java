package com.grubhub.AppBaseLibrary.android.order.search;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIMenuItem;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import com.grubhub.AppBaseLibrary.android.views.GHSRestaurantMenuSearchBar;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

class GHSRestaurantFragment$6
  implements e<ArrayList<GHSIFoodMenuDataModel.GHSIMenuItem>>
{
  GHSRestaurantFragment$6(GHSRestaurantFragment paramGHSRestaurantFragment, WeakReference paramWeakReference, String paramString, GHSIFoodMenuDataModel paramGHSIFoodMenuDataModel) {}
  
  public void a(ArrayList<GHSIFoodMenuDataModel.GHSIMenuItem> paramArrayList)
  {
    if (a.get() != null) {
      ((GHSRestaurantMenuSearchBar)a.get()).a(paramArrayList, b, c);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSRestaurantFragment.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */