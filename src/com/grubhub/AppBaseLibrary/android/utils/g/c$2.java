package com.grubhub.AppBaseLibrary.android.utils.g;

import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.b.a;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSSelectedPaymentModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIGetPaymentsModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIPaymentResourceCreatedDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIVaultedPayPalModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import java.util.ArrayList;
import java.util.Iterator;

class c$2
  implements e<GHSIGetPaymentsModel>
{
  c$2(c paramc, GHSIPaymentResourceCreatedDataModel paramGHSIPaymentResourceCreatedDataModel) {}
  
  public void a(GHSIGetPaymentsModel paramGHSIGetPaymentsModel)
  {
    String str = a.getId();
    paramGHSIGetPaymentsModel = paramGHSIGetPaymentsModel.getPayPals().iterator();
    do
    {
      if (!paramGHSIGetPaymentsModel.hasNext()) {
        break;
      }
    } while (!((GHSIVaultedPayPalModel)paramGHSIGetPaymentsModel.next()).getId().equals(str));
    for (int i = 1;; i = 0)
    {
      if (i != 0)
      {
        com.grubhub.AppBaseLibrary.android.dataServices.b.b localb = GHSApplication.a().b();
        GHSSelectedPaymentModel localGHSSelectedPaymentModel = localb.s();
        paramGHSIGetPaymentsModel = localGHSSelectedPaymentModel;
        if (localGHSSelectedPaymentModel == null) {
          paramGHSIGetPaymentsModel = new GHSSelectedPaymentModel();
        }
        paramGHSIGetPaymentsModel.setSelectedPayPalId(str);
        localb.a(paramGHSIGetPaymentsModel);
        b.a(a);
        return;
      }
      b.b(new com.grubhub.AppBaseLibrary.android.b.b(a.ERROR_CODE_PAYMENT_FAILURE));
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.utils.g.c.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */