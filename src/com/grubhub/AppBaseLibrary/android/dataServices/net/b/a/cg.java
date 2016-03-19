package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIDeliveryInfo;

public class cg
  extends c<cg, cf, GHSICartDataModel, Void>
{
  private String j;
  private boolean k;
  private GHSIDeliveryInfo l;
  
  public cg(Context paramContext)
  {
    super(paramContext);
  }
  
  public cg a(GHSIDeliveryInfo paramGHSIDeliveryInfo)
  {
    l = paramGHSIDeliveryInfo;
    return this;
  }
  
  public cg a(boolean paramBoolean)
  {
    k = paramBoolean;
    return this;
  }
  
  public cf b()
  {
    return new cf(this, null);
  }
  
  protected cg c()
  {
    return this;
  }
  
  public cg e(String paramString)
  {
    j = paramString;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.cg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */