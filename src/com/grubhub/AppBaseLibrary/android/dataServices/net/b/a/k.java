package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIMenuItemUpdateModel;

public class k
  extends c<k, j, GHSICartDataModel, Void>
{
  private String j;
  private GHSIMenuItemUpdateModel k;
  
  public k(Context paramContext)
  {
    super(paramContext);
  }
  
  public k a(GHSIMenuItemUpdateModel paramGHSIMenuItemUpdateModel)
  {
    k = paramGHSIMenuItemUpdateModel;
    return this;
  }
  
  public j b()
  {
    return new j(this);
  }
  
  protected k c()
  {
    return this;
  }
  
  public k e(String paramString)
  {
    j = paramString;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */