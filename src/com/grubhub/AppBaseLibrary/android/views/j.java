package com.grubhub.AppBaseLibrary.android.views;

public enum j
{
  ACCOUNT_MANAGEMENT("Account_Management"),  PAYMENT_INFO("Payment_Info"),  REVIEW_ORDER("Review_Order");
  
  private String stringValue;
  
  private j(String paramString)
  {
    stringValue = paramString;
  }
  
  public String toString()
  {
    return stringValue;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */