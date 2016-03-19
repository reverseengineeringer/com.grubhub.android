package com.grubhub.AppBaseLibrary.android.dataServices.a.f;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel.PaymentTypes;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIDeletedPaymentModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIDeletedPaymentModel.Status;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIVaultedCreditCardModel;
import java.util.ArrayList;

public class a
  extends com.grubhub.AppBaseLibrary.android.dataServices.a.a<GHSIDeletedPaymentModel>
{
  private String b;
  private GHSICartPaymentDataModel.PaymentTypes c;
  
  public a(Context paramContext, String paramString, GHSICartPaymentDataModel.PaymentTypes paramPaymentTypes, i parami1, i parami2)
  {
    super(paramContext, parami1, parami2);
    b = paramString;
    c = paramPaymentTypes;
  }
  
  private void i()
  {
    com.grubhub.AppBaseLibrary.android.dataServices.b.b localb = c();
    ArrayList localArrayList = localb.G();
    if (localArrayList != null)
    {
      int i = localArrayList.size() - 1;
      while (i >= 0)
      {
        if ((((GHSIVaultedCreditCardModel)localArrayList.get(i)).getId().equals(b)) && (((GHSIVaultedCreditCardModel)localArrayList.get(i)).isSingleUse())) {
          localArrayList.remove(i);
        }
        i -= 1;
      }
      localb.a(localArrayList);
    }
  }
  
  public void a()
  {
    super.a();
    Object localObject = c().N();
    if (localObject != null) {}
    for (localObject = ((GHSIUserAuthDataModel)localObject).getUdid();; localObject = null)
    {
      b().g((String)localObject, b, this, this, f());
      return;
    }
  }
  
  public void a(GHSIDeletedPaymentModel paramGHSIDeletedPaymentModel)
  {
    if (paramGHSIDeletedPaymentModel != null)
    {
      if (paramGHSIDeletedPaymentModel.getStatus() != GHSIDeletedPaymentModel.Status.SUCCESS)
      {
        a(new com.grubhub.AppBaseLibrary.android.b.b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_UNKNOWN));
        return;
      }
      if (c == GHSICartPaymentDataModel.PaymentTypes.CREDIT_CARD) {
        i();
      }
    }
    super.onResponse(paramGHSIDeletedPaymentModel);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.a.f.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */