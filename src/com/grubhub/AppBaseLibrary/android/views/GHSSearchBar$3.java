package com.grubhub.AppBaseLibrary.android.views;

import android.view.View;
import android.view.View.OnClickListener;

class GHSSearchBar$3
  implements View.OnClickListener
{
  GHSSearchBar$3(GHSSearchBar paramGHSSearchBar) {}
  
  public void onClick(View paramView)
  {
    if (!a.a())
    {
      if (GHSSearchBar.d(a) != null)
      {
        GHSSearchBar.d(a).k();
        GHSSearchBar.e(a);
      }
      GHSSearchBar.f(a).setVisibility(8);
      GHSSearchBar.a(a, GHSSearchBar.c(a), true);
      GHSSearchBar.b(a).requestFocus();
    }
    GHSSearchBar.b(a).setText("");
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.GHSSearchBar.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */