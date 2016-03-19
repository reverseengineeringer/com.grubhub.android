package com.grubhub.AppBaseLibrary.android.order.futureOrders;

import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;

class GHSFutureOrdersFragment$13
  extends ClickableSpan
{
  GHSFutureOrdersFragment$13(GHSFutureOrdersFragment paramGHSFutureOrdersFragment) {}
  
  public void onClick(View paramView)
  {
    if (GHSFutureOrdersFragment.a(a) != null) {
      GHSFutureOrdersFragment.a(a).j();
    }
  }
  
  public void updateDrawState(TextPaint paramTextPaint)
  {
    paramTextPaint.setColor(linkColor);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.futureOrders.GHSFutureOrdersFragment.13
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */