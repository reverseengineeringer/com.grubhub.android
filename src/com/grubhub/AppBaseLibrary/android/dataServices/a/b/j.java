package com.grubhub.AppBaseLibrary.android.dataServices.a.b;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;

public class j
  extends com.grubhub.AppBaseLibrary.android.dataServices.a.a<GHSICartDataModel>
{
  private String b;
  
  public j(Context paramContext, String paramString, i parami1, i parami2)
  {
    super(paramContext, parami1, parami2);
    b = paramString;
  }
  
  public void a()
  {
    super.a();
    b().f(b, this, this, f());
  }
  
  public void a(GHSICartDataModel paramGHSICartDataModel)
  {
    if (paramGHSICartDataModel != null) {
      c().a(paramGHSICartDataModel);
    }
    super.onResponse(paramGHSICartDataModel);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.a.b.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */