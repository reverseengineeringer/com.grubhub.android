package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import com.google.gson.Gson;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2SavedAddressWrapperDTO;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.d;
import com.grubhub.AppBaseLibrary.android.dataServices.net.k;
import com.grubhub.AppBaseLibrary.android.utils.f;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class n
  extends a<n, V2SavedAddressWrapperDTO, Void>
{
  protected String l;
  protected GHSIAddressDataModel m;
  
  private n(o paramo)
  {
    super(paramo);
    l = o.a(paramo);
    m = o.b(paramo);
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
  }
  
  protected void c()
  {
    d locald = new d(g.toString(), h(), new k(), V2SavedAddressWrapperDTO.class, a, i, j);
    locald.setTag(c);
    h = locald;
  }
  
  protected boolean d()
  {
    return (super.d()) && (f.b(l)) && (m != null);
  }
  
  protected Map<String, String> e()
  {
    Map localMap = super.e();
    localMap.put("dinerId", l);
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
    if (m != null)
    {
      String str2 = m.getCountry();
      String str1 = str2;
      if (f.b(str2))
      {
        str1 = str2;
        if (str2.length() > 2) {
          str1 = com.grubhub.AppBaseLibrary.android.order.a.b(str2);
        }
      }
      str2 = com.grubhub.AppBaseLibrary.android.order.a.a(m.getState());
      localHashMap.put("label", a(m.getLabel()));
      localHashMap.put("street_address1", a(m.getAddress1()));
      localHashMap.put("street_address2", a(m.getAddress2()));
      localHashMap.put("cross_street", a(m.getCrossStreet()));
      localHashMap.put("phone", a(m.getPhone()));
      localHashMap.put("address_locality", a(m.getCity()));
      localHashMap.put("address_region", a(str2));
      localHashMap.put("postal_code", a(m.getZip()));
      localHashMap.put("address_country", a(str1));
      localHashMap.put("latitude", a(m.getLatitude(), 12));
      localHashMap.put("longitude", a(m.getLongitude(), 12));
      localHashMap.put("special_instructions", a(m.getDeliveryInstructions()));
    }
    return localHashMap;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */