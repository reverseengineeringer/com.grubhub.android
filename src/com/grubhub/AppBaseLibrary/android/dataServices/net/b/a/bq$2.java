package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import com.grubhub.AppBaseLibrary.android.b.a;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIGeocodeAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import java.util.ArrayList;

class bq$2
  implements e<ArrayList<GHSIGeocodeAddressDataModel>>
{
  bq$2(bq parambq) {}
  
  public void a(ArrayList<GHSIGeocodeAddressDataModel> paramArrayList)
  {
    if ((paramArrayList != null) && (!paramArrayList.isEmpty()))
    {
      paramArrayList = (GHSIGeocodeAddressDataModel)paramArrayList.get(0);
      localObject = new GHSAddressDataModel();
      ((GHSIAddressDataModel)localObject).setAddress1(paramArrayList.getAddress1());
      ((GHSIAddressDataModel)localObject).setAddress2(paramArrayList.getAddress2());
      ((GHSIAddressDataModel)localObject).setCity(paramArrayList.getCity());
      ((GHSIAddressDataModel)localObject).setState(paramArrayList.getState());
      ((GHSIAddressDataModel)localObject).setZip(paramArrayList.getZip());
      ((GHSIAddressDataModel)localObject).setCountry(paramArrayList.getCountry());
      ((GHSIAddressDataModel)localObject).setLatitude(String.valueOf(paramArrayList.getLatitude()));
      ((GHSIAddressDataModel)localObject).setLongitude(String.valueOf(paramArrayList.getLongitude()));
      ((GHSIAddressDataModel)localObject).setIsPrecise(paramArrayList.isPrecise());
      ((GHSIAddressDataModel)localObject).setPickupRadius(paramArrayList.getPickupRadius());
      if (a.i != null) {
        a.i.onResponse(localObject);
      }
    }
    while (a.j == null) {
      return;
    }
    if ((paramArrayList != null) && (paramArrayList.isEmpty())) {}
    for (Object localObject = a.ERROR_CODE_ADDRESS_LOOKUP_ZERO_RESULTS;; localObject = a.ERROR_CODE_ADDRESS_LOOKUP)
    {
      a.j.a(new com.grubhub.AppBaseLibrary.android.b.b((a)localObject));
      com.grubhub.AppBaseLibrary.android.utils.e.b.a(a.l.doubleValue(), a.m.doubleValue(), paramArrayList);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.bq.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */