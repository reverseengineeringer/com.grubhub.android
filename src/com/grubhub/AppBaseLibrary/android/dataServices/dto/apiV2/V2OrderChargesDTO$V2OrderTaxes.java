package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class V2OrderChargesDTO$V2OrderTaxes
  implements Parcelable
{
  public static final Parcelable.Creator<V2OrderTaxes> CREATOR = new Parcelable.Creator()
  {
    public V2OrderChargesDTO.V2OrderTaxes createFromParcel(Parcel paramAnonymousParcel)
    {
      return new V2OrderChargesDTO.V2OrderTaxes(paramAnonymousParcel, null);
    }
    
    public V2OrderChargesDTO.V2OrderTaxes[] newArray(int paramAnonymousInt)
    {
      return new V2OrderChargesDTO.V2OrderTaxes[paramAnonymousInt];
    }
  };
  protected Integer delivery;
  protected Integer sales;
  protected Integer total;
  
  private V2OrderChargesDTO$V2OrderTaxes(Parcel paramParcel)
  {
    total = ((Integer)paramParcel.readValue(null));
    sales = ((Integer)paramParcel.readValue(null));
    delivery = ((Integer)paramParcel.readValue(null));
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeValue(total);
    paramParcel.writeValue(sales);
    paramParcel.writeValue(delivery);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2OrderChargesDTO.V2OrderTaxes
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */