package com.grubhub.AppBaseLibrary.android.dataServices.a.b;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.order.l;

public class e
  extends com.grubhub.AppBaseLibrary.android.dataServices.a.a<GHSICartDataModel>
{
  private Long b;
  private l c;
  
  public e(Context paramContext, l paraml, Long paramLong, com.grubhub.AppBaseLibrary.android.dataServices.a.i parami1, com.grubhub.AppBaseLibrary.android.dataServices.a.i parami2)
  {
    super(paramContext, parami1, parami2);
    b = paramLong;
    c = paraml;
  }
  
  public void a()
  {
    super.a();
    Long localLong = b;
    if (c != l.FUTURE) {
      localLong = null;
    }
    b().a(localLong, this, this, f());
  }
  
  public void a(GHSICartDataModel paramGHSICartDataModel)
  {
    if (paramGHSICartDataModel != null)
    {
      i();
      c().a(paramGHSICartDataModel);
    }
    super.onResponse(paramGHSICartDataModel);
  }
  
  protected void i() {}
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.a.b.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */