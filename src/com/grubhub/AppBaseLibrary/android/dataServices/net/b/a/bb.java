package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSPaymentTokenEnum;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIPaymentTokenModel;

public class bb
  extends c<bb, ba, GHSIPaymentTokenModel, Void>
{
  private GHSPaymentTokenEnum j;
  
  public bb(Context paramContext)
  {
    super(paramContext);
  }
  
  public bb a(GHSPaymentTokenEnum paramGHSPaymentTokenEnum)
  {
    j = paramGHSPaymentTokenEnum;
    return this;
  }
  
  public ba b()
  {
    return new ba(this);
  }
  
  protected bb c()
  {
    return this;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.bb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */