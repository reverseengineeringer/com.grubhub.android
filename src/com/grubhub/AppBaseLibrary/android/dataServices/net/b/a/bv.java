package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICheckoutResponse;

public class bv
  extends c<bv, bu, GHSICheckoutResponse, Void>
{
  private String j;
  private String k;
  
  public bv(Context paramContext)
  {
    super(paramContext);
  }
  
  public bu b()
  {
    return new bu(this);
  }
  
  protected bv c()
  {
    return this;
  }
  
  public bv e(String paramString)
  {
    j = paramString;
    return this;
  }
  
  public bv f(String paramString)
  {
    k = paramString;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.bv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */