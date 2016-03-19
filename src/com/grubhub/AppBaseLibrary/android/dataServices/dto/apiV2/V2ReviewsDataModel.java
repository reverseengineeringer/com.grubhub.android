package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIReviewsDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIReviewsDataModel.GHSIReviews;

public class V2ReviewsDataModel
  implements GHSIReviewsDataModel
{
  private String id;
  private V2ReviewsDataModel.GHSReviews reviews;
  
  public String getId()
  {
    return id;
  }
  
  public GHSIReviewsDataModel.GHSIReviews getReviews()
  {
    return reviews;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2ReviewsDataModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */