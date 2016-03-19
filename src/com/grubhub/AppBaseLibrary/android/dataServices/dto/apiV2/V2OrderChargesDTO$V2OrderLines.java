package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.ArrayList;

public class V2OrderChargesDTO$V2OrderLines
  implements Parcelable
{
  public static final Parcelable.Creator<V2OrderLines> CREATOR = new Parcelable.Creator()
  {
    public V2OrderChargesDTO.V2OrderLines createFromParcel(Parcel paramAnonymousParcel)
    {
      return new V2OrderChargesDTO.V2OrderLines(paramAnonymousParcel, null);
    }
    
    public V2OrderChargesDTO.V2OrderLines[] newArray(int paramAnonymousInt)
    {
      return new V2OrderChargesDTO.V2OrderLines[paramAnonymousInt];
    }
  };
  protected Integer diner_total;
  protected ArrayList<V2OrderLineDTO> line_items;
  
  private V2OrderChargesDTO$V2OrderLines(Parcel paramParcel)
  {
    diner_total = ((Integer)paramParcel.readValue(null));
    line_items = new ArrayList();
    paramParcel.readList(line_items, V2OrderLineDTO.class.getClassLoader());
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeValue(diner_total);
    paramParcel.writeList(line_items);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2OrderChargesDTO.V2OrderLines
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */