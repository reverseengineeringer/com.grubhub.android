package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import com.google.gson.reflect.TypeToken;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2GeocodeAddressDTO;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIGeocodeAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.c;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import com.grubhub.AppBaseLibrary.android.dataServices.net.k;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class bq
  extends a<bq, GHSIAddressDataModel, Void>
{
  protected Double l;
  protected Double m;
  
  private bq(br parambr)
  {
    super(parambr);
    l = j;
    m = k;
  }
  
  protected void b()
  {
    if (g == null) {
      g = new com.grubhub.AppBaseLibrary.android.dataServices.net.a.a(d, e);
    }
    g.a("geocode");
    g.a("reverse");
    g.a("latitude", String.valueOf(l));
    g.a("longitude", String.valueOf(m));
  }
  
  protected void c()
  {
    Object localObject = new TypeToken() {}.getType();
    localObject = new c(g.toString(), new k(), (Type)localObject, a, new e()
    {
      public void a(ArrayList<GHSIGeocodeAddressDataModel> paramAnonymousArrayList)
      {
        if ((paramAnonymousArrayList != null) && (!paramAnonymousArrayList.isEmpty()))
        {
          paramAnonymousArrayList = (GHSIGeocodeAddressDataModel)paramAnonymousArrayList.get(0);
          localObject = new GHSAddressDataModel();
          ((GHSIAddressDataModel)localObject).setAddress1(paramAnonymousArrayList.getAddress1());
          ((GHSIAddressDataModel)localObject).setAddress2(paramAnonymousArrayList.getAddress2());
          ((GHSIAddressDataModel)localObject).setCity(paramAnonymousArrayList.getCity());
          ((GHSIAddressDataModel)localObject).setState(paramAnonymousArrayList.getState());
          ((GHSIAddressDataModel)localObject).setZip(paramAnonymousArrayList.getZip());
          ((GHSIAddressDataModel)localObject).setCountry(paramAnonymousArrayList.getCountry());
          ((GHSIAddressDataModel)localObject).setLatitude(String.valueOf(paramAnonymousArrayList.getLatitude()));
          ((GHSIAddressDataModel)localObject).setLongitude(String.valueOf(paramAnonymousArrayList.getLongitude()));
          ((GHSIAddressDataModel)localObject).setIsPrecise(paramAnonymousArrayList.isPrecise());
          ((GHSIAddressDataModel)localObject).setPickupRadius(paramAnonymousArrayList.getPickupRadius());
          if (i != null) {
            i.onResponse(localObject);
          }
        }
        while (j == null) {
          return;
        }
        if ((paramAnonymousArrayList != null) && (paramAnonymousArrayList.isEmpty())) {}
        for (Object localObject = com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_ADDRESS_LOOKUP_ZERO_RESULTS;; localObject = com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_ADDRESS_LOOKUP)
        {
          j.a(new com.grubhub.AppBaseLibrary.android.b.b((com.grubhub.AppBaseLibrary.android.b.a)localObject));
          com.grubhub.AppBaseLibrary.android.utils.e.b.a(l.doubleValue(), m.doubleValue(), paramAnonymousArrayList);
          return;
        }
      }
    }, j);
    ((c)localObject).setTag(c);
    h = ((com.grubhub.AppBaseLibrary.android.dataServices.net.b.f)localObject);
  }
  
  protected boolean d()
  {
    return (super.d()) && (com.grubhub.AppBaseLibrary.android.utils.f.b(e)) && (l != null) && (m != null);
  }
  
  protected Map<String, String> e()
  {
    Map localMap = super.e();
    localMap.put("latitude", String.valueOf(l));
    localMap.put("longitude", String.valueOf(m));
    return localMap;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.bq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */