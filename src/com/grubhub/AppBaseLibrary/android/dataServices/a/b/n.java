package com.grubhub.AppBaseLibrary.android.dataServices.a.b;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.a;

public class n
  extends d
{
  private String b;
  
  public n(Context paramContext, String paramString, i parami1, i parami2)
  {
    super(paramContext, parami1, parami2);
    b = paramString;
  }
  
  public void a()
  {
    super.a();
    String str = null;
    GHSICartDataModel localGHSICartDataModel = c().X();
    if (localGHSICartDataModel != null) {
      str = localGHSICartDataModel.getCartId();
    }
    b().f(str, b, this, this, f());
  }
  
  public void a(GHSICartDataModel paramGHSICartDataModel)
  {
    if (paramGHSICartDataModel != null)
    {
      b localb = c();
      localb.a(paramGHSICartDataModel);
      localb.g(null);
    }
    super.onResponse(paramGHSICartDataModel);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.a.b.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */