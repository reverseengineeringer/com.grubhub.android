package com.grubhub.AppBaseLibrary.android.dataServices.a;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIReviewsDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIReviewsDataModel.GHSIReviews;
import java.util.ArrayList;

public class d
  extends a<GHSIReviewsDataModel>
  implements i
{
  private String b;
  private int c;
  private int d;
  private String e;
  
  public d(Context paramContext, String paramString1, int paramInt1, int paramInt2, String paramString2, i parami1, i parami2)
  {
    super(paramContext, parami1, parami2);
    b = paramString1;
    c = paramInt1;
    d = paramInt2;
    e = paramString2;
  }
  
  public void a()
  {
    super.a();
    b().a(b, c, d, e, this, this, f());
  }
  
  public void a(GHSIReviewsDataModel paramGHSIReviewsDataModel)
  {
    b localb = c();
    GHSIReviewsDataModel localGHSIReviewsDataModel = localb.C();
    if ((d > 0) && (localGHSIReviewsDataModel != null) && (paramGHSIReviewsDataModel != null))
    {
      GHSIReviewsDataModel.GHSIReviews localGHSIReviews = localGHSIReviewsDataModel.getReviews();
      int i = localGHSIReviews.getRatingCount();
      paramGHSIReviewsDataModel = paramGHSIReviewsDataModel.getReviews();
      ArrayList localArrayList = paramGHSIReviewsDataModel.getReviewList();
      localGHSIReviews.updateRatingCount(i + paramGHSIReviewsDataModel.getRatingCount());
      localGHSIReviews.addToReviewList(localArrayList);
      localb.a(localGHSIReviewsDataModel);
      super.onResponse(localGHSIReviewsDataModel);
      return;
    }
    localb.a(paramGHSIReviewsDataModel);
    super.onResponse(paramGHSIReviewsDataModel);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.a.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */