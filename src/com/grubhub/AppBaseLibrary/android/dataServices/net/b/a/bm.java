package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2UserCartsDTO;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserCartsDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.c;
import com.grubhub.AppBaseLibrary.android.dataServices.net.k;

public class bm
  extends a<bm, GHSIUserCartsDataModel, Void>
{
  private bm(bn parambn)
  {
    super(parambn);
  }
  
  protected void b()
  {
    if (g == null) {
      g = new com.grubhub.AppBaseLibrary.android.dataServices.net.a.a(d, e);
    }
    g.a("espresso");
    g.a("carts");
  }
  
  protected void c()
  {
    c localc = new c(g.toString(), new k(), V2UserCartsDTO.class, a, i, j);
    localc.setTag(c);
    h = localc;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.bm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */