package com.grubhub.AppBaseLibrary.android.order.cart;

import android.content.res.Resources;
import android.support.v4.app.ag;
import android.support.v4.app.w;
import android.view.View;
import android.view.View.OnClickListener;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel.GHSIItemOptionSelection;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel.GHSIOrderItem;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIChoiceGroup;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIMenuItem;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;
import com.grubhub.AppBaseLibrary.android.order.search.GHSMenuItemFragment;
import com.grubhub.AppBaseLibrary.android.utils.c.h;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

class g
  implements View.OnClickListener
{
  private int b;
  
  public g(GHSCartFragment paramGHSCartFragment, int paramInt)
  {
    b = paramInt;
  }
  
  public void onClick(View paramView)
  {
    h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.c("modify your order", "edit item_CTA", ""));
    GHSICartDataModel.GHSIOrderItem localGHSIOrderItem;
    GHSIFoodMenuDataModel.GHSIMenuItem localGHSIMenuItem;
    HashMap localHashMap;
    if ((GHSCartFragment.a(a) != null) && (GHSCartFragment.v(a) != null) && (GHSCartFragment.m(a) != null))
    {
      localGHSIOrderItem = (GHSICartDataModel.GHSIOrderItem)GHSCartFragment.s(a).get(b);
      localGHSIMenuItem = GHSCartFragment.a(a, GHSCartFragment.m(a), localGHSIOrderItem.getOriginalItemId());
      if (localGHSIMenuItem == null) {
        break label386;
      }
      Object localObject = localGHSIMenuItem.getMenuItemChoiceGroups();
      localHashMap = new HashMap();
      paramView = localGHSIOrderItem.getSelectedItemOptions();
      if (paramView != null)
      {
        localObject = ((ArrayList)localObject).iterator();
        while (((Iterator)localObject).hasNext())
        {
          GHSIFoodMenuDataModel.GHSIChoiceGroup localGHSIChoiceGroup = (GHSIFoodMenuDataModel.GHSIChoiceGroup)((Iterator)localObject).next();
          ArrayList localArrayList = new ArrayList();
          Iterator localIterator = paramView.iterator();
          while (localIterator.hasNext())
          {
            GHSICartDataModel.GHSIItemOptionSelection localGHSIItemOptionSelection = (GHSICartDataModel.GHSIItemOptionSelection)localIterator.next();
            if (localGHSIChoiceGroup.getOptionById(localGHSIItemOptionSelection.optionRefId()) != null) {
              localArrayList.add(localGHSIItemOptionSelection.optionRefId());
            }
          }
          if (localArrayList.size() > 0) {
            localHashMap.put(localGHSIChoiceGroup.getChoiceId(), localArrayList);
          }
        }
      }
      paramView = GHSApplication.a().b().z();
      if (paramView == null) {
        break label436;
      }
    }
    label386:
    label436:
    for (paramView = paramView.getAddress();; paramView = null)
    {
      paramView = GHSMenuItemFragment.a(GHSCartFragment.a(a).getRestaurantId(), localGHSIOrderItem.getOriginalItemId(), paramView, GHSCartFragment.v(a).getOrderType(), false, GHSCartFragment.a(a).isPhoneOnly(), GHSCartFragment.a(a).getRestaurantPhoneNumber(), localGHSIOrderItem.getId());
      paramView.a(localGHSIMenuItem);
      paramView.a(localGHSIOrderItem.getItemQuantity().intValue(), localGHSIOrderItem.getItemSpecialInstructions(), localHashMap);
      GHSCartFragment.g(a).a().b(2131689817, paramView, GHSMenuItemFragment.class.getSimpleName()).a();
      do
      {
        return;
        paramView = a.getActivity();
      } while (paramView == null);
      com.grubhub.AppBaseLibrary.android.c.a(paramView, a.getString(2131231348), a.getString(2131231482), a.getResources().getString(2131231717), null, null, null);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */