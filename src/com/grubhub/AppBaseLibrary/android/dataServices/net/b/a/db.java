package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSPaymentTokenEnum;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIPaymentResourceCreatedDataModel;

public class db
  extends c<db, da, GHSIPaymentResourceCreatedDataModel, Void>
{
  private String j;
  private String k;
  private boolean l;
  private GHSPaymentTokenEnum m;
  
  public db(Context paramContext)
  {
    super(paramContext);
  }
  
  public db a(GHSPaymentTokenEnum paramGHSPaymentTokenEnum)
  {
    m = paramGHSPaymentTokenEnum;
    return this;
  }
  
  public db a(boolean paramBoolean)
  {
    l = paramBoolean;
    return this;
  }
  
  public da b()
  {
    return new da(this);
  }
  
  protected db c()
  {
    return this;
  }
  
  public db e(String paramString)
  {
    j = paramString;
    return this;
  }
  
  public db f(String paramString)
  {
    k = paramString;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.db
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */