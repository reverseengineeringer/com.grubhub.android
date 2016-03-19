package com.grubhub.AppBaseLibrary.android.order.cart;

import android.view.KeyEvent;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;

class GHSCustomTipDialogFragment$2
  implements TextView.OnEditorActionListener
{
  GHSCustomTipDialogFragment$2(GHSCustomTipDialogFragment paramGHSCustomTipDialogFragment) {}
  
  public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 6)
    {
      GHSCustomTipDialogFragment.d(a);
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.GHSCustomTipDialogFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */