package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2SavedAddressWrapperDTO;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.net.k;
import com.grubhub.AppBaseLibrary.android.utils.f;
import java.util.Map;

public class cd
  extends a<cd, V2SavedAddressWrapperDTO, Void>
{
  protected String l;
  protected String m;
  
  private cd(ce paramce)
  {
    super(paramce);
    l = ce.a(paramce);
    m = ce.b(paramce);
  }
  
  protected void b()
  {
    if (g == null) {
      g = new com.grubhub.AppBaseLibrary.android.dataServices.net.a.a(d, e);
    }
    g.a("diners");
    g.a(l);
    g.a("addresses");
    g.a(m);
  }
  
  protected void c()
  {
    b localb = new b(g.toString(), new k(), V2SavedAddressWrapperDTO.class, a, i, j);
    localb.setTag(c);
    h = localb;
  }
  
  protected boolean d()
  {
    return (super.d()) && (f.b(l)) && (f.b(m));
  }
  
  protected Map<String, String> e()
  {
    Map localMap = super.e();
    localMap.put("dinerId", l);
    localMap.put("addressId", m);
    return localMap;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.cd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */