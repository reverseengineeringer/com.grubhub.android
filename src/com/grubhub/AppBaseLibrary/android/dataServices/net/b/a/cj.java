package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2CartDTO;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIPickupInfo;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.e;
import com.grubhub.AppBaseLibrary.android.dataServices.net.k;
import com.grubhub.AppBaseLibrary.android.utils.f;
import java.util.HashMap;
import java.util.Map;

public class cj
  extends a<cj, GHSICartDataModel, Void>
{
  protected String l;
  protected boolean m;
  protected GHSIPickupInfo n;
  
  private cj(ck paramck)
  {
    super(paramck);
    l = ck.a(paramck);
    m = ck.b(paramck);
    n = ck.c(paramck);
  }
  
  private boolean h()
  {
    if (m) {}
    while ((n != null) && (f.b(n.getPhone())) && (f.b(n.getEmail())) && (f.b(n.getName()))) {
      return true;
    }
    return false;
  }
  
  private Map<String, String> i()
  {
    HashMap localHashMap = new HashMap();
    if ((n != null) && (!m))
    {
      localHashMap.put("phone", n.getPhone());
      localHashMap.put("email", n.getEmail());
      localHashMap.put("name", n.getName());
      localHashMap.put("pickup_instructions", n.getPickupInstructions());
      if (n.getGreenIndicated() != null) {
        localHashMap.put("green_indicated", Boolean.toString(n.getGreenIndicated().booleanValue()));
      }
    }
    return localHashMap;
  }
  
  protected void b()
  {
    if (g == null) {
      g = new com.grubhub.AppBaseLibrary.android.dataServices.net.a.a(d, e);
    }
    g.a("espresso");
    g.a("carts");
    g.a(l);
    com.grubhub.AppBaseLibrary.android.dataServices.net.a.a locala = g;
    if (m) {}
    for (String str = "incomplete_pickup";; str = "pickup_info")
    {
      locala.a(str);
      return;
    }
  }
  
  protected void c()
  {
    e locale = new e(g.toString(), i(), new k(), V2CartDTO.class, a, i, j);
    locale.setTag(c);
    h = locale;
  }
  
  protected boolean d()
  {
    return (super.d()) && (f.b(l)) && (f.b(e)) && (h());
  }
  
  protected Map<String, String> e()
  {
    Map localMap = super.e();
    localMap.put("cartId", l);
    localMap.put("isIncomplete", Boolean.toString(m));
    localMap.putAll(i());
    return localMap;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.cj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */