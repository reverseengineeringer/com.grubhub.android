package com.grubhub.AppBaseLibrary.android.order.search.filter;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.TextView;
import com.grubhub.AppBaseLibrary.android.c.a.e;

class GHSSortByFragment$1
  implements AdapterView.OnItemClickListener
{
  GHSSortByFragment$1(GHSSortByFragment paramGHSSortByFragment) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = ((TextView)paramView.findViewById(2131689742)).getText().toString();
    ((TextView)GHSSortByFragment.a(a).findViewById(2131690119)).setText(paramAdapterView);
    GHSSortByFragment.b(a).a(paramInt);
    GHSSortByFragment.c(a).performClick();
    GHSSortByFragment.a(a, true);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.filter.GHSSortByFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */