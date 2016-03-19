package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1;

import android.text.TextUtils;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.utils.h.a;
import java.util.ArrayList;
import java.util.Iterator;

public class V1SavedAddressWrapperDTO
{
  private ArrayList<V1SavedAddressDTO> address;
  private V1SavedAddressWrapperDTO.GHMessageWrapper messages;
  
  public ArrayList<GHSIAddressDataModel> convert()
  {
    ArrayList localArrayList = null;
    if (address != null)
    {
      localArrayList = new ArrayList();
      localArrayList.addAll(address);
      Iterator localIterator = localArrayList.iterator();
      while (localIterator.hasNext())
      {
        GHSIAddressDataModel localGHSIAddressDataModel = (GHSIAddressDataModel)localIterator.next();
        String str = localGHSIAddressDataModel.getPhone();
        if (!TextUtils.isEmpty(str)) {
          localGHSIAddressDataModel.setPhone(a.d(str));
        }
      }
    }
    return localArrayList;
  }
  
  public ArrayList<V1SavedAddressDTO> getAddressList()
  {
    return address;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1SavedAddressWrapperDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */