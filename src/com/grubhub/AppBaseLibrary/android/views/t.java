package com.grubhub.AppBaseLibrary.android.views;

import android.content.Context;
import android.content.res.Resources;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIMenuItem;
import com.grubhub.AppBaseLibrary.android.utils.e.a;
import com.grubhub.AppBaseLibrary.android.utils.f;
import java.util.ArrayList;
import java.util.Locale;

class t
  extends BaseAdapter
{
  private ArrayList<GHSIFoodMenuDataModel.GHSIMenuItem> a;
  private String b;
  private GHSIFoodMenuDataModel c;
  
  private SpannableString a(Context paramContext, String paramString1, String paramString2)
  {
    SpannableString localSpannableString = null;
    if (!TextUtils.isEmpty(paramString1))
    {
      localSpannableString = new SpannableString(paramString1);
      if ((!TextUtils.isEmpty(paramString1)) && (!TextUtils.isEmpty(paramString2)))
      {
        paramString1 = paramString1.toLowerCase(Locale.US);
        paramString2 = paramString2.toLowerCase(Locale.US).split("\\s+");
        int k = paramString2.length;
        int i = 0;
        while (i < k)
        {
          String str = paramString2[i];
          if (f.a(str))
          {
            i += 1;
          }
          else
          {
            int j = 0;
            for (;;)
            {
              int m = paramString1.indexOf(str, j);
              if (m == -1) {
                break;
              }
              j = str.length() + m;
              localSpannableString.setSpan(new ForegroundColorSpan(paramContext.getResources().getColor(2131558463)), m, j, 33);
            }
          }
        }
      }
    }
    return localSpannableString;
  }
  
  public GHSIFoodMenuDataModel.GHSIMenuItem a(int paramInt)
  {
    return (GHSIFoodMenuDataModel.GHSIMenuItem)a.get(paramInt);
  }
  
  public void a(ArrayList<GHSIFoodMenuDataModel.GHSIMenuItem> paramArrayList, String paramString, GHSIFoodMenuDataModel paramGHSIFoodMenuDataModel)
  {
    a = paramArrayList;
    b = paramString;
    c = paramGHSIFoodMenuDataModel;
    notifyDataSetChanged();
  }
  
  public int getCount()
  {
    if (a != null) {
      return a.size();
    }
    return 0;
  }
  
  public long getItemId(int paramInt)
  {
    try
    {
      long l = Long.valueOf(((GHSIFoodMenuDataModel.GHSIMenuItem)a.get(paramInt)).getMenuItemId()).longValue();
      return l;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      a.b(GHSRestaurantMenuSearchBar.e(), localNumberFormatException.getMessage());
    }
    return 0L;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    TextView localTextView1 = null;
    Context localContext = paramViewGroup.getContext();
    View localView = paramView;
    if (paramView == null) {
      localView = LayoutInflater.from(localContext).inflate(2130903185, paramViewGroup, false);
    }
    paramViewGroup = a(paramInt);
    if (paramViewGroup.isPopular())
    {
      localView.findViewById(2131690206).setVisibility(0);
      TextView localTextView2 = (TextView)localView.findViewById(2131689896);
      if (paramViewGroup.getMenuItemName() == null) {
        break label236;
      }
      paramView = paramViewGroup.getMenuItemName().trim();
      label87:
      localTextView2.setText(a(localContext, paramView, b));
      localTextView2 = (TextView)localView.findViewById(2131690207);
      paramView = localTextView1;
      if (paramViewGroup.getMenuItemDescription() != null) {
        paramView = paramViewGroup.getMenuItemDescription().trim();
      }
      localTextView2.setText(a(localContext, paramView, b));
      localTextView1 = (TextView)localView.findViewById(2131689895);
      if (!paramViewGroup.hasRequiredChoicesWithExtraCharges()) {
        break label241;
      }
    }
    label236:
    label241:
    for (paramView = localContext.getString(2131231831);; paramView = localContext.getString(2131231830))
    {
      localTextView1.setText(String.format(Locale.US, paramView, new Object[] { paramViewGroup.getMenuItemPrice() }));
      localView.setTag(paramViewGroup.getMenuItemId());
      return localView;
      localView.findViewById(2131690206).setVisibility(8);
      break;
      paramView = null;
      break label87;
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */