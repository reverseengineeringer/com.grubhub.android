package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderListDataModel;
import java.util.ArrayList;

public class V1PastOrdersDTO
  implements Parcelable, GHSIPastOrderListDataModel
{
  public static final Parcelable.Creator<V1PastOrdersDTO> CREATOR = new Parcelable.Creator()
  {
    public V1PastOrdersDTO createFromParcel(Parcel paramAnonymousParcel)
    {
      return new V1PastOrdersDTO(paramAnonymousParcel, null);
    }
    
    public V1PastOrdersDTO[] newArray(int paramAnonymousInt)
    {
      return new V1PastOrdersDTO[paramAnonymousInt];
    }
  };
  private String email;
  private String firstName;
  private String id;
  private String lastName;
  private V1PastOrdersDTO.GHSPastOrders orders;
  private String token;
  
  private V1PastOrdersDTO(Parcel paramParcel)
  {
    id = paramParcel.readString();
    firstName = paramParcel.readString();
    lastName = paramParcel.readString();
    email = paramParcel.readString();
    token = paramParcel.readString();
    orders = ((V1PastOrdersDTO.GHSPastOrders)paramParcel.readParcelable(V1PastOrdersDTO.GHSPastOrders.class.getClassLoader()));
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getEmail()
  {
    return email;
  }
  
  public String getFirstName()
  {
    return firstName;
  }
  
  public String getLastName()
  {
    return lastName;
  }
  
  public ArrayList<GHSIPastOrderDataModel> getPastOrders()
  {
    ArrayList localArrayList = new ArrayList();
    if ((orders != null) && (V1PastOrdersDTO.GHSPastOrders.access$800(orders) != null)) {
      localArrayList.addAll(V1PastOrdersDTO.GHSPastOrders.access$800(orders));
    }
    return localArrayList;
  }
  
  public int getPastOrdersCount()
  {
    if ((orders != null) && (V1PastOrdersDTO.GHSPastOrders.access$800(orders) != null)) {
      return V1PastOrdersDTO.GHSPastOrders.access$800(orders).size();
    }
    return 0;
  }
  
  public String getToken()
  {
    return token;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(id);
    paramParcel.writeString(firstName);
    paramParcel.writeString(lastName);
    paramParcel.writeString(email);
    paramParcel.writeString(token);
    paramParcel.writeParcelable(orders, 0);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1PastOrdersDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */