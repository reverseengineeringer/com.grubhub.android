package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;
import com.grubhub.AppBaseLibrary.android.order.l;

public class bd
  extends c<bd, bc, GHSIRestaurantDataModel, Void>
{
  protected String j;
  protected String k;
  protected String l;
  protected Long m;
  protected l n;
  
  public bd(Context paramContext)
  {
    super(paramContext);
  }
  
  public bd a(l paraml)
  {
    n = paraml;
    return this;
  }
  
  public bd a(Long paramLong)
  {
    m = paramLong;
    return this;
  }
  
  public bc b()
  {
    return new bc(this, null);
  }
  
  protected bd c()
  {
    return this;
  }
  
  public bd e(String paramString)
  {
    j = paramString;
    return this;
  }
  
  public bd f(String paramString)
  {
    k = paramString;
    return this;
  }
  
  public bd g(String paramString)
  {
    l = paramString;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.bd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */