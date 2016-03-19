package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel.GHSIItemOptionSelection;
import java.util.ArrayList;

class V2OrderLineDTO$V2OrderLineOption
  implements Parcelable, GHSICartDataModel.GHSIItemOptionSelection
{
  public static final Parcelable.Creator<V2OrderLineOption> CREATOR = new Parcelable.Creator()
  {
    public V2OrderLineDTO.V2OrderLineOption createFromParcel(Parcel paramAnonymousParcel)
    {
      return new V2OrderLineDTO.V2OrderLineOption(paramAnonymousParcel, null);
    }
    
    public V2OrderLineDTO.V2OrderLineOption[] newArray(int paramAnonymousInt)
    {
      return new V2OrderLineDTO.V2OrderLineOption[paramAnonymousInt];
    }
  };
  private String id;
  private String name;
  private Integer price;
  private ArrayList<V2OrderLineDTO.V2OrderLineSubOption> sub_options;
  
  private V2OrderLineDTO$V2OrderLineOption(Parcel paramParcel)
  {
    id = ((String)paramParcel.readValue(null));
    name = ((String)paramParcel.readValue(null));
    price = ((Integer)paramParcel.readValue(null));
    sub_options = new ArrayList();
    paramParcel.readList(sub_options, V2OrderLineDTO.V2OrderLineSubOption.class.getClassLoader());
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getId()
  {
    return id;
  }
  
  public ArrayList<GHSICartDataModel.GHSIItemOptionSelection> getSubSelectionList()
  {
    if ((sub_options != null) && (!sub_options.isEmpty())) {
      return new ArrayList(sub_options);
    }
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
    paramParcel.writeList(sub_options);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2OrderLineDTO.V2OrderLineOption
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */