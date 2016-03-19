package com.grubhub.AppBaseLibrary.android.dataServices.dto;

public class GHSOrderReviewCheckDataModel
{
  public final String orderId;
  public final String state;
  public final long timePlaced;
  
  public GHSOrderReviewCheckDataModel(String paramString1, long paramLong, String paramString2)
  {
    orderId = paramString1;
    timePlaced = paramLong;
    state = paramString2;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSOrderReviewCheckDataModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */