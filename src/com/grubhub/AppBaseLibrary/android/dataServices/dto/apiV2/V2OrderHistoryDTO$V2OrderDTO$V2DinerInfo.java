package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class V2OrderHistoryDTO$V2OrderDTO$V2DinerInfo
  implements Parcelable
{
  public static final Parcelable.Creator<V2DinerInfo> CREATOR = new Parcelable.Creator()
  {
    public V2OrderHistoryDTO.V2OrderDTO.V2DinerInfo createFromParcel(Parcel paramAnonymousParcel)
    {
      return new V2OrderHistoryDTO.V2OrderDTO.V2DinerInfo(paramAnonymousParcel, null);
    }
    
    public V2OrderHistoryDTO.V2OrderDTO.V2DinerInfo[] newArray(int paramAnonymousInt)
    {
      return new V2OrderHistoryDTO.V2OrderDTO.V2DinerInfo[paramAnonymousInt];
    }
  };
  protected String email;
  protected String id;
  protected String name;
  protected String phone;
  
  private V2OrderHistoryDTO$V2OrderDTO$V2DinerInfo(Parcel paramParcel)
  {
    id = ((String)paramParcel.readValue(null));
    name = ((String)paramParcel.readValue(null));
    email = ((String)paramParcel.readValue(null));
    phone = ((String)paramParcel.readValue(null));
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeValue(id);
    paramParcel.writeValue(name);
    paramParcel.writeValue(email);
    paramParcel.writeValue(phone);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2OrderHistoryDTO.V2OrderDTO.V2DinerInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */