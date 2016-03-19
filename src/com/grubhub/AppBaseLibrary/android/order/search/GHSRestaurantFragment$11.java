package com.grubhub.AppBaseLibrary.android.order.search;

import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.address.GHSAddressSuggestionDialogFragment;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import com.grubhub.AppBaseLibrary.android.order.a;
import java.util.ArrayList;

class GHSRestaurantFragment$11
  implements e<ArrayList<GHSIAddressDataModel>>
{
  GHSRestaurantFragment$11(GHSRestaurantFragment paramGHSRestaurantFragment, String paramString) {}
  
  public void a(ArrayList<GHSIAddressDataModel> paramArrayList)
  {
    Object localObject = a.a(paramArrayList);
    int i;
    String str;
    if (((ArrayList)localObject).size() == 1)
    {
      i = 1;
      if (i == 0) {
        break label137;
      }
      str = a.b((GHSIAddressDataModel)paramArrayList.get(0));
      localObject = GHSApplication.a().b().z();
      if (localObject != null) {
        break label194;
      }
      localObject = new GHSFilterSortCriteria();
    }
    label137:
    label194:
    for (;;)
    {
      ((GHSFilterSortCriteria)localObject).setAddress((GHSIAddressDataModel)paramArrayList.get(0), str);
      GHSApplication.a().b().a((GHSFilterSortCriteria)localObject);
      GHSRestaurantFragment.a(b, (GHSIAddressDataModel)paramArrayList.get(0));
      GHSRestaurantFragment.b(b, false);
      GHSRestaurantFragment.a(b, GHSRestaurantFragment.b(b), str, GHSRestaurantFragment.c(b), true);
      return;
      i = 0;
      break;
      if (!((ArrayList)localObject).isEmpty())
      {
        GHSAddressSuggestionDialogFragment.a((ArrayList)localObject).show(GHSRestaurantFragment.g(b), GHSAddressSuggestionDialogFragment.class.getSimpleName());
        return;
      }
      GHSRestaurantFragment.b(b, false);
      GHSRestaurantFragment.a(b, null, a, GHSRestaurantFragment.c(b), true);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSRestaurantFragment.11
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */