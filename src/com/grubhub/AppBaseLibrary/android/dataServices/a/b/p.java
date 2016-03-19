package com.grubhub.AppBaseLibrary.android.dataServices.a.b;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIPickupInfo;
import com.grubhub.AppBaseLibrary.android.dataServices.net.a;

public class p
  extends d
{
  private boolean b;
  private GHSIPickupInfo c;
  
  public p(Context paramContext, boolean paramBoolean, GHSIPickupInfo paramGHSIPickupInfo, i parami1, i parami2)
  {
    super(paramContext, parami1, parami2);
    b = paramBoolean;
    c = paramGHSIPickupInfo;
  }
  
  public void a()
  {
    super.a();
    String str = null;
    GHSICartDataModel localGHSICartDataModel = c().X();
    if (localGHSICartDataModel != null) {
      str = localGHSICartDataModel.getCartId();
    }
    b().a(str, b, c, this, this, f());
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
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.a.b.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */