package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel.GHSIOrders;
import java.util.ArrayList;

public class V1UserAuthDTO$GHSOrders
  implements GHSIUserAuthDataModel.GHSIOrders
{
  private ArrayList<V1UserAuthDTO.GHSOrder> order;
  
  public V1UserAuthDTO$GHSOrders(V1UserAuthDTO paramV1UserAuthDTO) {}
  
  public int getCount()
  {
    return order.size();
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1UserAuthDTO.GHSOrders
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */