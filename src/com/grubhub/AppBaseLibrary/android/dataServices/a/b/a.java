package com.grubhub.AppBaseLibrary.android.dataServices.a.b;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;

public class a
  extends d
{
  private String b;
  private String c;
  
  public a(Context paramContext, String paramString1, String paramString2, i parami1, i parami2)
  {
    super(paramContext, parami1, parami2);
    b = paramString1;
    c = paramString2;
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
    if (paramGHSICartDataModel != null)
    {
      b localb = c();
      localb.a(paramGHSICartDataModel);
      localb.g(b);
    }
    super.onResponse(paramGHSICartDataModel);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.a.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */