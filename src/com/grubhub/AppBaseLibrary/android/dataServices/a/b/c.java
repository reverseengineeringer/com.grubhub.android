package com.grubhub.AppBaseLibrary.android.dataServices.a.b;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSCartPaymentDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel.PaymentTypes;
import com.grubhub.AppBaseLibrary.android.dataServices.net.a;

public class c
  extends d
{
  private String b;
  private GHSICartPaymentDataModel.PaymentTypes c;
  private Integer d;
  
  public c(Context paramContext, String paramString, GHSICartPaymentDataModel.PaymentTypes paramPaymentTypes, Integer paramInteger, i parami1, i parami2)
  {
    super(paramContext, parami1, parami2);
    b = paramString;
    c = paramPaymentTypes;
    d = paramInteger;
  }
  
  public void a()
  {
    super.a();
    String str = null;
    Object localObject = c().X();
    if (localObject != null) {
      str = ((GHSICartDataModel)localObject).getCartId();
    }
    localObject = new GHSCartPaymentDataModel();
    ((GHSCartPaymentDataModel)localObject).setType(c);
    ((GHSCartPaymentDataModel)localObject).setAmount(d);
    ((GHSCartPaymentDataModel)localObject).setPaymentId(b);
    b().a(str, (GHSICartPaymentDataModel)localObject, this, this, f());
  }
  
  public void a(GHSICartDataModel paramGHSICartDataModel)
  {
    if (paramGHSICartDataModel != null) {
      c().a(paramGHSICartDataModel);
    }
    super.onResponse(paramGHSICartDataModel);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.a.b.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */