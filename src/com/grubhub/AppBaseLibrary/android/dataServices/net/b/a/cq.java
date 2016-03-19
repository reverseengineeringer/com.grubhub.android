package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;

public class cq
  extends c<cq, cp, GHSICartDataModel, Void>
{
  private String j;
  private long k;
  
  public cq(Context paramContext)
  {
    super(paramContext);
  }
  
  public cq a(long paramLong)
  {
    k = paramLong;
    return this;
  }
  
  public cp b()
  {
    return new cp(this, null);
  }
  
  protected cq c()
  {
    return this;
  }
  
  public cq e(String paramString)
  {
    j = paramString;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.cq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */