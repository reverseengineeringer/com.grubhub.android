package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2BillModelDTO;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIBillModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.c;
import com.grubhub.AppBaseLibrary.android.dataServices.net.k;
import com.grubhub.AppBaseLibrary.android.utils.f;
import java.util.Map;

public class al
  extends a<al, GHSIBillModel, Void>
{
  private String l;
  
  private al(am paramam)
  {
    super(paramam);
    l = am.a(paramam);
  }
  
  protected void b()
  {
    if (g == null) {
      g = new com.grubhub.AppBaseLibrary.android.dataServices.net.a.a(d, e);
    }
    g.a("espresso");
    g.a("carts");
    g.a(l);
    g.a("bill");
  }
  
  protected void c()
  {
    c localc = new c(g.toString(), new k(), V2BillModelDTO.class, a, i, j);
    localc.setTag(c);
    h = localc;
  }
  
  protected boolean d()
  {
    return (super.d()) && (f.b(l)) && (f.b(e));
  }
  
  protected Map<String, String> e()
  {
    Map localMap = super.e();
    localMap.put("cartId", l);
    return localMap;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.al
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */