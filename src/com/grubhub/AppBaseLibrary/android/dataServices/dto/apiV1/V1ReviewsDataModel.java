package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIReviewsDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIReviewsDataModel.GHSIReviews;

public class V1ReviewsDataModel
  implements GHSIReviewsDataModel
{
  private String id;
  private V1ReviewsDataModel.GHSReviews reviews;
  
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
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1ReviewsDataModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */