package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIReviewsDataModel.GHSIReview;

class V1ReviewsDataModel$GHSReview
  implements GHSIReviewsDataModel.GHSIReview
{
  private String content;
  private String id;
  private int orderCount;
  private int reviewCount;
  private long reviewCreatedDate;
  private String reviewer;
  private long reviewerLastOrderFromCustomerDate;
  private int starRating;
  
  private V1ReviewsDataModel$GHSReview(V1ReviewsDataModel paramV1ReviewsDataModel) {}
  
  public String getContent()
  {
    return content;
  }
  
  public String getId()
  {
    return id;
  }
  
  public int getOrderCount()
  {
    return orderCount;
  }
  
  public int getReviewCount()
  {
    return reviewCount;
  }
  
  public long getReviewCreatedDate()
  {
    return reviewCreatedDate;
  }
  
  public String getReviewer()
  {
    return reviewer;
  }
  
  public long getReviewerLastOrderFromCustomerDate()
  {
    return reviewerLastOrderFromCustomerDate;
  }
  
  public String getSentiment()
  {
    return null;
  }
  
  public int getStarRating()
  {
    return starRating;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1ReviewsDataModel.GHSReview
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */