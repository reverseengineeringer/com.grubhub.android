package com.braintreepayments.api.dropin.view;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.braintreepayments.api.dropin.j;
import com.braintreepayments.api.dropin.k;
import com.braintreepayments.api.dropin.l;
import com.braintreepayments.api.models.AndroidPayCard;
import com.braintreepayments.api.models.Card;
import com.braintreepayments.api.models.PaymentMethod;

public class PaymentMethodView
  extends RelativeLayout
{
  private b a = b.UNKNOWN;
  private ImageView b;
  private TextView c;
  private TextView d;
  private CharSequence e;
  
  public PaymentMethodView(Context paramContext)
  {
    super(paramContext);
    a(paramContext);
  }
  
  public PaymentMethodView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
  }
  
  public PaymentMethodView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext);
  }
  
  private <T extends View> T a(int paramInt)
  {
    return findViewById(paramInt);
  }
  
  private void a()
  {
    if (b.access$000(a) != -1)
    {
      b.setImageResource(b.access$000(a));
      b.setVisibility(0);
    }
    for (;;)
    {
      c.setText(getContext().getString(b.access$100(a)));
      d.setText(e);
      return;
      b.setVisibility(8);
    }
  }
  
  private void a(Context paramContext)
  {
    LayoutInflater.from(paramContext).inflate(k.bt_payment_method, this);
    b = ((ImageView)a(j.bt_payment_method_icon));
    c = ((TextView)a(j.bt_payment_method_type));
    d = ((TextView)a(j.bt_payment_method_description));
    a();
  }
  
  public void setPaymentMethodDetails(PaymentMethod paramPaymentMethod)
  {
    a = b.forType(paramPaymentMethod.a());
    if ((paramPaymentMethod instanceof Card)) {
      e = String.format(getResources().getString(l.bt_card_descriptor), new Object[] { ((Card)paramPaymentMethod).b() });
    }
    for (;;)
    {
      a();
      return;
      if ((paramPaymentMethod instanceof AndroidPayCard)) {
        e = String.format(getResources().getString(l.bt_card_descriptor), new Object[] { ((AndroidPayCard)paramPaymentMethod).b() });
      } else {
        e = paramPaymentMethod.c();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.api.dropin.view.PaymentMethodView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */