package com.grubhub.AppBaseLibrary.android.dataServices.a.f;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSPaymentTokenEnum;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIPaymentTokenModel;

public class b
  extends com.grubhub.AppBaseLibrary.android.dataServices.a.a<GHSIPaymentTokenModel>
{
  private GHSPaymentTokenEnum b;
  
  public b(GHSPaymentTokenEnum paramGHSPaymentTokenEnum, Context paramContext, i parami1, i parami2)
  {
    super(paramContext, parami1, parami2);
    b = paramGHSPaymentTokenEnum;
  }
  
  public void a()
  {
    super.a();
    b().a(b, this, this, f());
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.a.f.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */