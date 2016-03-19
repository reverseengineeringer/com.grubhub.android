package com.grubhub.AppBaseLibrary.android.dataServices.interfaces;

public abstract interface GHSIReviewsDataModel$GHSIReview
{
  public abstract String getContent();
  
  public abstract String getId();
  
  public abstract int getOrderCount();
  
  public abstract int getReviewCount();
  
  public abstract long getReviewCreatedDate();
  
  public abstract String getReviewer();
  
  public abstract long getReviewerLastOrderFromCustomerDate();
  
  public abstract String getSentiment();
  
  public abstract int getStarRating();
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIReviewsDataModel.GHSIReview
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */