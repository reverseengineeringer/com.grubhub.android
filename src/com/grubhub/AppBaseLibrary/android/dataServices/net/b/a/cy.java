package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSOrderReviewCheckDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewDataModel;
import java.util.ArrayList;

public class cy
  extends c<cy, cx, ArrayList<GHSIOrderReviewDataModel>, ArrayList<GHSIOrderReviewDataModel>>
{
  private ArrayList<GHSOrderReviewCheckDataModel> j;
  
  public cy(Context paramContext)
  {
    super(paramContext);
  }
  
  public cy a(ArrayList<GHSOrderReviewCheckDataModel> paramArrayList)
  {
    j = paramArrayList;
    return this;
  }
  
  public cx b()
  {
    return new cx(this, null);
  }
  
  protected cy c()
  {
    return this;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.cy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */