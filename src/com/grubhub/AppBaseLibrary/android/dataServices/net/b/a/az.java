package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewSurveyDataModel;
import com.grubhub.AppBaseLibrary.android.order.g;
import java.util.ArrayList;

public class az
  extends c<az, ay, ArrayList<GHSIOrderReviewSurveyDataModel>, Void>
{
  private String j;
  private g k;
  private String l;
  
  public az(Context paramContext)
  {
    super(paramContext);
  }
  
  public az a(g paramg)
  {
    k = paramg;
    return this;
  }
  
  public ay b()
  {
    return new ay(this, null);
  }
  
  protected az c()
  {
    return this;
  }
  
  public az e(String paramString)
  {
    j = paramString;
    return this;
  }
  
  public az f(String paramString)
  {
    l = paramString;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.az
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */