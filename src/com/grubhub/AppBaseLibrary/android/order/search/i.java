package com.grubhub.AppBaseLibrary.android.order.search;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.TextView;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIMenuItem;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIMenuSection;
import java.util.ArrayList;
import java.util.Locale;

public class i
  extends BaseExpandableListAdapter
{
  private final GHSIFoodMenuDataModel b;
  private final LayoutInflater c;
  
  public i(GHSRestaurantFragment paramGHSRestaurantFragment, GHSIFoodMenuDataModel paramGHSIFoodMenuDataModel, LayoutInflater paramLayoutInflater)
  {
    b = paramGHSIFoodMenuDataModel;
    c = paramLayoutInflater;
  }
  
  public GHSIFoodMenuDataModel.GHSIMenuItem a(int paramInt1, int paramInt2)
  {
    GHSIFoodMenuDataModel.GHSIMenuSection localGHSIMenuSection = a(paramInt1);
    if (localGHSIMenuSection != null) {
      return (GHSIFoodMenuDataModel.GHSIMenuItem)localGHSIMenuSection.getMenuSectionMenuItems().get(paramInt2);
    }
    return null;
  }
  
  public GHSIFoodMenuDataModel.GHSIMenuSection a(int paramInt)
  {
    if ((b == null) || (b.getMenuSections() == null)) {
      return null;
    }
    ArrayList localArrayList = b.getMenuSections();
    if (paramInt < 0) {
      return (GHSIFoodMenuDataModel.GHSIMenuSection)localArrayList.get(0);
    }
    return (GHSIFoodMenuDataModel.GHSIMenuSection)localArrayList.get(paramInt);
  }
  
  public long getChildId(int paramInt1, int paramInt2)
  {
    GHSIFoodMenuDataModel.GHSIMenuItem localGHSIMenuItem = a(paramInt1, paramInt2);
    String str = null;
    if (localGHSIMenuItem != null) {
      str = ((GHSIFoodMenuDataModel.GHSIMenuItem)a(paramInt1).getMenuSectionMenuItems().get(paramInt2)).getMenuItemId();
    }
    if (str != null) {
      return Long.valueOf(str).longValue();
    }
    return 0L;
  }
  
  public View getChildView(int paramInt1, int paramInt2, boolean paramBoolean, View paramView, ViewGroup paramViewGroup)
  {
    Context localContext = paramViewGroup.getContext();
    View localView = paramView;
    if (paramView == null) {
      localView = c.inflate(2130903185, paramViewGroup, false);
    }
    paramViewGroup = (GHSIFoodMenuDataModel.GHSIMenuItem)a(paramInt1).getMenuSectionMenuItems().get(paramInt2);
    if (paramViewGroup.isPopular())
    {
      localView.findViewById(2131690206).setVisibility(0);
      paramView = (TextView)localView.findViewById(2131689896);
      TextView localTextView2 = (TextView)localView.findViewById(2131690207);
      TextView localTextView1 = (TextView)localView.findViewById(2131689895);
      paramView.setText(paramViewGroup.getMenuItemName());
      localTextView2.setText(paramViewGroup.getMenuItemDescription());
      if (!paramViewGroup.hasRequiredChoicesWithExtraCharges()) {
        break label216;
      }
      paramView = localContext.getString(2131231831);
      label149:
      localTextView1.setText(String.format(Locale.US, paramView, new Object[] { paramViewGroup.getMenuItemPrice() }));
      paramView = localView.findViewById(2131690208);
      if (!paramBoolean) {
        break label228;
      }
    }
    label216:
    label228:
    for (paramInt1 = 8;; paramInt1 = 0)
    {
      paramView.setVisibility(paramInt1);
      return localView;
      localView.findViewById(2131690206).setVisibility(8);
      break;
      paramView = localContext.getString(2131231830);
      break label149;
    }
  }
  
  public int getChildrenCount(int paramInt)
  {
    if ((b == null) || (b.getMenuSections() == null)) {
      return 0;
    }
    return ((GHSIFoodMenuDataModel.GHSIMenuSection)b.getMenuSections().get(paramInt)).getMenuSectionMenuItems().size();
  }
  
  public int getGroupCount()
  {
    if ((b == null) || (b.getMenuSections() == null) || (GHSRestaurantFragment.A(a) == null)) {
      return 0;
    }
    return GHSRestaurantFragment.A(a).size();
  }
  
  public long getGroupId(int paramInt)
  {
    GHSIFoodMenuDataModel.GHSIMenuSection localGHSIMenuSection = a(paramInt);
    String str = null;
    if (localGHSIMenuSection != null) {
      str = localGHSIMenuSection.getMenuSectionId();
    }
    if (str != null) {
      return Long.valueOf(str).longValue();
    }
    return 0L;
  }
  
  public View getGroupView(int paramInt, boolean paramBoolean, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null) {
      localView = c.inflate(2130903181, paramViewGroup, false);
    }
    paramView = paramViewGroup.getContext();
    paramViewGroup = (TextView)localView.findViewById(2131690199);
    String str = a(paramInt).getMenuSectionName();
    paramViewGroup.setText(str);
    if ((str != null) && (str.equals(paramView.getString(2131231630))))
    {
      localView.setBackgroundResource(2131558476);
      return localView;
    }
    if (str.equals(a.getString(2131231631)))
    {
      localView.setBackgroundResource(2131558478);
      return localView;
    }
    localView.setBackgroundResource(2131558474);
    return localView;
  }
  
  public boolean hasStableIds()
  {
    return false;
  }
  
  public boolean isChildSelectable(int paramInt1, int paramInt2)
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */