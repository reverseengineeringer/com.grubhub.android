package com.grubhub.AppBaseLibrary.android.dataServices.interfaces;

import java.util.ArrayList;

public abstract interface GHSIReviewsDataModel$GHSIReviews
{
  public abstract void addToReviewList(ArrayList<GHSIReviewsDataModel.GHSIReview> paramArrayList);
  
  public abstract int getRatingCount();
  
  public abstract float getRestaurantScore();
  
  public abstract ArrayList<GHSIReviewsDataModel.GHSIReview> getReviewList();
  
  public abstract void updateRatingCount(int paramInt);
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIReviewsDataModel.GHSIReviews
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */