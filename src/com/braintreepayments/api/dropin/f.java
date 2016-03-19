package com.braintreepayments.api.dropin;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.braintreepayments.api.dropin.view.PaymentMethodView;
import com.braintreepayments.api.models.PaymentMethod;
import java.util.List;

public class f
  extends BaseAdapter
  implements DialogInterface.OnClickListener
{
  private Context a;
  private m b;
  private List<PaymentMethod> c;
  
  public f(Context paramContext, m paramm, List<PaymentMethod> paramList)
  {
    a = paramContext;
    b = paramm;
    c = paramList;
  }
  
  public int getCount()
  {
    return c.size();
  }
  
  public Object getItem(int paramInt)
  {
    return c.get(paramInt);
  }
  
  public long getItemId(int paramInt)
  {
    return 0L;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramView = new PaymentMethodView(a);
    paramView.setPaymentMethodDetails((PaymentMethod)c.get(paramInt));
    return paramView;
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    b.b(paramInt);
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.api.dropin.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */