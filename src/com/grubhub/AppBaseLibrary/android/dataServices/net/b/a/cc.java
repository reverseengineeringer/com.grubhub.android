package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.favorites.GHSIFavoriteListDataModel;

public class cc
  extends c<cc, cb, GHSIFavoriteListDataModel, Void>
{
  protected String j;
  protected String k;
  
  public cc(Context paramContext)
  {
    super(paramContext);
  }
  
  public cb b()
  {
    return new cb(this, null);
  }
  
  protected cc c()
  {
    return this;
  }
  
  public cc e(String paramString)
  {
    j = paramString;
    return this;
  }
  
  public cc f(String paramString)
  {
    k = paramString;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.cc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */