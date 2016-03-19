package com.grubhub.AppBaseLibrary.android.views;

import android.content.Context;
import android.text.Editable;
import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.view.inputmethod.InputMethodManager;

class GHSSearchBar$1
  implements View.OnFocusChangeListener
{
  GHSSearchBar$1(GHSSearchBar paramGHSSearchBar) {}
  
  public void onFocusChange(View paramView, boolean paramBoolean)
  {
    if (!paramBoolean)
    {
      GHSSearchBar.b(a).setText(GHSSearchBar.a(a));
      paramView = a;
      if (GHSSearchBar.b(a).getText().length() <= 0) {
        break label82;
      }
    }
    label82:
    for (paramBoolean = true;; paramBoolean = false)
    {
      GHSSearchBar.a(paramView, paramBoolean);
      return;
      ((InputMethodManager)a.getContext().getSystemService("input_method")).showSoftInput(GHSSearchBar.b(a), 1);
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.GHSSearchBar.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */