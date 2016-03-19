package com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.b;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel.PaymentTypes;
import com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.a.a;
import com.grubhub.AppBaseLibrary.android.utils.c.c;
import com.grubhub.AppBaseLibrary.android.utils.c.h;
import com.grubhub.AppBaseLibrary.android.utils.f;

public abstract class d
{
  private e a;
  private a b;
  private GHSICartPaymentDataModel.PaymentTypes c;
  
  public d(e parame, a parama, GHSICartPaymentDataModel.PaymentTypes paramPaymentTypes)
  {
    a = parame;
    b = parama;
    c = paramPaymentTypes;
  }
  
  public View a(Context paramContext, ViewGroup paramViewGroup)
  {
    return b.a(paramContext, paramViewGroup);
  }
  
  public void a(String paramString)
  {
    b();
    if (f.b(paramString)) {
      b(paramString);
    }
  }
  
  public abstract boolean a();
  
  public View b(Context paramContext, ViewGroup paramViewGroup)
  {
    return b.b(paramContext, paramViewGroup);
  }
  
  public void b()
  {
    if (a != null) {
      a.a();
    }
  }
  
  protected void b(String paramString)
  {
    h.a().b(new c(paramString, "payment selection", c.toLoggingString(), c.toLoggingString()));
  }
  
  public GHSICartPaymentDataModel.PaymentTypes c()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.b.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */