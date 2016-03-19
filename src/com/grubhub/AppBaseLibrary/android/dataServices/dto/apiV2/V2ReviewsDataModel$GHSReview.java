package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import android.text.Html;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIReviewsDataModel.GHSIReview;

class V2ReviewsDataModel$GHSReview
  implements GHSIReviewsDataModel.GHSIReview
{
  private String content;
  private String id;
  private int order_count;
  private int review_count;
  private long review_created_date;
  private String reviewer;
  private long reviewer_last_order_from_customer_date;
  private String sentiment;
  private int star_rating;
  
  private V2ReviewsDataModel$GHSReview(V2ReviewsDataModel paramV2ReviewsDataModel) {}
  
  public String getContent()
  {
    return Html.fromHtml(content).toString();
  }
  
  public String getId()
  {
    return id;
  }
  
  public int getOrderCount()
  {
    return order_count;
  }
  
  public int getReviewCount()
  {
    return review_count;
  }
  
  public long getReviewCreatedDate()
  {
    return review_created_date;
  }
  
  public String getReviewer()
  {
    return reviewer;
  }
  
  public long getReviewerLastOrderFromCustomerDate()
  {
    return reviewer_last_order_from_customer_date;
  }
  
  public String getSentiment()
  {
    return sentiment;
  }
  
  public int getStarRating()
  {
    return star_rating;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2ReviewsDataModel.GHSReview
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */