package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2VaultedPaymentsDTO;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIGetPaymentsModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.c;
import com.grubhub.AppBaseLibrary.android.dataServices.net.k;
import com.grubhub.AppBaseLibrary.android.utils.f;
import java.util.Map;

public class bo
  extends a<bo, GHSIGetPaymentsModel, Void>
{
  protected String l;
  
  private bo(bp parambp)
  {
    super(parambp);
    l = bp.a(parambp);
  }
  
  protected void b()
  {
    if (g == null) {
      g = new com.grubhub.AppBaseLibrary.android.dataServices.net.a.a(d, e);
    }
    g.a("payments");
    g.a(l);
    g.a("payments");
  }
  
  protected void c()
  {
    c localc = new c(g.toString(), new k(), V2VaultedPaymentsDTO.class, a, i, j);
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
    localMap.put("dinerId", l);
    return localMap;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.bo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */