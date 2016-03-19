package com.paypal.android.sdk.payments;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.widget.Button;
import com.paypal.android.sdk.ek;
import com.paypal.android.sdk.em;
import com.paypal.android.sdk.ft;

public final class FuturePaymentInfoActivity
  extends Activity
{
  private m a;
  
  protected final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = (l)getIntent().getExtras().getSerializable("com.paypal.details.scope");
    ft.b(this);
    ft.a(this);
    a = new m(this, paramBundle);
    setContentView(a.a);
    by.a(this, a.b, null);
    a.c.setText(ek.a(em.d));
    a.c.setOnClickListener(new k(this));
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.payments.FuturePaymentInfoActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */