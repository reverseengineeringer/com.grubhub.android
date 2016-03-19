package com.braintreepayments.api.dropin;

import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;
import com.braintreepayments.api.dropin.view.PaymentMethodView;
import com.braintreepayments.api.models.PaymentMethod;
import java.util.List;

public class m
  extends c
  implements View.OnClickListener
{
  private PaymentMethodView c = (PaymentMethodView)a(j.bt_selected_payment_method_view);
  private TextView d;
  private Button e;
  private int f;
  
  public m(BraintreePaymentActivity paramBraintreePaymentActivity, Bundle paramBundle, View paramView, com.braintreepayments.api.c paramc, d paramd)
  {
    super(paramBraintreePaymentActivity, paramView, paramc, paramd);
    c.setOnClickListener(this);
    d = ((TextView)a(j.bt_change_payment_method_link));
    d.setOnClickListener(this);
    e = ((Button)a(j.bt_select_payment_method_submit_button));
    e.setOnClickListener(this);
    e.setText(e());
    if (paramBundle.containsKey("com.braintreepayments.api.dropin.EXTRA_SELECTED_PAYMENT_METHOD")) {}
    for (f = paramBundle.getInt("com.braintreepayments.api.dropin.EXTRA_SELECTED_PAYMENT_METHOD");; f = 0)
    {
      a();
      return;
    }
  }
  
  private void b()
  {
    f localf = new f(a, this, b.m());
    if (Build.VERSION.SDK_INT >= 11) {}
    for (ContextThemeWrapper localContextThemeWrapper = new ContextThemeWrapper(a, 16973941);; localContextThemeWrapper = new ContextThemeWrapper(a, 16973837))
    {
      new AlertDialog.Builder(localContextThemeWrapper).setTitle(l.bt_choose_payment_method).setAdapter(localf, localf).setPositiveButton(l.bt_add_new_payment_method, new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          m.a(m.this);
        }
      }).show();
      return;
    }
  }
  
  private void c()
  {
    a.a();
  }
  
  private PaymentMethod d()
  {
    return (PaymentMethod)b.m().get(f);
  }
  
  protected void a()
  {
    c.setPaymentMethodDetails(d());
    TextView localTextView = (TextView)a(j.bt_change_payment_method_link);
    if (b.m().size() == 1)
    {
      localTextView.setText(l.bt_add_payment_method);
      return;
    }
    localTextView.setText(l.bt_change_payment_method);
  }
  
  public void a(Bundle paramBundle)
  {
    paramBundle.putInt("com.braintreepayments.api.dropin.EXTRA_SELECTED_PAYMENT_METHOD", f);
  }
  
  protected void b(int paramInt)
  {
    f = paramInt;
    a();
  }
  
  public void onClick(View paramView)
  {
    if (paramView.getId() == c.getId()) {
      if (b.m().size() > 1) {
        b();
      }
    }
    do
    {
      return;
      if (paramView.getId() == d.getId())
      {
        if (b.m().size() == 1)
        {
          c();
          return;
        }
        b();
        return;
      }
    } while (paramView.getId() != e.getId());
    e.setEnabled(false);
    a.b(d());
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.api.dropin.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */