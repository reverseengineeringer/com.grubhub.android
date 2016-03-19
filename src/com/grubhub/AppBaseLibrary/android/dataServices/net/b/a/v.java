package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;

public class v
  extends c<v, u, GHSICartDataModel, Void>
{
  private String j;
  private Long k;
  
  public v(Context paramContext)
  {
    super(paramContext);
  }
  
  public v a(Long paramLong)
  {
    k = paramLong;
    return this;
  }
  
  public u b()
  {
    return new u(this, null);
  }
  
  protected v c()
  {
    return this;
  }
  
  public v e(String paramString)
  {
    j = paramString;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */