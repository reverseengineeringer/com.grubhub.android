package com.braintreepayments.api.dropin.view;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import com.braintreepayments.api.c;
import com.braintreepayments.api.dropin.j;
import com.braintreepayments.api.dropin.k;
import com.google.android.gms.wallet.Cart;
import java.util.List;

public class PaymentButton
  extends RelativeLayout
  implements View.OnClickListener
{
  private Activity a;
  private int b;
  private c c;
  private Cart d;
  private boolean e;
  private boolean f;
  private boolean g;
  private List<String> h;
  
  public PaymentButton(Context paramContext)
  {
    super(paramContext);
  }
  
  public PaymentButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public PaymentButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private void a(View paramView, int paramInt)
  {
    paramView.setVisibility(0);
    paramView.setOnClickListener(this);
    paramView.setLayoutParams(new LinearLayout.LayoutParams(-2, -1, 3.0F / paramInt));
  }
  
  public void a(Activity paramActivity, c paramc)
  {
    a(paramActivity, paramc, 11876);
  }
  
  public void a(Activity paramActivity, c paramc, int paramInt)
  {
    a = paramActivity;
    c = paramc;
    b = paramInt;
    inflate(getContext(), k.bt_payment_button, this);
    boolean bool1 = c.d();
    boolean bool2 = c.e();
    if ((c.f()) && ((d != null) || (e))) {}
    for (int j = 1; (!bool1) && (!bool2) && (j == 0); j = 0)
    {
      setVisibility(8);
      return;
    }
    if (bool1) {}
    for (int i = 1;; i = 0)
    {
      paramInt = i;
      if (bool2) {
        paramInt = i + 1;
      }
      i = paramInt;
      if (j != 0) {
        i = paramInt + 1;
      }
      if (bool1) {
        a(findViewById(j.bt_paypal_button), i);
      }
      if (bool2) {
        a(findViewById(j.bt_venmo_button), i);
      }
      if (j != 0) {
        a(findViewById(j.bt_android_pay_button), i);
      }
      if ((bool1) && (i > 1)) {
        findViewById(j.bt_payment_button_divider).setVisibility(0);
      }
      while (i > 2)
      {
        findViewById(j.bt_payment_button_divider_2).setVisibility(0);
        return;
        if ((bool2) && (i > 1)) {
          findViewById(j.bt_payment_button_divider_2).setVisibility(0);
        }
      }
      break;
    }
  }
  
  public void a(Cart paramCart, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    d = paramCart;
    e = paramBoolean1;
    f = paramBoolean2;
    g = paramBoolean3;
  }
  
  public void onClick(View paramView)
  {
    if (paramView.getId() == j.bt_paypal_button) {
      c.a(a, b, h);
    }
    for (;;)
    {
      performClick();
      return;
      if (paramView.getId() == j.bt_venmo_button) {
        c.b(a, b);
      } else if (paramView.getId() == j.bt_android_pay_button) {
        c.a(a, b, d, e, f, g);
      }
    }
  }
  
  public void setAdditionalPayPalScopes(List<String> paramList)
  {
    h = paramList;
  }
  
  public void setAndroidPayOptions(Cart paramCart)
  {
    a(paramCart, false, false, false);
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.api.dropin.view.PaymentButton
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */