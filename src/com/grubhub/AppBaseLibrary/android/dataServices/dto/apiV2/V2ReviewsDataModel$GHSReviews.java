package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIReviewsDataModel.GHSIReview;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIReviewsDataModel.GHSIReviews;
import java.util.ArrayList;
import java.util.Iterator;

class V2ReviewsDataModel$GHSReviews
  implements GHSIReviewsDataModel.GHSIReviews
{
  private int rating_count;
  private float restaurant_score;
  private ArrayList<V2ReviewsDataModel.GHSReview> review;
  
  private V2ReviewsDataModel$GHSReviews(V2ReviewsDataModel paramV2ReviewsDataModel) {}
  
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
        review.add((V2ReviewsDataModel.GHSReview)localGHSIReview);
      }
    }
  }
  
  public int getRatingCount()
  {
    return rating_count;
  }
  
  public float getRestaurantScore()
  {
    return restaurant_score;
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
    rating_count = paramInt;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2ReviewsDataModel.GHSReviews
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */