package com.grubhub.AppBaseLibrary.android.order.search;

import android.content.Context;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.grubhub.AppBaseLibrary.android.views.v;

class GHSReviewsFragment$2
  implements AdapterView.OnItemClickListener
{
  GHSReviewsFragment$2(GHSReviewsFragment paramGHSReviewsFragment) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    ((v)paramView).setContentExpanded(true);
    ((InputMethodManager)paramAdapterView.getContext().getSystemService("input_method")).hideSoftInputFromWindow(paramAdapterView.getWindowToken(), 2);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSReviewsFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */