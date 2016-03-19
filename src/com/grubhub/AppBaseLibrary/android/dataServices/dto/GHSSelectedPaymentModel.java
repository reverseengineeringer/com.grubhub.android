package com.grubhub.AppBaseLibrary.android.dataServices.dto;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel.PaymentTypes;

public class GHSSelectedPaymentModel
{
  private String selectedCreditCardId;
  private GHSAndroidPayMaskedWalletModel selectedMaskedWalletModel;
  private String selectedPayPalId;
  private String selectedPaymentId;
  private GHSICartPaymentDataModel.PaymentTypes selectedPaymentType;
  
  public String getSelectedCreditCardId()
  {
    return selectedCreditCardId;
  }
  
  public GHSAndroidPayMaskedWalletModel getSelectedMaskedWalletModel()
  {
    return selectedMaskedWalletModel;
  }
  
  public String getSelectedPayPalId()
  {
    return selectedPayPalId;
  }
  
  public String getSelectedPaymentId()
  {
    return selectedPaymentId;
  }
  
  public GHSICartPaymentDataModel.PaymentTypes getSelectedPaymentType()
  {
    return selectedPaymentType;
  }
  
  public void setCashPaymentSelected()
  {
    selectedPaymentId = null;
    selectedPaymentType = GHSICartPaymentDataModel.PaymentTypes.CASH;
  }
  
  public void setSelectedCreditCardId(String paramString)
  {
    selectedCreditCardId = paramString;
    selectedPaymentId = paramString;
    selectedPaymentType = GHSICartPaymentDataModel.PaymentTypes.CREDIT_CARD;
  }
  
  public void setSelectedMaskedWalletModel(GHSAndroidPayMaskedWalletModel paramGHSAndroidPayMaskedWalletModel)
  {
    selectedMaskedWalletModel = paramGHSAndroidPayMaskedWalletModel;
    selectedPaymentId = null;
    selectedPaymentType = GHSICartPaymentDataModel.PaymentTypes.ANDROID_PAY;
  }
  
  public void setSelectedPayPalId(String paramString)
  {
    selectedPayPalId = paramString;
    selectedPaymentId = paramString;
    selectedPaymentType = GHSICartPaymentDataModel.PaymentTypes.PAYPAL_EXPRESS;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSSelectedPaymentModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */