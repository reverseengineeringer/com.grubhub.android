package com.grubhub.AppBaseLibrary.android.views;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSSearchAutoValueDataModel;
import com.grubhub.AppBaseLibrary.android.utils.f;

class GHSSearchBar$8
  implements AdapterView.OnItemClickListener
{
  GHSSearchBar$8(GHSSearchBar paramGHSSearchBar) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = (z)GHSSearchBar.h(a).getAdapter();
    if (paramAdapterView.getItemViewType(paramInt) == 2)
    {
      GHSApplication.a().b().f(null);
      a.f();
      return;
    }
    GHSSearchBar.l(a);
    paramView = paramAdapterView.b(paramInt);
    if (z.a(paramAdapterView)) {
      GHSSearchBar.d(a).a("autocomplete-default suggestions_cta", paramView.getValue());
    }
    for (paramInt = 1;; paramInt = 0)
    {
      if (f.a(paramView.getId()))
      {
        GHSSearchBar.a(a, GHSSearchBar.c(a), false);
        if (paramInt == 0) {
          GHSSearchBar.d(a).a("autocomplete-food suggestions_cta", paramView.getValue());
        }
        GHSSearchBar.b(a).setText(paramView.getValue());
        GHSSearchBar.k(a);
        return;
      }
      if (paramInt == 0) {
        GHSSearchBar.d(a).a("autocomplete-restaurant suggestions_cta", paramView.getValue());
      }
      GHSSearchBar.d(a).b(paramView.getId());
      GHSSearchBar.a(a, paramView);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.GHSSearchBar.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */