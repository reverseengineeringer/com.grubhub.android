package com.grubhub.AppBaseLibrary.android.account;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.TextView;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel.PaymentTypes;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIVaultedCreditCardModel;
import com.grubhub.AppBaseLibrary.android.utils.f;
import com.grubhub.AppBaseLibrary.android.utils.g;

class k
  implements p
{
  private GHSIVaultedCreditCardModel b;
  
  public k(GHSSavedPaymentListFragment paramGHSSavedPaymentListFragment, GHSIVaultedCreditCardModel paramGHSIVaultedCreditCardModel)
  {
    b = paramGHSIVaultedCreditCardModel;
  }
  
  public View a(Context paramContext, int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramContext = a.getResources();
    paramViewGroup = (TextView)paramView.findViewById(2131690240);
    Object localObject;
    if (b.isSingleUse())
    {
      paramViewGroup.setText(paramContext.getString(2131232053));
      paramViewGroup.setVisibility(0);
      paramViewGroup = (TextView)paramView.findViewById(2131690243);
      localObject = g.a(b, paramContext);
      if (localObject != null) {
        paramViewGroup.setText((CharSequence)localObject);
      }
      localObject = (RadioButton)paramView.findViewById(2131690241);
      if ((!GHSSavedPaymentListFragment.c(a)) || (b.getId() == null) || (!b.getId().equals(GHSSavedPaymentListFragment.f(a)))) {
        break label294;
      }
      paramViewGroup.setTextColor(paramContext.getColor(2131558463));
      ((RadioButton)localObject).setChecked(true);
      label153:
      paramViewGroup = (ImageView)paramView.findViewById(2131690242);
      if (!f.b(b.getCreditCardType())) {
        break label407;
      }
      paramViewGroup.setVisibility(0);
      if (!b.getCreditCardType().equals(paramContext.getString(2131230924))) {
        break label314;
      }
      paramViewGroup.setImageResource(2130837915);
    }
    for (;;)
    {
      paramView.findViewById(2131690164).setOnClickListener(new l(a, b.getId(), GHSICartPaymentDataModel.PaymentTypes.CREDIT_CARD, paramContext.getString(2131231029), paramContext.getString(2131231715), paramContext.getString(2131231028), paramContext.getString(2131231713), paramContext.getString(2131231030)));
      return paramView;
      paramViewGroup.setText("");
      paramViewGroup.setVisibility(8);
      break;
      label294:
      paramViewGroup.setTextColor(paramContext.getColor(2131558484));
      ((RadioButton)localObject).setChecked(false);
      break label153;
      label314:
      if (b.getCreditCardType().equals(paramContext.getString(2131231312)))
      {
        paramViewGroup.setImageResource(2130837917);
      }
      else if (b.getCreditCardType().equals(paramContext.getString(2131231665)))
      {
        paramViewGroup.setImageResource(2130837919);
      }
      else if (b.getCreditCardType().equals(paramContext.getString(2131232057)))
      {
        paramViewGroup.setImageResource(2130837921);
        continue;
        label407:
        paramViewGroup.setVisibility(8);
      }
    }
  }
  
  public String a()
  {
    return b.getId();
  }
  
  public GHSICartPaymentDataModel.PaymentTypes b()
  {
    return GHSICartPaymentDataModel.PaymentTypes.CREDIT_CARD;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */