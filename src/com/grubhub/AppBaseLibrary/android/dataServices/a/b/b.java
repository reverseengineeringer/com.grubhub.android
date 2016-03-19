package com.grubhub.AppBaseLibrary.android.dataServices.a.b;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIMenuItemUpdateModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.a;
import com.grubhub.AppBaseLibrary.android.utils.c.c;
import com.grubhub.AppBaseLibrary.android.utils.c.h;

public class b
  extends d
{
  private String b;
  private GHSIMenuItemUpdateModel c;
  
  public b(Context paramContext, String paramString, GHSIMenuItemUpdateModel paramGHSIMenuItemUpdateModel, i parami1, i parami2)
  {
    super(paramContext, parami1, parami2);
    b = paramString;
    c = paramGHSIMenuItemUpdateModel;
  }
  
  public void a()
  {
    super.a();
    b().a(b, c, this, this, f());
  }
  
  public void a(com.grubhub.AppBaseLibrary.android.b.b paramb)
  {
    d().a(new c("menu item", "add to bag", "error"));
    super.a(paramb);
  }
  
  public void a(GHSICartDataModel paramGHSICartDataModel)
  {
    if (paramGHSICartDataModel != null)
    {
      c().a(paramGHSICartDataModel);
      d().a(new c("menu item", "add to bag", "success"));
    }
    super.onResponse(paramGHSICartDataModel);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.a.b.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */