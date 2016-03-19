package com.grubhub.AppBaseLibrary.android.order.search;

import android.view.View;
import android.widget.ExpandableListView;
import android.widget.ExpandableListView.OnGroupClickListener;
import com.grubhub.AppBaseLibrary.android.c;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIChoiceGroup;
import java.util.HashMap;

class GHSMenuItemFragment$42
  implements ExpandableListView.OnGroupClickListener
{
  GHSMenuItemFragment$42(GHSMenuItemFragment paramGHSMenuItemFragment) {}
  
  public boolean onGroupClick(ExpandableListView paramExpandableListView, View paramView, int paramInt, long paramLong)
  {
    boolean bool2 = false;
    paramExpandableListView = GHSMenuItemFragment.e(a).a(paramInt);
    boolean bool1;
    if (paramExpandableListView == null) {
      bool1 = true;
    }
    do
    {
      do
      {
        return bool1;
        bool1 = bool2;
      } while (paramExpandableListView.getItemVariationId() == 0);
      bool1 = bool2;
    } while (GHSMenuItemFragment.f(a).containsKey(Integer.toString(paramExpandableListView.getItemVariationId())));
    c.a(paramView.getContext(), 2131231677, 2131231679, 2131231717, 0, 0, null);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSMenuItemFragment.42
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */