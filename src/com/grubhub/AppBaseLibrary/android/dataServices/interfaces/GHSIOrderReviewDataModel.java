package com.grubhub.AppBaseLibrary.android.dataServices.interfaces;

public abstract interface GHSIOrderReviewDataModel
{
  public abstract String getOrderId();
  
  public abstract Integer getRating();
  
  public abstract GHSIOrderReviewDataModel.GHSOrderReviewState getState();
  
  public abstract String getWrittenReview();
  
  public abstract void setState(GHSIOrderReviewDataModel.GHSOrderReviewState paramGHSOrderReviewState);
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewDataModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */