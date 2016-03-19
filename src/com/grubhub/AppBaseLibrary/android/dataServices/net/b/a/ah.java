package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2DeletedPaymentDTO;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIDeletedPaymentModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.net.k;
import com.grubhub.AppBaseLibrary.android.utils.f;
import java.util.Map;

public class ah
  extends a<ah, GHSIDeletedPaymentModel, Void>
{
  protected String l;
  protected String m;
  
  public ah(ai paramai)
  {
    super(paramai);
    l = ai.a(paramai);
    m = ai.b(paramai);
  }
  
  protected void b()
  {
    if (g == null) {
      g = new com.grubhub.AppBaseLibrary.android.dataServices.net.a.a(d, e);
    }
    g.a("payments");
    g.a(l);
    g.a("payments");
    g.a(m);
  }
  
  protected void c()
  {
    b localb = new b(g.toString(), new k(), V2DeletedPaymentDTO.class, a, i, j);
    localb.setTag(c);
    h = localb;
  }
  
  protected boolean d()
  {
    return (super.d()) && (f.b(l)) && (f.b(m)) && (f.b(e));
  }
  
  protected Map<String, String> e()
  {
    Map localMap = super.e();
    localMap.put("dinerId", l);
    localMap.put("paymentId", m);
    return localMap;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.ah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */