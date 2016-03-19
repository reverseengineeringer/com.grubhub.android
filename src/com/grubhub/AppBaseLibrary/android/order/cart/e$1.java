package com.grubhub.AppBaseLibrary.android.order.cart;

import android.view.View;
import android.view.View.OnLongClickListener;

class e$1
  implements View.OnLongClickListener
{
  e$1(e parame) {}
  
  public boolean onLongClick(View paramView)
  {
    if (GHSCartFragment.u(a.a)) {
      return false;
    }
    paramView.setTranslationX(GHSCartFragment.f(a.a));
    return false;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.e.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */