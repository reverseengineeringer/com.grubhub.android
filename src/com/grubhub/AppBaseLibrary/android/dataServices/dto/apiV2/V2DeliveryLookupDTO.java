package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIDeliveryDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIDeliveryLookupDataModel;
import java.util.ArrayList;

public class V2DeliveryLookupDTO
  implements GHSIDeliveryLookupDataModel
{
  private static final String INPUT_DATE_FORMAT = "yyyy-MM-dd'T'HH:mm:ss.SSS";
  private static final String OUTPUT_DATE_FORMAT = "h:mm aa";
  private static final String TAG = V2DeliveryLookupDTO.class.getSimpleName();
  private static final int TEN_MINUTES = 600000;
  private ArrayList<V2DeliveryLookupDTO.GHSDeliveryDataModel> contents = new ArrayList();
  
  public ArrayList<GHSIDeliveryDataModel> getDeliveries()
  {
    ArrayList localArrayList = new ArrayList();
    if (contents != null) {
      localArrayList.addAll(contents);
    }
    return localArrayList;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2DeliveryLookupDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */