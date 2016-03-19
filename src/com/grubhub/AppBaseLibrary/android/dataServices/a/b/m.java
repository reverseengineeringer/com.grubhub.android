package com.grubhub.AppBaseLibrary.android.dataServices.a.b;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSSelectedPaymentModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIBillModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel.PaymentTypes;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICheckoutResponse;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel;
import com.grubhub.AppBaseLibrary.android.utils.c.h;
import java.util.HashMap;
import java.util.Map;

public class m
  extends com.grubhub.AppBaseLibrary.android.dataServices.a.a<GHSICheckoutResponse>
{
  private boolean b;
  private String c;
  private String d;
  
  public m(Context paramContext, boolean paramBoolean, String paramString1, String paramString2, com.grubhub.AppBaseLibrary.android.dataServices.a.i parami1, com.grubhub.AppBaseLibrary.android.dataServices.a.i parami2)
  {
    super(paramContext, parami1, parami2);
    b = paramBoolean;
    c = paramString1;
    d = paramString2;
  }
  
  private String a(com.grubhub.AppBaseLibrary.android.dataServices.b.b paramb)
  {
    return paramb.s().getSelectedPaymentType().toLoggingString();
  }
  
  private void a(boolean paramBoolean, com.grubhub.AppBaseLibrary.android.dataServices.b.b paramb)
  {
    d().a(paramb.X());
    h localh = d();
    String str1;
    if (b)
    {
      str1 = "delivery";
      if (!paramBoolean) {
        break label66;
      }
    }
    label66:
    for (String str2 = "successful";; str2 = "error")
    {
      localh.b(new com.grubhub.AppBaseLibrary.android.utils.c.c("submit order", str1, str2, a(paramb)));
      return;
      str1 = "pickup";
      break;
    }
  }
  
  public void a()
  {
    super.a();
    b().e(c, d, this, this, f());
  }
  
  public void a(com.grubhub.AppBaseLibrary.android.b.b paramb)
  {
    Object localObject2 = null;
    Object localObject1 = c();
    a(false, (com.grubhub.AppBaseLibrary.android.dataServices.b.b)localObject1);
    Object localObject3 = new com.grubhub.AppBaseLibrary.android.utils.e.a.a.a();
    paramb.accept((com.grubhub.AppBaseLibrary.android.utils.e.a.a.c)localObject3);
    localObject3 = ((com.grubhub.AppBaseLibrary.android.utils.e.a.a.a)localObject3).a();
    if (localObject3 != null)
    {
      GHSIUserAuthDataModel localGHSIUserAuthDataModel = ((com.grubhub.AppBaseLibrary.android.dataServices.b.b)localObject1).N();
      localObject1 = ((com.grubhub.AppBaseLibrary.android.dataServices.b.b)localObject1).Y();
      if (localGHSIUserAuthDataModel != null) {
        ((Map)localObject3).put("UserId", localGHSIUserAuthDataModel.getUdid());
      }
      if (localObject1 != null)
      {
        ((Map)localObject3).put("BillId", ((GHSIBillModel)localObject1).getCartId());
        if (((GHSIBillModel)localObject1).getAppliedPayment() == null) {
          break label200;
        }
        localObject1 = ((GHSIBillModel)localObject1).getAppliedPayment().getPaymentId();
        ((Map)localObject3).put("PaymentId", localObject1);
      }
      if (paramb != null) {
        if (paramb.e() == null) {
          break label205;
        }
      }
    }
    label200:
    label205:
    for (localObject1 = paramb.e().a();; localObject1 = null)
    {
      ((Map)localObject3).put("ErrorProperty", localObject1);
      localObject1 = localObject2;
      if (paramb.e() != null) {
        localObject1 = paramb.e().b();
      }
      ((Map)localObject3).put("ErrorServerMessage", localObject1);
      com.grubhub.AppBaseLibrary.android.utils.e.a.a.a("PAYMENTS_CHECKOUT_INVALID", (Map)localObject3);
      super.a(paramb);
      return;
      localObject1 = null;
      break;
    }
  }
  
  public void a(GHSICheckoutResponse paramGHSICheckoutResponse)
  {
    com.grubhub.AppBaseLibrary.android.dataServices.b.b localb = c();
    String str1;
    String str2;
    if (paramGHSICheckoutResponse != null)
    {
      int i = localb.n();
      GHSICartDataModel localGHSICartDataModel = localb.X();
      if (localGHSICartDataModel != null)
      {
        str1 = localGHSICartDataModel.getCartId();
        h localh = d();
        HashMap localHashMap = new HashMap();
        if (i <= 0) {
          break label127;
        }
        str2 = "repeat order";
        label63:
        localHashMap.put("New_Or_RepeatOrder", str2);
        localh.a(localHashMap);
        localh.a(com.grubhub.AppBaseLibrary.android.utils.c.i.a(localGHSICartDataModel, a(localb), str1));
        localb.a(i + 1);
        a(true, localb);
      }
    }
    for (;;)
    {
      super.onResponse(paramGHSICheckoutResponse);
      return;
      str1 = null;
      break;
      label127:
      str2 = "first-time order";
      break label63;
      a(false, localb);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.a.b.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */