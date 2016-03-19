package com.grubhub.AppBaseLibrary.android.order.search.filter;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSCuisine;
import com.grubhub.AppBaseLibrary.android.views.GHSTextView;
import java.util.ArrayList;

class a
  extends BaseAdapter
{
  private ArrayList<GHSCuisine> b;
  
  public a(ArrayList<GHSCuisine> paramArrayList)
  {
    ArrayList localArrayList;
    b = localArrayList;
  }
  
  public GHSCuisine a(int paramInt)
  {
    if (paramInt < b.size()) {
      return (GHSCuisine)b.get(paramInt);
    }
    return null;
  }
  
  public int getCount()
  {
    if (b != null) {
      return b.size();
    }
    return 0;
  }
  
  public long getItemId(int paramInt)
  {
    return 0L;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Object localObject = paramViewGroup.getContext();
    View localView = paramView;
    if (paramView == null) {
      localView = LayoutInflater.from((Context)localObject).inflate(2130903176, paramViewGroup, false);
    }
    paramView = a(paramInt);
    paramViewGroup = (GHSTextView)localView.findViewById(2131690187);
    paramViewGroup.setText(paramView.getDisplayName());
    localObject = (GHSTextView)localView.findViewById(2131690188);
    if (paramView.getItemCount() == -1) {
      ((GHSTextView)localObject).setVisibility(8);
    }
    ImageView localImageView;
    for (;;)
    {
      localImageView = (ImageView)localView.findViewById(2131690189);
      if (!paramView.isSelected()) {
        break;
      }
      localImageView.setVisibility(0);
      paramViewGroup.setTextColor(a.getResources().getColor(2131558463));
      ((GHSTextView)localObject).setTextColor(a.getResources().getColor(2131558463));
      return localView;
      ((GHSTextView)localObject).setVisibility(0);
      ((GHSTextView)localObject).setText(" (" + paramView.getItemCount() + ")");
    }
    localImageView.setVisibility(4);
    paramViewGroup.setTextColor(a.getResources().getColor(2131558481));
    ((GHSTextView)localObject).setTextColor(a.getResources().getColor(2131558481));
    return localView;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.filter.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */