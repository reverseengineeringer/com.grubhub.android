package com.grubhub.AppBaseLibrary.android.dataServices.interfaces;

import java.util.List;

public abstract interface GHSIBillModel
  extends GHSICartDataModel
{
  public abstract List<GHSICartPaymentDataModel.PaymentTypes> getAvailablePaymentTypes();
  
  public abstract Integer getBalanceInCents();
  
  public abstract Float getBalanceInDollars();
  
  public abstract GHSIBillModel.BillState getBillState();
  
  public abstract String getCheckoutToken();
  
  public abstract List<GHSIBillModel.GHSIValidationError> getValidationErrors();
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIBillModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */