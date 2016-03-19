package com.grubhub.AppBaseLibrary.android.dataServices.a.h;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSOrderReviewCheckDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewDataModel;
import com.grubhub.AppBaseLibrary.android.utils.d;
import java.util.ArrayList;

public class b
  extends com.grubhub.AppBaseLibrary.android.dataServices.a.a<ArrayList<GHSIOrderReviewDataModel>>
{
  protected ArrayList<GHSOrderReviewCheckDataModel> b;
  private boolean c;
  
  public b(Context paramContext, ArrayList<GHSOrderReviewCheckDataModel> paramArrayList, boolean paramBoolean, i parami1, i parami2)
  {
    super(paramContext, parami1, parami2);
    b = paramArrayList;
    c = paramBoolean;
  }
  
  public void a()
  {
    super.a();
    b().a(b, c, this, this, f());
  }
  
  public void a(ArrayList<GHSIOrderReviewDataModel> paramArrayList)
  {
    if (paramArrayList != null) {
      c().c(paramArrayList);
    }
    super.onResponse(d.b(paramArrayList));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.a.h.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */