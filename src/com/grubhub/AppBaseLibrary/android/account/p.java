package com.grubhub.AppBaseLibrary.android.account;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel.PaymentTypes;

abstract interface p
{
  public abstract View a(Context paramContext, int paramInt, View paramView, ViewGroup paramViewGroup);
  
  public abstract String a();
  
  public abstract GHSICartPaymentDataModel.PaymentTypes b();
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */