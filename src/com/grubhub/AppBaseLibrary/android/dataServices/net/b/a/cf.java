package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import com.grubhub.AppBaseLibrary.android.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2CartDTO;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIDeliveryInfo;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.e;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;
import com.grubhub.AppBaseLibrary.android.dataServices.net.k;
import com.grubhub.AppBaseLibrary.android.utils.f;
import java.util.HashMap;
import java.util.Map;

public class cf
  extends a<cf, GHSICartDataModel, Void>
{
  protected String l;
  protected boolean m;
  protected GHSIDeliveryInfo n;
  
  private cf(cg paramcg)
  {
    super(paramcg);
    l = cg.a(paramcg);
    m = cg.b(paramcg);
    n = cg.c(paramcg);
  }
  
  private String a(String paramString, int paramInt)
  {
    if ((paramString == null) || (paramString.length() <= paramInt)) {
      return paramString;
    }
    return paramString.substring(0, paramInt);
  }
  
  private boolean i()
  {
    boolean bool2 = true;
    boolean bool1;
    if ((n == null) || (f.a(n.getLatitude())) || (f.a(n.getLongitude()))) {
      bool1 = false;
    }
    do
    {
      do
      {
        return bool1;
        bool1 = bool2;
      } while (m);
      if ((!f.b(n.getPhone())) || (!f.b(n.getStreetAddress1())) || (!f.b(n.getAddressCountry())) || (!f.b(n.getAddressLocality())) || (!f.b(n.getAddressRegion())) || (!f.b(n.getEmail())) || (!f.b(n.getPostalCode()))) {
        break;
      }
      bool1 = bool2;
    } while (f.b(n.getName()));
    return false;
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
    for (String str = "incomplete_delivery";; str = "delivery_info")
    {
      locala.a(str);
      return;
    }
  }
  
  protected void c()
  {
    e locale = new e(g.toString(), h(), new k(), V2CartDTO.class, a, i, j);
    locale.setTag(c);
    h = locale;
  }
  
  protected boolean d()
  {
    return (super.d()) && (f.b(l)) && (f.b(e)) && (i());
  }
  
  protected Map<String, String> e()
  {
    Map localMap = super.e();
    localMap.put("cartId", l);
    localMap.put("isIncomplete", Boolean.toString(m));
    localMap.putAll(h());
    return localMap;
  }
  
  protected void f()
  {
    if (j != null) {
      j.a(new b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_ADDRESS_ADDRESS1_INVALID));
    }
    g();
  }
  
  protected Map<String, String> h()
  {
    HashMap localHashMap = new HashMap();
    if (n != null)
    {
      localHashMap.put("latitude", a(n.getLatitude(), 12));
      localHashMap.put("longitude", a(n.getLongitude(), 12));
      if (!m)
      {
        localHashMap.put("delivery_instructions", n.getDeliveryInstructions());
        localHashMap.put("street_address2", n.getStreetAddress2());
        localHashMap.put("phone", n.getPhone());
        localHashMap.put("cross_streets", n.getCrossStreets());
        localHashMap.put("street_address1", n.getStreetAddress1());
        localHashMap.put("address_country", n.getAddressCountry());
        localHashMap.put("address_locality", n.getAddressLocality());
        localHashMap.put("address_region", n.getAddressRegion());
        localHashMap.put("email", n.getEmail());
        localHashMap.put("postal_code", n.getPostalCode());
        localHashMap.put("name", n.getName());
        if (n.getGreenIndicated() != null) {
          localHashMap.put("green_indicated", Boolean.toString(n.getGreenIndicated().booleanValue()));
        }
      }
    }
    return localHashMap;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.cf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */