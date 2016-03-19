package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2DeliveryLookupDTO;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIDeliveryLookupDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.c;
import com.grubhub.AppBaseLibrary.android.dataServices.net.k;

public class aj
  extends a<aj, GHSIDeliveryLookupDataModel, Void>
{
  protected String l;
  
  private aj(ak paramak)
  {
    super(paramak);
    l = j;
  }
  
  protected void b()
  {
    if (g == null) {
      g = new com.grubhub.AppBaseLibrary.android.dataServices.net.a.a(d);
    }
    g.a("v1");
    g.a("deliveries");
    g.a("lookup");
    g.a("key", "grubhub_diner_uuid");
    g.a("value", l);
  }
  
  protected void c()
  {
    c localc = new c(g.toString(), new k(), V2DeliveryLookupDTO.class, a, i, j);
    localc.setTag(c);
    h = localc;
    h.a(com.grubhub.AppBaseLibrary.android.utils.a.a.d(f));
  }
  
  protected boolean d()
  {
    return (super.d()) && (com.grubhub.AppBaseLibrary.android.utils.f.b(l));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */