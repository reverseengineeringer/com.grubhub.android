package com.grubhub.AppBaseLibrary.android.order.search;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;
import com.grubhub.AppBaseLibrary.android.views.m;
import com.grubhub.AppBaseLibrary.android.views.q;
import java.util.List;

class k
  extends ArrayAdapter<GHSIRestaurantDataModel>
{
  public k(Context paramContext, int paramInt, List<GHSIRestaurantDataModel> paramList)
  {
    super(paramInt, paramList, localList);
  }
  
  public void a(List<GHSIRestaurantDataModel> paramList)
  {
    clear();
    addAll(paramList);
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramViewGroup = (m)paramView;
    paramView = paramViewGroup;
    if (paramViewGroup == null)
    {
      paramView = new m(getContext());
      paramView.setCouponsVisible(true);
    }
    int i;
    if ((GHSSearchFragment.e(a) != null) && (!TextUtils.isEmpty(GHSSearchFragment.e(a).getSearchTerm())))
    {
      i = 1;
      if (i == 0) {
        break label133;
      }
      paramViewGroup = q.MATCHING_ITEMS;
      label66:
      paramView.setDisplayMode(paramViewGroup);
      paramView.a(false, GHSSearchFragment.A(a));
      if (i != 0) {
        if (paramInt % 2 == 0) {
          break label140;
        }
      }
    }
    label133:
    label140:
    for (boolean bool = true;; bool = false)
    {
      paramView.setMatchingItemsAltColorEnabled(bool);
      paramView.a((GHSIRestaurantDataModel)getItem(paramInt), GHSSearchFragment.e(a).getOrderType());
      return paramView;
      i = 0;
      break;
      paramViewGroup = q.CONDENSED;
      break label66;
    }
  }
  
  public boolean hasStableIds()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */