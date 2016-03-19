package com.grubhub.AppBaseLibrary.android.order.search;

import android.view.View;
import android.widget.ExpandableListView;
import android.widget.ExpandableListView.OnChildClickListener;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel;
import com.grubhub.AppBaseLibrary.android.order.a;
import com.grubhub.AppBaseLibrary.android.utils.c.c;
import com.grubhub.AppBaseLibrary.android.utils.c.h;
import java.util.ArrayList;

class GHSRestaurantFragment$1
  implements ExpandableListView.OnChildClickListener
{
  GHSRestaurantFragment$1(GHSRestaurantFragment paramGHSRestaurantFragment) {}
  
  public boolean onChildClick(ExpandableListView paramExpandableListView, View paramView, int paramInt1, int paramInt2, long paramLong)
  {
    if (GHSRestaurantFragment.a(a) != null)
    {
      GHSRestaurantFragment.a(a, GHSRestaurantFragment.a(a).getMenuItemIdBySectionPosition(paramInt1, paramInt2));
      GHSRestaurantFragment.a(a, GHSRestaurantFragment.b(a), a.b(GHSRestaurantFragment.b(a)), GHSRestaurantFragment.c(a), false);
      if (!GHSRestaurantFragment.a(a).isMenuItemPopular(paramInt1, paramInt2)) {
        break label153;
      }
      paramView = "menu item-badged_cta";
      paramExpandableListView = "";
      ArrayList localArrayList = GHSRestaurantFragment.a(a).findAllMenuSectionNames();
      if (paramInt1 < localArrayList.size())
      {
        paramExpandableListView = (String)localArrayList.get(paramInt1);
        if (!paramExpandableListView.equals("Most Popular")) {
          break label159;
        }
        paramExpandableListView = "menu category_most popular";
      }
    }
    for (;;)
    {
      h.a().a(new c("menu item interactions", paramView, paramExpandableListView));
      return false;
      label153:
      paramView = "menu item-not badged_cta";
      break;
      label159:
      if (paramExpandableListView.equals("Previously Ordered")) {
        paramExpandableListView = "menu category_recently ordered";
      } else {
        paramExpandableListView = "menu category_other menu categories";
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSRestaurantFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */