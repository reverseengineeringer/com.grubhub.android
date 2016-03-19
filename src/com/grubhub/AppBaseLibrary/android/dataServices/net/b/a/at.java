package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2MessageDTO;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIMessage;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.c;
import com.grubhub.AppBaseLibrary.android.dataServices.net.k;
import com.grubhub.AppBaseLibrary.android.utils.f;
import java.util.Map;

public class at
  extends a<at, GHSIMessage, Void>
{
  protected String l;
  protected String m;
  
  private at(au paramau)
  {
    super(paramau);
    l = j;
    m = k;
  }
  
  protected void b()
  {
    if (g == null) {
      g = new com.grubhub.AppBaseLibrary.android.dataServices.net.a.a(d);
    }
    g.a("alerts");
    g.a(l);
    g.a("active.json");
  }
  
  protected void c()
  {
    c localc = new c(g.toString(), new k(), V2MessageDTO.class, a, i, j);
    localc.setTag(c);
    localc.b(m);
    h = localc;
  }
  
  protected boolean d()
  {
    return (super.d()) && (f.b(l));
  }
  
  protected Map<String, String> e()
  {
    Map localMap = super.e();
    localMap.put("urlPath", l);
    if (m != null) {
      localMap.put("eTag", m);
    }
    return localMap;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.at
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */