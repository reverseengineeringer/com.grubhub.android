package com.grubhub.AppBaseLibrary.android.dataServices.a.f;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSPaymentTokenEnum;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIPaymentResourceCreatedDataModel;

public class f
  extends com.grubhub.AppBaseLibrary.android.dataServices.a.a<GHSIPaymentResourceCreatedDataModel>
{
  private String b;
  private String c;
  private boolean d;
  private GHSPaymentTokenEnum e;
  
  public f(String paramString1, String paramString2, boolean paramBoolean, GHSPaymentTokenEnum paramGHSPaymentTokenEnum, Context paramContext, i parami1, i parami2)
  {
    super(paramContext, parami1, parami2);
    b = paramString1;
    c = paramString2;
    d = paramBoolean;
    e = paramGHSPaymentTokenEnum;
  }
  
  public void a()
  {
    super.a();
    b().a(b, c, d, e, this, this, f());
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.a.f.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */