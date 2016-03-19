package com.paypal.android.sdk.payments;

import android.app.Activity;
import android.content.Intent;
import android.text.style.URLSpan;
import android.view.View;

final class b
  extends URLSpan
{
  private Activity a;
  private Class b;
  private bx c;
  private l d;
  
  b(URLSpan paramURLSpan, Activity paramActivity, Class paramClass, bx parambx, l paraml)
  {
    super(paramURLSpan.getURL());
    a = paramActivity;
    b = paramClass;
    c = parambx;
    d = paraml;
  }
  
  public final void onClick(View paramView)
  {
    paramView = new Intent(a, b);
    paramView.putExtra("com.paypal.details.scope", d);
    c.a();
    a.startActivity(paramView);
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.payments.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */