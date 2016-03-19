package com.grubhub.AppBaseLibrary.android.views;

import android.os.Message;
import android.text.Editable;
import android.text.TextWatcher;

class GHSRestaurantMenuSearchBar$6
  implements TextWatcher
{
  GHSRestaurantMenuSearchBar$6(GHSRestaurantMenuSearchBar paramGHSRestaurantMenuSearchBar) {}
  
  public void afterTextChanged(Editable paramEditable)
  {
    Object localObject = a;
    if (paramEditable.length() > 0) {}
    for (boolean bool = true;; bool = false)
    {
      GHSRestaurantMenuSearchBar.d((GHSRestaurantMenuSearchBar)localObject, bool);
      if (paramEditable.length() > 0)
      {
        GHSRestaurantMenuSearchBar.k(a).removeMessages(1);
        localObject = GHSRestaurantMenuSearchBar.k(a).obtainMessage(1);
        obj = paramEditable.toString();
        GHSRestaurantMenuSearchBar.k(a).sendMessageDelayed((Message)localObject, 150L);
      }
      return;
    }
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.GHSRestaurantMenuSearchBar.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */