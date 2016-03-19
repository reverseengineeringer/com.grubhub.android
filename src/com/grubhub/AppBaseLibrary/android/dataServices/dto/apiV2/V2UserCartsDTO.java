package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel.GHSCartState;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserCartsDataModel;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class V2UserCartsDTO
  implements GHSIUserCartsDataModel
{
  private Map<String, V2CartDTO> carts;
  
  public Map<String, GHSICartDataModel> getUserCarts()
  {
    if (carts == null) {
      return null;
    }
    return new HashMap(carts);
  }
  
  public void retainCarts(GHSICartDataModel.GHSCartState paramGHSCartState)
  {
    if ((carts == null) || (paramGHSCartState == null)) {}
    for (;;)
    {
      return;
      Iterator localIterator = carts.keySet().iterator();
      while (localIterator.hasNext()) {
        if (((V2CartDTO)carts.get(localIterator.next())).getCartState() != paramGHSCartState) {
          localIterator.remove();
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2UserCartsDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */