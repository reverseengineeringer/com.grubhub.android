package com.grubhub.AppBaseLibrary.android.dataServices.net;

import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2SavedAddressWrapperDTO;
import java.util.ArrayList;

class i$34
  implements e<V2SavedAddressWrapperDTO>
{
  i$34(i parami, e parame) {}
  
  public void a(V2SavedAddressWrapperDTO paramV2SavedAddressWrapperDTO)
  {
    ArrayList localArrayList = null;
    if (paramV2SavedAddressWrapperDTO != null) {
      localArrayList = paramV2SavedAddressWrapperDTO.getAddressList();
    }
    if (a != null) {
      a.onResponse(localArrayList);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.i.34
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */