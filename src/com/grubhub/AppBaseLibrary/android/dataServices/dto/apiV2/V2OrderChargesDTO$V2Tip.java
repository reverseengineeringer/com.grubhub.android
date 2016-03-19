package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class V2OrderChargesDTO$V2Tip
  implements Parcelable
{
  public static final Parcelable.Creator<V2Tip> CREATOR = new Parcelable.Creator()
  {
    public V2OrderChargesDTO.V2Tip createFromParcel(Parcel paramAnonymousParcel)
    {
      return new V2OrderChargesDTO.V2Tip(paramAnonymousParcel, null);
    }
    
    public V2OrderChargesDTO.V2Tip[] newArray(int paramAnonymousInt)
    {
      return new V2OrderChargesDTO.V2Tip[paramAnonymousInt];
    }
  };
  protected Integer amount;
  protected String type;
  
  private V2OrderChargesDTO$V2Tip(Parcel paramParcel)
  {
    amount = ((Integer)paramParcel.readValue(null));
    type = ((String)paramParcel.readValue(null));
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeValue(amount);
    paramParcel.writeValue(type);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2OrderChargesDTO.V2Tip
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */