package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import java.util.ArrayList;

public class V2SavedAddressWrapperDTO
{
  private ArrayList<V2SavedAddressDTO> diner_addresses;
  private String diner_id;
  
  public ArrayList<GHSIAddressDataModel> getAddressList()
  {
    if (diner_addresses != null) {
      return new ArrayList(diner_addresses);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2SavedAddressWrapperDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */