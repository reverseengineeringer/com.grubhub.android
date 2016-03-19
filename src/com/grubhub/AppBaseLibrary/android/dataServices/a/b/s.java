package com.grubhub.AppBaseLibrary.android.dataServices.a.b;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIMenuItemUpdateModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.a;

public class s
  extends d
{
  private String b;
  private String c;
  private GHSIMenuItemUpdateModel d;
  
  public s(Context paramContext, String paramString1, String paramString2, GHSIMenuItemUpdateModel paramGHSIMenuItemUpdateModel, i parami1, i parami2)
  {
    super(paramContext, parami1, parami2);
    b = paramString1;
    c = paramString2;
    d = paramGHSIMenuItemUpdateModel;
  }
  
  public void a()
  {
    super.a();
    b().a(b, c, d, this, this, f());
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
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.a.b.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */