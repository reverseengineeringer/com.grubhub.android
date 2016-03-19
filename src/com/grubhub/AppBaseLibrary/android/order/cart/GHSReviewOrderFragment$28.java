package com.grubhub.AppBaseLibrary.android.order.cart;

import android.content.DialogInterface;
import com.grubhub.AppBaseLibrary.android.b.a;
import com.grubhub.AppBaseLibrary.android.b.b;
import com.grubhub.AppBaseLibrary.android.d;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIBillModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIBillModel.BillState;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIBillModel.GHSIValidationError;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel.PaymentTypes;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import com.grubhub.AppBaseLibrary.android.utils.f;
import java.util.List;

class GHSReviewOrderFragment$28
  implements e<GHSIBillModel>
{
  GHSReviewOrderFragment$28(GHSReviewOrderFragment paramGHSReviewOrderFragment, GHSICartPaymentDataModel.PaymentTypes paramPaymentTypes, String paramString1, String paramString2) {}
  
  public void a(GHSIBillModel paramGHSIBillModel)
  {
    if (paramGHSIBillModel == null)
    {
      GHSReviewOrderFragment.a(d, new b(a.ERROR_CODE_UNKNOWN));
      return;
    }
    if ((paramGHSIBillModel.getBillState() != GHSIBillModel.BillState.READY_FOR_CHECKOUT) || (f.a(paramGHSIBillModel.getCheckoutToken())))
    {
      a locala = a.ERROR_CODE_UNKNOWN;
      List localList = paramGHSIBillModel.getValidationErrors();
      paramGHSIBillModel = locala;
      if (localList != null)
      {
        paramGHSIBillModel = locala;
        if (!localList.isEmpty()) {
          paramGHSIBillModel = ((GHSIBillModel.GHSIValidationError)localList.get(0)).getAppError();
        }
      }
      GHSReviewOrderFragment.a(d, new b(paramGHSIBillModel));
      return;
    }
    if (com.grubhub.AppBaseLibrary.android.utils.c.a(GHSReviewOrderFragment.s(d), paramGHSIBillModel))
    {
      GHSReviewOrderFragment.a(d, paramGHSIBillModel, a, b);
      return;
    }
    GHSReviewOrderFragment.a(d, null);
    paramGHSIBillModel = new b(a.ERROR_CODE_CHECKOUT_TOTALS_MISMATCH);
    com.grubhub.AppBaseLibrary.android.c.a(d.getActivity(), paramGHSIBillModel.f(), paramGHSIBillModel.getLocalizedMessage(), paramGHSIBillModel.g(), paramGHSIBillModel.h(), paramGHSIBillModel.i(), new d()
    {
      public void a(DialogInterface paramAnonymousDialogInterface)
      {
        GHSReviewOrderFragment.a(d, c);
      }
      
      public void a(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        GHSReviewOrderFragment.a(d, c);
      }
      
      public void b(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        GHSReviewOrderFragment.a(d, c);
      }
      
      public void c(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        GHSReviewOrderFragment.a(d, c);
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.GHSReviewOrderFragment.28
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */