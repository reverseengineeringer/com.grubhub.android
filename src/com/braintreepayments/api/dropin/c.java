package com.braintreepayments.api.dropin;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;

public abstract class c
{
  protected BraintreePaymentActivity a;
  protected final com.braintreepayments.api.c b;
  private View c;
  private final d d;
  
  public c(BraintreePaymentActivity paramBraintreePaymentActivity, View paramView, com.braintreepayments.api.c paramc, d paramd)
  {
    a = paramBraintreePaymentActivity;
    c = paramView;
    b = paramc;
    d = paramd;
    a();
  }
  
  private void a()
  {
    if (!TextUtils.isEmpty(d.c()))
    {
      a(j.bt_primary_description, d.c());
      a(j.bt_secondary_description, d.d());
      a(j.bt_description_amount, d.f());
      a(j.bt_description_container).setVisibility(0);
    }
  }
  
  private void a(int paramInt, String paramString)
  {
    if (!TextUtils.isEmpty(paramString)) {
      ((TextView)a(paramInt)).setText(paramString);
    }
  }
  
  public <T extends View> T a(int paramInt)
  {
    return c.findViewById(paramInt);
  }
  
  public abstract void a(Bundle paramBundle);
  
  protected String e()
  {
    String str2 = f();
    String str1 = str2;
    if (!TextUtils.isEmpty(d.f())) {
      str1 = d.f() + " - " + str2;
    }
    return str1.toUpperCase();
  }
  
  protected String f()
  {
    String str2 = d.e();
    String str1 = str2;
    if (TextUtils.isEmpty(str2)) {
      str1 = a.getString(l.bt_default_submit_button_text);
    }
    return str1;
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.api.dropin.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */