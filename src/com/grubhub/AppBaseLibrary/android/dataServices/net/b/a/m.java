package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel;

public class m
  extends c<m, l, GHSICartDataModel, Void>
{
  private String j;
  private GHSICartPaymentDataModel k;
  
  public m(Context paramContext)
  {
    super(paramContext);
  }
  
  public m a(GHSICartPaymentDataModel paramGHSICartPaymentDataModel)
  {
    k = paramGHSICartPaymentDataModel;
    return this;
  }
  
  public l b()
  {
    return new l(this);
  }
  
  protected m c()
  {
    return this;
  }
  
  public m e(String paramString)
  {
    j = paramString;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */