package com.grubhub.AppBaseLibrary.android.order.receipt;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.LinearLayout;

class GHSReceiptFragment$2
  implements View.OnTouchListener
{
  GHSReceiptFragment$2(GHSReceiptFragment paramGHSReceiptFragment, LinearLayout paramLinearLayout) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    default: 
      return true;
    case 0: 
      a.requestDisallowInterceptTouchEvent(true);
      return false;
    case 1: 
      a.requestDisallowInterceptTouchEvent(false);
      return true;
    }
    a.requestDisallowInterceptTouchEvent(true);
    return false;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.receipt.GHSReceiptFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */