package com.grubhub.AppBaseLibrary.android.dataServices.a.h;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewSurveyDataModel;
import com.grubhub.AppBaseLibrary.android.order.g;
import java.util.ArrayList;

public class a
  extends com.grubhub.AppBaseLibrary.android.dataServices.a.a<ArrayList<GHSIOrderReviewSurveyDataModel>>
{
  private String b;
  private g c;
  private String d;
  
  public a(Context paramContext, String paramString1, g paramg, String paramString2, i parami1, i parami2)
  {
    super(paramContext, parami1, parami2);
    b = paramString1;
    c = paramg;
    d = paramString2;
  }
  
  public void a()
  {
    super.a();
    b().a(b, c, d, this, this, f());
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.a.h.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */