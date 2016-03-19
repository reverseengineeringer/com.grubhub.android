package com.grubhub.AppBaseLibrary.android.order.cart;

import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIVaultedCreditCardModel;
import java.util.ArrayList;

public class i
{
  public static void a()
  {
    b localb = GHSApplication.a().b();
    localb.a(null);
    localb.b(null);
    localb.a(null);
    localb.a(null);
    localb.a(null);
    localb.g(null);
    localb.a(null);
    localb.a(null);
    localb.h(false);
    localb.a(null);
    localb.b(null);
    a(localb);
  }
  
  private static void a(b paramb)
  {
    ArrayList localArrayList = paramb.G();
    if (localArrayList != null)
    {
      int i = localArrayList.size() - 1;
      while (i >= 0)
      {
        if (((GHSIVaultedCreditCardModel)localArrayList.get(i)).isSingleUse()) {
          localArrayList.remove(i);
        }
        i -= 1;
      }
      paramb.a(localArrayList);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */