package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIGetPaymentsModel;

public class bp
  extends c<bp, bo, GHSIGetPaymentsModel, Void>
{
  private String j;
  
  public bp(Context paramContext)
  {
    super(paramContext);
  }
  
  public bo b()
  {
    return new bo(this, null);
  }
  
  protected bp c()
  {
    return this;
  }
  
  public bp e(String paramString)
  {
    j = paramString;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.bp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */