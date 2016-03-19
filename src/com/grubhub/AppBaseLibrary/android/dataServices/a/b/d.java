package com.grubhub.AppBaseLibrary.android.dataServices.a.b;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.grubhub.AppBaseLibrary.android.GHSMainActivity;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIBillModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel.PaymentTypes;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel;
import com.grubhub.AppBaseLibrary.android.order.g;
import com.grubhub.AppBaseLibrary.android.order.receipt.GHSReceiptActivity;
import java.util.HashMap;

public abstract class d
  extends com.grubhub.AppBaseLibrary.android.dataServices.a.a<GHSICartDataModel>
{
  public d(Context paramContext, com.grubhub.AppBaseLibrary.android.dataServices.a.i parami1, com.grubhub.AppBaseLibrary.android.dataServices.a.i parami2)
  {
    super(paramContext, parami1, parami2);
  }
  
  public void a(com.grubhub.AppBaseLibrary.android.b.b paramb)
  {
    if ((paramb == null) || (paramb.c() != com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_CHECKOUT_ORDER_ALREADY_COMPLETED))
    {
      super.a(paramb);
      return;
    }
    Object localObject2 = c();
    final GHSIBillModel localGHSIBillModel = ((com.grubhub.AppBaseLibrary.android.dataServices.b.b)localObject2).Y();
    Object localObject1 = ((com.grubhub.AppBaseLibrary.android.dataServices.b.b)localObject2).N();
    if ((localGHSIBillModel == null) || (localObject1 == null))
    {
      super.a(paramb);
      return;
    }
    ((com.grubhub.AppBaseLibrary.android.dataServices.b.b)localObject2).b(localGHSIBillModel);
    ((com.grubhub.AppBaseLibrary.android.dataServices.b.b)localObject2).c(((com.grubhub.AppBaseLibrary.android.dataServices.b.b)localObject2).U());
    paramb = a;
    localObject2 = ((GHSIUserAuthDataModel)localObject1).getFirstName();
    localObject1 = ((GHSIUserAuthDataModel)localObject1).getLastName();
    String str = localGHSIBillModel.getCustomerContactPhone();
    boolean bool;
    if (localGHSIBillModel.getOrderType() == g.DELIVERY)
    {
      bool = true;
      paramb = GHSReceiptActivity.a(paramb, "", (String)localObject2, (String)localObject1, str, bool, GHSICartPaymentDataModel.PaymentTypes.fromString(localGHSIBillModel.getOrderPaymentType()), com.grubhub.AppBaseLibrary.android.order.receipt.a.LAUNCHED_BY_MODIFYING_PLACED_ORDER);
      if (!(a instanceof GHSMainActivity)) {
        break label209;
      }
      ((GHSMainActivity)a).h();
    }
    for (;;)
    {
      paramb.addFlags(268435456);
      a.startActivity(paramb);
      com.grubhub.AppBaseLibrary.android.order.cart.i.a();
      com.grubhub.AppBaseLibrary.android.utils.e.a.a.a("MODIFY_CHECKED_OUT_CART", new HashMap() {});
      return;
      bool = false;
      break;
      label209:
      if ((a instanceof Activity))
      {
        ((Activity)a).setResult(23, new Intent());
        ((Activity)a).finish();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.a.b.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */