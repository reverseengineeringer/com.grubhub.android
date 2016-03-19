package com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection;

import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSSelectedPaymentModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel.PaymentTypes;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIPaymentResourceCreatedDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIVaultedPayPalModel;
import com.grubhub.AppBaseLibrary.android.utils.g.c;
import com.grubhub.AppBaseLibrary.android.utils.g.d;
import com.grubhub.AppBaseLibrary.android.utils.g.f;
import java.util.ArrayList;
import java.util.List;

class GHSPaymentSelectionInfoFragment$3
  implements com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.b.e
{
  GHSPaymentSelectionInfoFragment$3(GHSPaymentSelectionInfoFragment paramGHSPaymentSelectionInfoFragment, f paramf) {}
  
  public void a()
  {
    final ArrayList localArrayList = b.c.S();
    GHSSelectedPaymentModel localGHSSelectedPaymentModel;
    if ((GHSPaymentSelectionInfoFragment.b(b) == com.grubhub.AppBaseLibrary.android.account.e.ENTER) && (localArrayList != null) && (!localArrayList.isEmpty()))
    {
      localGHSSelectedPaymentModel = b.c.s();
      if (localGHSSelectedPaymentModel != null) {
        break label198;
      }
      localGHSSelectedPaymentModel = new GHSSelectedPaymentModel();
    }
    label198:
    for (;;)
    {
      localGHSSelectedPaymentModel.setSelectedPayPalId(((GHSIVaultedPayPalModel)localArrayList.get(0)).getId());
      b.c.a(localGHSSelectedPaymentModel);
      if (b.g() != null) {
        b.g().a(new GHSIPaymentResourceCreatedDataModel()
        {
          public boolean getAlreadyExists()
          {
            return false;
          }
          
          public String getId()
          {
            return ((GHSIVaultedPayPalModel)localArrayList.get(0)).getId();
          }
          
          public String getUri()
          {
            return null;
          }
        }, GHSICartPaymentDataModel.PaymentTypes.PAYPAL_EXPRESS);
      }
      return;
      if (b.g() != null) {
        b.g().b();
      }
      GHSPaymentSelectionInfoFragment.a(b, new c(b.getActivity(), a));
      GHSPaymentSelectionInfoFragment.c(b).a(new d()
      {
        public void a()
        {
          if (b.g() != null) {
            b.g().b();
          }
        }
      });
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.GHSPaymentSelectionInfoFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */