package com.grubhub.AppBaseLibrary.android.views;

import android.text.Editable;
import android.view.KeyEvent;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;

class GHSRestaurantMenuSearchBar$5
  implements TextView.OnEditorActionListener
{
  GHSRestaurantMenuSearchBar$5(GHSRestaurantMenuSearchBar paramGHSRestaurantMenuSearchBar) {}
  
  public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 6)
    {
      if ((GHSRestaurantMenuSearchBar.j(a) == null) || (GHSRestaurantMenuSearchBar.j(a).getCount() != 0)) {
        break label50;
      }
      a.postDelayed(new Runnable()
      {
        public void run()
        {
          GHSRestaurantMenuSearchBar.c(a, true);
        }
      }, 350L);
    }
    for (;;)
    {
      return false;
      label50:
      if (GHSRestaurantMenuSearchBar.a(a).getText().length() == 0) {
        a.b();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.GHSRestaurantMenuSearchBar.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */