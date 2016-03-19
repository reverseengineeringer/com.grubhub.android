package com.grubhub.AppBaseLibrary.android.utils.e;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIGeocodeAddressDataModel;
import com.grubhub.AppBaseLibrary.android.utils.e.a.a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class b
{
  public static void a(double paramDouble1, double paramDouble2, final float paramFloat)
  {
    a.a("GOOGLE_MAP_CALL", new HashMap() {});
  }
  
  public static void a(double paramDouble1, double paramDouble2, ArrayList<GHSIGeocodeAddressDataModel> paramArrayList)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("Latitude", Double.toString(paramDouble1));
    localHashMap.put("Longitude", Double.toString(paramDouble2));
    if (paramArrayList == null) {
      localHashMap.put("Message", String.format("Google %s returned a null data object.", new Object[] { "Coordinates Lookup" }));
    }
    for (;;)
    {
      a.a("GOOGLE_COORDINATES_LOOKUP", localHashMap);
      return;
      if (paramArrayList.isEmpty()) {
        localHashMap.put("Message", String.format("Google %s returned zero (0) results.", new Object[] { "Coordinates Lookup" }));
      }
    }
  }
  
  public static void a(String paramString, ArrayList<GHSIGeocodeAddressDataModel> paramArrayList)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("Address", paramString);
    if (paramArrayList == null) {
      localHashMap.put("Message", String.format("Google %s returned a null data object.", new Object[] { "Address Lookup" }));
    }
    for (;;)
    {
      a.a("GOOGLE_ADDRESS_LOOKUP", localHashMap);
      return;
      if (paramArrayList.isEmpty()) {
        localHashMap.put("Message", String.format("Google %s returned zero (0) results.", new Object[] { "Address Lookup" }));
      }
    }
  }
  
  public static void a(List<String> paramList, String paramString1, String paramString2)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("Address", paramString1);
    localHashMap.put("LatLong", paramString2);
    if (paramList == null) {
      localHashMap.put("Message", String.format("Google %s returned a null data object.", new Object[] { "Auto Complete" }));
    }
    for (;;)
    {
      a.a("GOOGLE_AUTOCOMPLETE", localHashMap);
      return;
      if (paramList.size() == 0) {
        localHashMap.put("Message", String.format("Google %s returned zero (0) results.", new Object[] { "Auto Complete" }));
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.utils.e.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */