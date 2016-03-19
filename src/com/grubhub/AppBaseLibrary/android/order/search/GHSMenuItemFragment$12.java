package com.grubhub.AppBaseLibrary.android.order.search;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;

class GHSMenuItemFragment$12
  implements View.OnClickListener
{
  GHSMenuItemFragment$12(GHSMenuItemFragment paramGHSMenuItemFragment) {}
  
  public void onClick(View paramView)
  {
    if (GHSMenuItemFragment.a(a) > 1)
    {
      GHSMenuItemFragment.c(a);
      GHSMenuItemFragment.b(a).setText(String.valueOf(GHSMenuItemFragment.a(a)));
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSMenuItemFragment.12
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */