package com.grubhub.AppBaseLibrary.android.dataServices.a.b;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIBillModel;

public class i
  extends com.grubhub.AppBaseLibrary.android.dataServices.a.a<GHSIBillModel>
{
  private String b;
  
  public i(Context paramContext, String paramString, com.grubhub.AppBaseLibrary.android.dataServices.a.i parami1, com.grubhub.AppBaseLibrary.android.dataServices.a.i parami2)
  {
    super(paramContext, parami1, parami2);
    b = paramString;
  }
  
  public void a()
  {
    super.a();
    b().g(b, this, this, f());
  }
  
  public void a(GHSIBillModel paramGHSIBillModel)
  {
    if (paramGHSIBillModel != null) {
      c().a(paramGHSIBillModel);
    }
    super.onResponse(paramGHSIBillModel);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.a.b.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */