package com.grubhub.AppBaseLibrary.android.views;

import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;

class GHSSearchBar$7
  implements TextView.OnEditorActionListener
{
  GHSSearchBar$7(GHSSearchBar paramGHSSearchBar) {}
  
  public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 3)
    {
      if (GHSSearchBar.g(a).getVisibility() != 0) {
        paramTextView = "autocomplete-default tab search button_cta";
      }
      for (;;)
      {
        GHSSearchBar.d(a).a(paramTextView, GHSSearchBar.j(a));
        GHSSearchBar.k(a);
        return true;
        if (GHSSearchBar.i(a).isSelected()) {
          paramTextView = "autocomplete-food tab search button_cta";
        } else {
          paramTextView = "autocomplete-restaurant tab search button_cta";
        }
      }
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.GHSSearchBar.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */