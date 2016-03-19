package com.grubhub.AppBaseLibrary.android.dataServices.dto;

import com.google.android.gms.wallet.MaskedWallet;

public class GHSAndroidPayMaskedWalletModel
{
  private String email;
  private String googleTransactionId;
  private String merchantTransactionId;
  private String[] paymentDescriptions;
  
  public static GHSAndroidPayMaskedWalletModel fromMaskedWallet(MaskedWallet paramMaskedWallet)
  {
    if (paramMaskedWallet == null) {
      return null;
    }
    GHSAndroidPayMaskedWalletModel localGHSAndroidPayMaskedWalletModel = new GHSAndroidPayMaskedWalletModel();
    email = paramMaskedWallet.e();
    googleTransactionId = paramMaskedWallet.b();
    merchantTransactionId = paramMaskedWallet.c();
    paymentDescriptions = paramMaskedWallet.d();
    return localGHSAndroidPayMaskedWalletModel;
  }
  
  public String getEmail()
  {
    return email;
  }
  
  public String getGoogleTransactionId()
  {
    return googleTransactionId;
  }
  
  public String getMerchantTransactionId()
  {
    return merchantTransactionId;
  }
  
  public String[] getPaymentDescriptions()
  {
    return paymentDescriptions;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSAndroidPayMaskedWalletModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */