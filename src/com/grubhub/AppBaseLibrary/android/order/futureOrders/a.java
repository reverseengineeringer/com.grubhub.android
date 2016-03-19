package com.grubhub.AppBaseLibrary.android.order.futureOrders;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.views.GHSTextView;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

class a
  extends ArrayAdapter<GHSICartDataModel>
{
  public a(Context paramContext, int paramInt, List<GHSICartDataModel> paramList)
  {
    super(paramInt, paramList, localList);
  }
  
  public void a(List<GHSICartDataModel> paramList)
  {
    clear();
    addAll(paramList);
    notifyDataSetChanged();
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null) {
      localView = GHSFutureOrdersFragment.b(a).getLayoutInflater().inflate(2130903179, paramViewGroup, false);
    }
    paramView = (GHSICartDataModel)getItem(paramInt);
    ((GHSTextView)localView.findViewById(2131689951)).setText(paramView.getRestaurantName());
    ((GHSTextView)localView.findViewById(2131690196)).setText(String.format("%s %s", new Object[] { a.getString(2131231638), new SimpleDateFormat("MMM d, yyyy, h:mm a", Locale.US).format(new Date(paramView.getExpectedTimeInMillis())) }));
    paramView = String.format("%s $%.2f", new Object[] { a.getString(2131231639), paramView.getAmountDue() });
    ((GHSTextView)localView.findViewById(2131690197)).setText(paramView);
    return localView;
  }
  
  public boolean hasStableIds()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.futureOrders.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */