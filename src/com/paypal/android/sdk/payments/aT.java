package com.paypal.android.sdk.payments;

import android.text.style.URLSpan;
import android.view.View;

final class aT
  extends URLSpan
{
  private bx a;
  
  aT(URLSpan paramURLSpan, bx parambx)
  {
    super(paramURLSpan.getURL());
    a = parambx;
  }
  
  public final void onClick(View paramView)
  {
    a.a();
    super.onClick(paramView);
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.payments.aT
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */