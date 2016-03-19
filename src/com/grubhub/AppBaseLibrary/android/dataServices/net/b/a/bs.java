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
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class bs
  extends a<bs, ArrayList<GHSIAddressDataModel>, Void>
{
  protected String l;
  
  private bs(bt parambt)
  {
    super(parambt);
    l = j;
  }
  
  protected void b()
  {
    if (g == null) {
      g = new com.grubhub.AppBaseLibrary.android.dataServices.net.a.a(d, e);
    }
    g.a("geocode");
    g.a("address", l);
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
          localObject = new ArrayList();
          paramAnonymousArrayList = paramAnonymousArrayList.iterator();
          while (paramAnonymousArrayList.hasNext())
          {
            localGHSIGeocodeAddressDataModel = (GHSIGeocodeAddressDataModel)paramAnonymousArrayList.next();
            localGHSAddressDataModel = new GHSAddressDataModel();
            localGHSAddressDataModel.setAddress1(localGHSIGeocodeAddressDataModel.getAddress1());
            localGHSAddressDataModel.setAddress2(localGHSIGeocodeAddressDataModel.getAddress2());
            localGHSAddressDataModel.setCity(localGHSIGeocodeAddressDataModel.getCity());
            localGHSAddressDataModel.setState(localGHSIGeocodeAddressDataModel.getState());
            localGHSAddressDataModel.setZip(localGHSIGeocodeAddressDataModel.getZip());
            localGHSAddressDataModel.setCountry(localGHSIGeocodeAddressDataModel.getCountry());
            localGHSAddressDataModel.setLatitude(String.valueOf(localGHSIGeocodeAddressDataModel.getLatitude()));
            localGHSAddressDataModel.setLongitude(String.valueOf(localGHSIGeocodeAddressDataModel.getLongitude()));
            localGHSAddressDataModel.setIsPrecise(localGHSIGeocodeAddressDataModel.isPrecise());
            localGHSAddressDataModel.setPickupRadius(localGHSIGeocodeAddressDataModel.getPickupRadius());
            ((ArrayList)localObject).add(localGHSAddressDataModel);
          }
          if (i != null) {
            i.onResponse(localObject);
          }
        }
        while (j == null)
        {
          GHSIGeocodeAddressDataModel localGHSIGeocodeAddressDataModel;
          GHSAddressDataModel localGHSAddressDataModel;
          return;
        }
        if ((paramAnonymousArrayList != null) && (paramAnonymousArrayList.isEmpty())) {}
        for (Object localObject = com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_ADDRESS_LOOKUP_ZERO_RESULTS;; localObject = com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_ADDRESS_LOOKUP)
        {
          j.a(new com.grubhub.AppBaseLibrary.android.b.b((com.grubhub.AppBaseLibrary.android.b.a)localObject));
          com.grubhub.AppBaseLibrary.android.utils.e.b.a(l, paramAnonymousArrayList);
          return;
        }
      }
    }, j);
    ((c)localObject).setTag(c);
    h = ((com.grubhub.AppBaseLibrary.android.dataServices.net.b.f)localObject);
  }
  
  protected boolean d()
  {
    return (super.d()) && (com.grubhub.AppBaseLibrary.android.utils.f.b(e)) && (com.grubhub.AppBaseLibrary.android.utils.f.b(l));
  }
  
  protected Map<String, String> e()
  {
    Map localMap = super.e();
    localMap.put("address", l);
    return localMap;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.bs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */