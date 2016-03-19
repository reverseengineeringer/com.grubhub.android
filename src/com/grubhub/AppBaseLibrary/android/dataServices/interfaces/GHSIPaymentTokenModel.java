package com.grubhub.AppBaseLibrary.android.dataServices.interfaces;

public abstract interface GHSIPaymentTokenModel
{
  public abstract String getPaymentId();
  
  public abstract String getToken();
  
  public abstract GHSIPaymentTokenModel.PaymentTokenizer getTokenizer();
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIPaymentTokenModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */