package com.braintreepayments.api.dropin;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ScrollView;
import com.braintreepayments.api.dropin.view.LoadingHeader;
import com.braintreepayments.api.dropin.view.PaymentButton;
import com.braintreepayments.api.exceptions.ErrorWithResponse;
import com.braintreepayments.api.exceptions.ErrorWithResponse.BraintreeError;
import com.braintreepayments.api.models.f;
import com.braintreepayments.cardform.b;
import com.braintreepayments.cardform.view.CardForm;

public class a
  extends c
  implements View.OnClickListener, com.braintreepayments.cardform.a, b, com.braintreepayments.cardform.c
{
  private PaymentButton c;
  private CardForm d;
  private View e;
  private Button f;
  private LoadingHeader g;
  private ScrollView h;
  private boolean i = false;
  
  public a(BraintreePaymentActivity paramBraintreePaymentActivity, Bundle paramBundle, View paramView, com.braintreepayments.api.c paramc, d paramd)
  {
    super(paramBraintreePaymentActivity, paramView, paramc, paramd);
    g();
    b(paramBundle);
  }
  
  private void b(Bundle paramBundle)
  {
    if (paramBundle.containsKey("com.braintreepayments.api.dropin.EXTRA_FORM_IS_SUBMITTING"))
    {
      i = paramBundle.getBoolean("com.braintreepayments.api.dropin.EXTRA_FORM_IS_SUBMITTING");
      if (i) {
        k();
      }
    }
    if (paramBundle.containsKey("com.braintreepayments.api.dropin.EXTRA_SUBMIT_BUTTON_ENABLED")) {
      f.setEnabled(paramBundle.getBoolean("com.braintreepayments.api.dropin.EXTRA_SUBMIT_BUTTON_ENABLED"));
    }
    if (d.a()) {
      l();
    }
  }
  
  private void g()
  {
    g = ((LoadingHeader)a(j.bt_header_container));
    h = ((ScrollView)a(j.bt_form_scroll_container));
    e = a(j.bt_description_container);
    c = ((PaymentButton)a(j.bt_payment_button));
    d = ((CardForm)a(j.bt_card_form));
    f = ((Button)a(j.bt_card_form_submit_button));
    c.setOnClickListener(this);
    try
    {
      c.a(a.c(), a.d(), false, false);
      c.a(a, b);
      d.a(a, true, true, b.g(), b.h(), f());
      d.setOnCardFormValidListener(this);
      d.setOnCardFormSubmitListener(this);
      d.setOnFormFieldFocusedListener(this);
      f.setOnClickListener(this);
      f.setText(e());
      return;
    }
    catch (NoClassDefFoundError localNoClassDefFoundError)
    {
      for (;;) {}
    }
  }
  
  private f h()
  {
    f localf = new f().a(d.getCardNumber()).c(d.getExpirationMonth()).d(d.getExpirationYear()).f("dropin");
    if (b.g()) {
      localf.b(d.getCvv());
    }
    if (b.h()) {
      localf.e(d.getPostalCode());
    }
    return localf;
  }
  
  private void i()
  {
    g.setError(a.getString(l.bt_invalid_card));
  }
  
  private void j()
  {
    d.g();
    i = true;
    k();
  }
  
  private void k()
  {
    d.setEnabled(false);
    f.setEnabled(false);
    e.setVisibility(8);
    g.a();
  }
  
  private void l()
  {
    f.setBackgroundResource(i.bt_submit_button_background);
  }
  
  private void m()
  {
    f.setBackgroundResource(h.bt_button_disabled_color);
  }
  
  public void a()
  {
    f.performClick();
  }
  
  public void a(int paramInt1, int paramInt2, Intent paramIntent)
  {
    i = true;
    b.a(a, paramInt1, paramInt2, paramIntent);
  }
  
  public void a(Bundle paramBundle)
  {
    paramBundle.putBoolean("com.braintreepayments.api.dropin.EXTRA_FORM_IS_SUBMITTING", i);
    paramBundle.putBoolean("com.braintreepayments.api.dropin.EXTRA_SUBMIT_BUTTON_ENABLED", f.isEnabled());
  }
  
  public void a(final View paramView)
  {
    h.postDelayed(new Runnable()
    {
      public void run()
      {
        a.a(a.this).smoothScrollTo(0, paramView.getTop());
      }
    }, 100L);
  }
  
  public void a(ErrorWithResponse paramErrorWithResponse)
  {
    c();
    ErrorWithResponse.BraintreeError localBraintreeError = paramErrorWithResponse.a("creditCard");
    if (localBraintreeError != null)
    {
      b.a("add-card.failed");
      if (localBraintreeError.a("number") != null) {
        d.c();
      }
      if ((localBraintreeError.a("expirationYear") != null) || (localBraintreeError.a("expirationMonth") != null) || (localBraintreeError.a("expirationDate") != null)) {
        d.d();
      }
      if (localBraintreeError.a("cvv") != null) {
        d.e();
      }
      if (localBraintreeError.a("billingAddress") != null) {
        d.f();
      }
      i();
      return;
    }
    a.a(new com.braintreepayments.api.exceptions.j(paramErrorWithResponse.getMessage()));
  }
  
  public void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      l();
      return;
    }
    m();
  }
  
  protected boolean b()
  {
    return i;
  }
  
  protected void c()
  {
    m();
    d.setEnabled(true);
    f.setEnabled(true);
    i = false;
  }
  
  protected void d()
  {
    g.b();
  }
  
  public void onClick(View paramView)
  {
    if (paramView == c) {
      a.b();
    }
    while (paramView != f) {
      return;
    }
    if (d.a())
    {
      j();
      b.a(h());
      return;
    }
    d.b();
    m();
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.api.dropin.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */