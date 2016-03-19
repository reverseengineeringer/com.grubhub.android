package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class V2IndividualInfoDTO
  implements Parcelable
{
  public static final Parcelable.Creator<V2IndividualInfoDTO> CREATOR = new Parcelable.Creator()
  {
    public V2IndividualInfoDTO createFromParcel(Parcel paramAnonymousParcel)
    {
      return new V2IndividualInfoDTO(paramAnonymousParcel, null);
    }
    
    public V2IndividualInfoDTO[] newArray(int paramAnonymousInt)
    {
      return new V2IndividualInfoDTO[paramAnonymousInt];
    }
  };
  protected String individual_info;
  
  private V2IndividualInfoDTO(Parcel paramParcel)
  {
    individual_info = ((String)paramParcel.readValue(null));
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeValue(individual_info);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2IndividualInfoDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */