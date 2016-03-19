package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderListDataModel;
import java.util.ArrayList;

public class V2OrderHistoryDTO
  implements GHSIPastOrderListDataModel
{
  public static final Parcelable.Creator<V2OrderHistoryDTO> CREATOR = new Parcelable.Creator()
  {
    public V2OrderHistoryDTO createFromParcel(Parcel paramAnonymousParcel)
    {
      return new V2OrderHistoryDTO(paramAnonymousParcel, null);
    }
    
    public V2OrderHistoryDTO[] newArray(int paramAnonymousInt)
    {
      return new V2OrderHistoryDTO[paramAnonymousInt];
    }
  };
  private ArrayList<V2OrderHistoryDTO.V2OrderDTO> orders = new ArrayList();
  
  private V2OrderHistoryDTO(Parcel paramParcel)
  {
    paramParcel.readList(orders, V2OrderHistoryDTO.V2OrderDTO.class.getClassLoader());
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getEmail()
  {
    return null;
  }
  
  public String getFirstName()
  {
    return null;
  }
  
  public String getLastName()
  {
    return null;
  }
  
  public ArrayList<GHSIPastOrderDataModel> getPastOrders()
  {
    if (orders != null) {
      return new ArrayList(orders);
    }
    return null;
  }
  
  public int getPastOrdersCount()
  {
    if (orders != null) {
      return orders.size();
    }
    return 0;
  }
  
  public String getToken()
  {
    return null;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeList(orders);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2OrderHistoryDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */