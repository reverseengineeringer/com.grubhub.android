package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIReviewsDataModel.GHSIReview;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIReviewsDataModel.GHSIReviews;
import java.util.ArrayList;
import java.util.Iterator;

class V1ReviewsDataModel$GHSReviews
  implements GHSIReviewsDataModel.GHSIReviews
{
  private int ratingCount;
  private ArrayList<V1ReviewsDataModel.GHSReview> review;
  
  private V1ReviewsDataModel$GHSReviews(V1ReviewsDataModel paramV1ReviewsDataModel) {}
  
  public void addToReviewList(ArrayList<GHSIReviewsDataModel.GHSIReview> paramArrayList)
  {
    if ((paramArrayList != null) && (!paramArrayList.isEmpty()))
    {
      if (review == null) {
        review = new ArrayList();
      }
      paramArrayList = paramArrayList.iterator();
      while (paramArrayList.hasNext())
      {
        GHSIReviewsDataModel.GHSIReview localGHSIReview = (GHSIReviewsDataModel.GHSIReview)paramArrayList.next();
        review.add((V1ReviewsDataModel.GHSReview)localGHSIReview);
      }
    }
  }
  
  public int getRatingCount()
  {
    return ratingCount;
  }
  
  public float getRestaurantScore()
  {
    return 0.0F;
  }
  
  public ArrayList<GHSIReviewsDataModel.GHSIReview> getReviewList()
  {
    ArrayList localArrayList = new ArrayList();
    if ((review != null) && (!review.isEmpty()))
    {
      Iterator localIterator = review.iterator();
      while (localIterator.hasNext()) {
        localArrayList.add((GHSIReviewsDataModel.GHSIReview)localIterator.next());
      }
    }
    return localArrayList;
  }
  
  public void updateRatingCount(int paramInt)
  {
    ratingCount = paramInt;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1ReviewsDataModel.GHSReviews
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */