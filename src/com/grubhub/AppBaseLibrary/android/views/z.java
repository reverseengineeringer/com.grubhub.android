package com.grubhub.AppBaseLibrary.android.views;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSSearchAutoValueDataModel;
import com.grubhub.AppBaseLibrary.android.utils.f;
import java.util.ArrayList;

class z
  extends BaseAdapter
{
  private Context b;
  private ArrayList<GHSSearchAutoValueDataModel> c;
  private boolean d;
  
  public z(GHSSearchBar paramGHSSearchBar, Context paramContext)
  {
    b = paramContext;
    c = new ArrayList();
  }
  
  public String a(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < c.size())) {
      return ((GHSSearchAutoValueDataModel)c.get(paramInt)).getValue();
    }
    return null;
  }
  
  public void a(ArrayList<GHSSearchAutoValueDataModel> paramArrayList, boolean paramBoolean)
  {
    c = paramArrayList;
    d = paramBoolean;
    notifyDataSetChanged();
    GHSSearchBar.h(a).setSelection(0);
    if ((paramBoolean) && (paramArrayList.size() == 0))
    {
      GHSSearchBar.m(a).a(2131231986, null);
      return;
    }
    GHSSearchBar.m(a).b();
  }
  
  public boolean areAllItemsEnabled()
  {
    return true;
  }
  
  public GHSSearchAutoValueDataModel b(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < c.size())) {
      return (GHSSearchAutoValueDataModel)c.get(paramInt);
    }
    return null;
  }
  
  public int getCount()
  {
    if ((c != null) && (c.size() > 0))
    {
      int j = c.size();
      int i = j;
      if (d)
      {
        i = j;
        if (GHSSearchBar.n(a) != null)
        {
          i = j;
          if (GHSSearchBar.n(a).size() > 0) {
            i = j + 1;
          }
        }
      }
      return i;
    }
    return 0;
  }
  
  public long getItemId(int paramInt)
  {
    return 0L;
  }
  
  public int getItemViewType(int paramInt)
  {
    if (paramInt == c.size()) {
      return 2;
    }
    if (f.a(((GHSSearchAutoValueDataModel)c.get(paramInt)).getId())) {
      return 0;
    }
    return 1;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    int i = getItemViewType(paramInt);
    if (i == 2) {
      return LayoutInflater.from(b).inflate(2130903227, null);
    }
    paramViewGroup = paramView;
    if (paramView == null) {
      paramViewGroup = LayoutInflater.from(b).inflate(2130903228, null);
    }
    paramView = b(paramInt);
    TextView localTextView = (TextView)paramViewGroup.findViewById(2131690331);
    ImageView localImageView = (ImageView)paramViewGroup.findViewById(2131690332);
    if (d)
    {
      localImageView.setVisibility(0);
      if (i != 0) {
        break label165;
      }
      localImageView.setImageResource(2130837828);
      localTextView.setVisibility(8);
      if (paramView.getValue() == null) {
        break label223;
      }
    }
    label165:
    label223:
    for (paramView = paramView.getValue().trim();; paramView = null)
    {
      ((TextView)paramViewGroup.findViewById(2131690330)).setText(GHSSearchBar.a(a, b, paramView, GHSSearchBar.j(a)));
      return paramViewGroup;
      localImageView.setVisibility(8);
      break;
      localImageView.setImageResource(2130837823);
      if (d) {
        localTextView.setVisibility(8);
      }
      for (;;)
      {
        localTextView.setText(b.getString(2131232020, new Object[] { paramView.getDistanceInMiles() }));
        break;
        localTextView.setVisibility(0);
      }
    }
  }
  
  public int getViewTypeCount()
  {
    return 3;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */