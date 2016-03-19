package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class V2OrderLineDTO$1
  implements Parcelable.Creator<V2OrderLineDTO>
{
  public V2OrderLineDTO createFromParcel(Parcel paramParcel)
  {
    return new V2OrderLineDTO(paramParcel, null);
  }
  
  public V2OrderLineDTO[] newArray(int paramInt)
  {
    return new V2OrderLineDTO[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2OrderLineDTO.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */