package com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.b.d;

class GHSPaymentSelectionFragment$1
  implements AdapterView.OnItemSelectedListener
{
  GHSPaymentSelectionFragment$1(GHSPaymentSelectionFragment paramGHSPaymentSelectionFragment) {}
  
  public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = (d)paramAdapterView.getSelectedItem();
    if (a.a) {
      paramAdapterView.a(a.b);
    }
    for (;;)
    {
      a.a = true;
      return;
      paramAdapterView.b();
    }
  }
  
  public void onNothingSelected(AdapterView<?> paramAdapterView)
  {
    a.a = true;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.GHSPaymentSelectionFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */