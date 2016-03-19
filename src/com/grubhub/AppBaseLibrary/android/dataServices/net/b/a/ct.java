package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import com.google.gson.Gson;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2SavedAddressWrapperDTO;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.e;
import com.grubhub.AppBaseLibrary.android.dataServices.net.k;
import com.grubhub.AppBaseLibrary.android.utils.f;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class ct
  extends a<ct, V2SavedAddressWrapperDTO, Void>
{
  protected String l;
  protected String m;
  protected GHSIAddressDataModel n;
  
  private ct(cu paramcu)
  {
    super(paramcu);
    l = cu.a(paramcu);
    m = cu.b(paramcu);
    n = cu.c(paramcu);
  }
  
  private String a(String paramString)
  {
    String str = paramString;
    if (f.a(paramString)) {
      str = null;
    }
    return str;
  }
  
  private String a(String paramString, int paramInt)
  {
    if ((paramString == null) || (paramString.length() <= paramInt)) {
      return paramString;
    }
    return paramString.substring(0, paramInt);
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
    e locale = new e(g.toString(), h(), new k(), V2SavedAddressWrapperDTO.class, a, i, j);
    locale.setTag(c);
    h = locale;
  }
  
  protected boolean d()
  {
    return (super.d()) && (f.b(l)) && (f.b(m)) && (n != null);
  }
  
  protected Map<String, String> e()
  {
    Map localMap = super.e();
    localMap.put("dinerId", l);
    localMap.put("addressId", m);
    Gson localGson = new Gson();
    Iterator localIterator = h().entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localMap.put(localEntry.getKey(), localGson.toJson(localEntry.getValue()));
    }
    return localMap;
  }
  
  protected Map<String, Object> h()
  {
    HashMap localHashMap = new HashMap();
    if (n != null)
    {
      String str2 = n.getCountry();
      String str1 = str2;
      if (f.b(str2))
      {
        str1 = str2;
        if (str2.length() > 2) {
          str1 = com.grubhub.AppBaseLibrary.android.order.a.b(str2);
        }
      }
      str2 = com.grubhub.AppBaseLibrary.android.order.a.a(n.getState());
      localHashMap.put("label", a(n.getLabel()));
      localHashMap.put("street_address1", a(n.getAddress1()));
      localHashMap.put("street_address2", a(n.getAddress2()));
      localHashMap.put("cross_street", a(n.getCrossStreet()));
      localHashMap.put("phone", a(n.getPhone()));
      localHashMap.put("address_locality", a(n.getCity()));
      localHashMap.put("address_region", a(str2));
      localHashMap.put("postal_code", a(n.getZip()));
      localHashMap.put("address_country", a(str1));
      localHashMap.put("latitude", a(n.getLatitude(), 12));
      localHashMap.put("longitude", a(n.getLongitude(), 12));
      localHashMap.put("special_instructions", a(n.getDeliveryInstructions()));
    }
    return localHashMap;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.ct
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */