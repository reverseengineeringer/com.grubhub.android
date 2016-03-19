package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import com.grubhub.AppBaseLibrary.android.b.a;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIGeocodeAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import java.util.ArrayList;
import java.util.Iterator;

class bs$2
  implements e<ArrayList<GHSIGeocodeAddressDataModel>>
{
  bs$2(bs parambs) {}
  
  public void a(ArrayList<GHSIGeocodeAddressDataModel> paramArrayList)
  {
    if ((paramArrayList != null) && (!paramArrayList.isEmpty()))
    {
      localObject = new ArrayList();
      paramArrayList = paramArrayList.iterator();
      while (paramArrayList.hasNext())
      {
        localGHSIGeocodeAddressDataModel = (GHSIGeocodeAddressDataModel)paramArrayList.next();
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
      if (a.i != null) {
        a.i.onResponse(localObject);
      }
    }
    while (a.j == null)
    {
      GHSIGeocodeAddressDataModel localGHSIGeocodeAddressDataModel;
      GHSAddressDataModel localGHSAddressDataModel;
      return;
    }
    if ((paramArrayList != null) && (paramArrayList.isEmpty())) {}
    for (Object localObject = a.ERROR_CODE_ADDRESS_LOOKUP_ZERO_RESULTS;; localObject = a.ERROR_CODE_ADDRESS_LOOKUP)
    {
      a.j.a(new com.grubhub.AppBaseLibrary.android.b.b((a)localObject));
      com.grubhub.AppBaseLibrary.android.utils.e.b.a(a.l, paramArrayList);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.bs.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */