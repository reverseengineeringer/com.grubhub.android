package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class V1PastOrdersDTO$1
  implements Parcelable.Creator<V1PastOrdersDTO>
{
  public V1PastOrdersDTO createFromParcel(Parcel paramParcel)
  {
    return new V1PastOrdersDTO(paramParcel, null);
  }
  
  public V1PastOrdersDTO[] newArray(int paramInt)
  {
    return new V1PastOrdersDTO[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1PastOrdersDTO.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */