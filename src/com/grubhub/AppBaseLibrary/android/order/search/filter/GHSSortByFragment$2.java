package com.grubhub.AppBaseLibrary.android.order.search.filter;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.ListView;

class GHSSortByFragment$2
  implements View.OnClickListener
{
  GHSSortByFragment$2(GHSSortByFragment paramGHSSortByFragment) {}
  
  public void onClick(View paramView)
  {
    paramView = (ImageView)paramView.findViewById(2131690120);
    if (!GHSSortByFragment.d(a))
    {
      GHSSortByFragment.e(a).setVisibility(0);
      GHSSortByFragment.b(a, true);
      paramView.setImageResource(2130837682);
      return;
    }
    GHSSortByFragment.e(a).setVisibility(8);
    GHSSortByFragment.b(a, false);
    paramView.setImageResource(2130837732);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.filter.GHSSortByFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */