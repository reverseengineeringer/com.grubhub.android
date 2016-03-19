package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class V2OrderHistoryDTO$1
  implements Parcelable.Creator<V2OrderHistoryDTO>
{
  public V2OrderHistoryDTO createFromParcel(Parcel paramParcel)
  {
    return new V2OrderHistoryDTO(paramParcel, null);
  }
  
  public V2OrderHistoryDTO[] newArray(int paramInt)
  {
    return new V2OrderHistoryDTO[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2OrderHistoryDTO.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */