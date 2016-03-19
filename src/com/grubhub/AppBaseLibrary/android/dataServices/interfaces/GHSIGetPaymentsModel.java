package com.grubhub.AppBaseLibrary.android.dataServices.interfaces;

import java.util.ArrayList;

public abstract interface GHSIGetPaymentsModel
{
  public abstract ArrayList<GHSIVaultedCreditCardModel> getCreditCards();
  
  public abstract ArrayList<GHSIVaultedPayPalModel> getPayPals();
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIGetPaymentsModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */