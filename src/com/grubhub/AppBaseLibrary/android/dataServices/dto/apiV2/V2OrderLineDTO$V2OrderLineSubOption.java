package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel.GHSIItemOptionSelection;
import java.util.ArrayList;

class V2OrderLineDTO$V2OrderLineSubOption
  implements Parcelable, GHSICartDataModel.GHSIItemOptionSelection
{
  public static final Parcelable.Creator<V2OrderLineSubOption> CREATOR = new Parcelable.Creator()
  {
    public V2OrderLineDTO.V2OrderLineSubOption createFromParcel(Parcel paramAnonymousParcel)
    {
      return new V2OrderLineDTO.V2OrderLineSubOption(paramAnonymousParcel, null);
    }
    
    public V2OrderLineDTO.V2OrderLineSubOption[] newArray(int paramAnonymousInt)
    {
      return new V2OrderLineDTO.V2OrderLineSubOption[paramAnonymousInt];
    }
  };
  private String id;
  private String name;
  private Integer price;
  
  private V2OrderLineDTO$V2OrderLineSubOption(Parcel paramParcel)
  {
    id = ((String)paramParcel.readValue(null));
    name = ((String)paramParcel.readValue(null));
    price = ((Integer)paramParcel.readValue(null));
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getId()
  {
    return id;
  }
  
  @Deprecated
  public ArrayList<GHSICartDataModel.GHSIItemOptionSelection> getSubSelectionList()
  {
    return null;
  }
  
  public String optionRefId()
  {
    return getId();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeValue(id);
    paramParcel.writeValue(name);
    paramParcel.writeValue(price);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2OrderLineDTO.V2OrderLineSubOption
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */