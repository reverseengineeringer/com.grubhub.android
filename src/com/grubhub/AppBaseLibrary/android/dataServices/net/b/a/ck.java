package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIPickupInfo;

public class ck
  extends c<ck, cj, GHSICartDataModel, Void>
{
  private String j;
  private boolean k;
  private GHSIPickupInfo l;
  
  public ck(Context paramContext)
  {
    super(paramContext);
  }
  
  public ck a(GHSIPickupInfo paramGHSIPickupInfo)
  {
    l = paramGHSIPickupInfo;
    return this;
  }
  
  public ck a(boolean paramBoolean)
  {
    k = paramBoolean;
    return this;
  }
  
  public cj b()
  {
    return new cj(this, null);
  }
  
  protected ck c()
  {
    return this;
  }
  
  public ck e(String paramString)
  {
    j = paramString;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.ck
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */