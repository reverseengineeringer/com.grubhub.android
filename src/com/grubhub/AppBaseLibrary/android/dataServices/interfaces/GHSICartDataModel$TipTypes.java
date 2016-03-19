package com.grubhub.AppBaseLibrary.android.dataServices.interfaces;

import com.grubhub.AppBaseLibrary.android.utils.f;

public enum GHSICartDataModel$TipTypes
{
  CASH("CASH"),  INCLUDE_IN_BILL("INCLUDE_IN_BILL");
  
  private String rawPaymentType;
  
  private GHSICartDataModel$TipTypes(String paramString)
  {
    rawPaymentType = paramString;
  }
  
  public static TipTypes fromString(String paramString)
  {
    if (f.a(paramString)) {}
    for (;;)
    {
      return null;
      TipTypes[] arrayOfTipTypes = values();
      int j = arrayOfTipTypes.length;
      int i = 0;
      while (i < j)
      {
        TipTypes localTipTypes = arrayOfTipTypes[i];
        if (localTipTypes.toString().equals(paramString)) {
          return localTipTypes;
        }
        i += 1;
      }
    }
  }
  
  public String toString()
  {
    return rawPaymentType;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel.TipTypes
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */