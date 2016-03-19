package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIMenuItemUpdateModel;

public class cs
  extends c<cs, cr, GHSICartDataModel, Void>
{
  private String j;
  private String k;
  private GHSIMenuItemUpdateModel l;
  
  public cs(Context paramContext)
  {
    super(paramContext);
  }
  
  public cs a(GHSIMenuItemUpdateModel paramGHSIMenuItemUpdateModel)
  {
    l = paramGHSIMenuItemUpdateModel;
    return this;
  }
  
  public cr b()
  {
    return new cr(this);
  }
  
  protected cs c()
  {
    return this;
  }
  
  public cs e(String paramString)
  {
    j = paramString;
    return this;
  }
  
  public cs f(String paramString)
  {
    k = paramString;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.cs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */