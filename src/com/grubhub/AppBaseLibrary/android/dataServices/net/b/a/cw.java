package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSOrderReviewCheckDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewDataModel;
import java.util.ArrayList;

public class cw
  extends c<cw, cv, ArrayList<GHSIOrderReviewDataModel>, Void>
{
  private ArrayList<GHSOrderReviewCheckDataModel> j;
  
  public cw(Context paramContext)
  {
    super(paramContext);
  }
  
  public cw a(ArrayList<GHSOrderReviewCheckDataModel> paramArrayList)
  {
    j = paramArrayList;
    return this;
  }
  
  public cv b()
  {
    return new cv(this, null);
  }
  
  protected cw c()
  {
    return this;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.cw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */