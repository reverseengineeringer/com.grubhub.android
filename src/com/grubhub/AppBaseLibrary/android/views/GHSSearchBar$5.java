package com.grubhub.AppBaseLibrary.android.views;

import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.ListView;
import com.grubhub.AppBaseLibrary.android.utils.f;
import java.util.ArrayList;

class GHSSearchBar$5
  implements TextWatcher
{
  GHSSearchBar$5(GHSSearchBar paramGHSSearchBar) {}
  
  public void afterTextChanged(Editable paramEditable)
  {
    Object localObject = a;
    boolean bool;
    int j;
    if (paramEditable.length() > 0)
    {
      bool = true;
      GHSSearchBar.a((GHSSearchBar)localObject, bool);
      j = GHSSearchBar.g(a).getVisibility();
      localObject = GHSSearchBar.g(a);
      if (!f.b(paramEditable.toString())) {
        break label131;
      }
    }
    label131:
    for (int i = 0;; i = 8)
    {
      ((View)localObject).setVisibility(i);
      if (j != GHSSearchBar.g(a).getVisibility())
      {
        a.c();
        if (j != 0) {
          ((z)GHSSearchBar.h(a).getAdapter()).a(new ArrayList(), false);
        }
      }
      GHSSearchBar.a(a, paramEditable.toString(), false);
      return;
      bool = false;
      break;
    }
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.GHSSearchBar.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */