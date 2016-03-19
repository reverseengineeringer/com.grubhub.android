package com.grubhub.AppBaseLibrary.android.account;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.TextView;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel.PaymentTypes;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIVaultedPayPalModel;

class n
  implements p
{
  private GHSIVaultedPayPalModel b;
  
  public n(GHSSavedPaymentListFragment paramGHSSavedPaymentListFragment, GHSIVaultedPayPalModel paramGHSIVaultedPayPalModel)
  {
    b = paramGHSIVaultedPayPalModel;
  }
  
  public View a(Context paramContext, int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramContext = a.getResources();
    paramViewGroup = (ImageView)paramView.findViewById(2131690242);
    paramViewGroup.setImageResource(2130837920);
    paramViewGroup.setVisibility(0);
    paramViewGroup = (TextView)paramView.findViewById(2131690243);
    paramViewGroup.setText(b.getEmail());
    RadioButton localRadioButton = (RadioButton)paramView.findViewById(2131690241);
    if ((GHSSavedPaymentListFragment.c(a)) && (b.getId() != null) && (b.getId().equals(GHSSavedPaymentListFragment.f(a))))
    {
      paramViewGroup.setTextColor(paramContext.getColor(2131558463));
      localRadioButton.setChecked(true);
    }
    for (;;)
    {
      paramView.findViewById(2131690240).setVisibility(8);
      paramView.findViewById(2131690164).setOnClickListener(new l(a, b.getId(), GHSICartPaymentDataModel.PaymentTypes.PAYPAL_EXPRESS, paramContext.getString(2131231032), paramContext.getString(2131231715), paramContext.getString(2131231031), paramContext.getString(2131231713), paramContext.getString(2131231033)));
      return paramView;
      paramViewGroup.setTextColor(paramContext.getColor(2131558484));
      localRadioButton.setChecked(false);
    }
  }
  
  public String a()
  {
    return b.getId();
  }
  
  public GHSICartPaymentDataModel.PaymentTypes b()
  {
    return GHSICartPaymentDataModel.PaymentTypes.PAYPAL_EXPRESS;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */