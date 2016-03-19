package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;

public class ae
  extends c<ae, ad, GHSICartDataModel, Void>
{
  private String j;
  private String k;
  
  public ae(Context paramContext)
  {
    super(paramContext);
  }
  
  public ad b()
  {
    return new ad(this);
  }
  
  protected ae c()
  {
    return this;
  }
  
  public ae e(String paramString)
  {
    j = paramString;
    return this;
  }
  
  public ae f(String paramString)
  {
    k = paramString;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */