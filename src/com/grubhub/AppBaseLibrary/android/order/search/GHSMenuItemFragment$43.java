package com.grubhub.AppBaseLibrary.android.order.search;

import android.view.View;
import android.widget.ExpandableListView;
import android.widget.ExpandableListView.OnChildClickListener;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIChoiceGroup;
import java.util.ArrayList;
import java.util.HashMap;

class GHSMenuItemFragment$43
  implements ExpandableListView.OnChildClickListener
{
  GHSMenuItemFragment$43(GHSMenuItemFragment paramGHSMenuItemFragment) {}
  
  public boolean onChildClick(ExpandableListView paramExpandableListView, View paramView, int paramInt1, int paramInt2, long paramLong)
  {
    paramInt2 = 1;
    paramExpandableListView = GHSMenuItemFragment.e(a).a(paramInt1);
    String str = paramExpandableListView.getChoiceId();
    paramInt1 = paramExpandableListView.getMaximum();
    if (paramView.getTag() != null)
    {
      paramExpandableListView = (String)paramView.getTag();
      if (paramExpandableListView != null)
      {
        ArrayList localArrayList = (ArrayList)GHSMenuItemFragment.f(a).get(str);
        paramView = localArrayList;
        if (localArrayList == null) {
          paramView = new ArrayList();
        }
        if ((paramView.contains(paramExpandableListView)) || (paramInt1 != 1)) {
          break label146;
        }
        paramView.clear();
        paramView.add(paramExpandableListView);
        paramInt1 = paramInt2;
      }
    }
    for (;;)
    {
      if (paramInt1 != 0)
      {
        a.a(str, paramView);
        GHSMenuItemFragment.g(a).invalidateViews();
        a.e();
      }
      return false;
      paramExpandableListView = null;
      break;
      label146:
      if (paramView.contains(paramExpandableListView))
      {
        paramView.remove(paramExpandableListView);
        paramInt1 = paramInt2;
      }
      else if (paramView.size() < paramInt1)
      {
        paramView.add(paramExpandableListView);
        paramInt1 = paramInt2;
      }
      else
      {
        paramInt1 = 0;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSMenuItemFragment.43
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */