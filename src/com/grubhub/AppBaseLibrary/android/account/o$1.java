package com.grubhub.AppBaseLibrary.android.account;

import android.view.View;
import android.view.View.OnLongClickListener;

class o$1
  implements View.OnLongClickListener
{
  o$1(o paramo) {}
  
  public boolean onLongClick(View paramView)
  {
    if (GHSSavedPaymentListFragment.d(a.a)) {
      return false;
    }
    paramView.setTranslationX(GHSSavedPaymentListFragment.e(a.a));
    return false;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.o.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */