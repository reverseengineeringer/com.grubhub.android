package com.grubhub.AppBaseLibrary.android.dataServices.a.e;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSReorderDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;

public class d
  extends com.grubhub.AppBaseLibrary.android.dataServices.a.a<GHSICartDataModel>
{
  private GHSReorderDataModel b;
  
  public d(Context paramContext, GHSReorderDataModel paramGHSReorderDataModel, i parami1, i parami2)
  {
    super(paramContext, parami1, parami2);
    b = paramGHSReorderDataModel;
  }
  
  public void a()
  {
    super.a();
    b().a(b, this, this, f());
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
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.a.e.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */