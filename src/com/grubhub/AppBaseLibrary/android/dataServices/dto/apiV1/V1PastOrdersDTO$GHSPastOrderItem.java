package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderDataModel.GHSIPastOrderItem;

public class V1PastOrdersDTO$GHSPastOrderItem
  implements Parcelable, GHSIPastOrderDataModel.GHSIPastOrderItem
{
  public static final Parcelable.Creator<GHSPastOrderItem> CREATOR = new Parcelable.Creator()
  {
    public V1PastOrdersDTO.GHSPastOrderItem createFromParcel(Parcel paramAnonymousParcel)
    {
      return new V1PastOrdersDTO.GHSPastOrderItem(paramAnonymousParcel, null);
    }
    
    public V1PastOrdersDTO.GHSPastOrderItem[] newArray(int paramAnonymousInt)
    {
      return new V1PastOrdersDTO.GHSPastOrderItem[paramAnonymousInt];
    }
  };
  private String choiceDescription;
  private String id;
  private String name;
  private String price;
  private int quantity;
  
  private V1PastOrdersDTO$GHSPastOrderItem(Parcel paramParcel)
  {
    id = paramParcel.readString();
    name = paramParcel.readString();
    choiceDescription = paramParcel.readString();
    quantity = paramParcel.readInt();
    price = paramParcel.readString();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getId()
  {
    return id;
  }
  
  public String getItemChoiceDescription()
  {
    return choiceDescription;
  }
  
  public String getItemName()
  {
    return name;
  }
  
  public Float getItemPrice()
  {
    Float localFloat = null;
    if (price != null) {
      price = price.replace("$ ", "");
    }
    try
    {
      localFloat = Float.valueOf(price);
      return localFloat;
    }
    catch (NumberFormatException localNumberFormatException) {}
    return null;
  }
  
  public Integer getItemQuantity()
  {
    return Integer.valueOf(quantity);
  }
  
  public String getOriginalItemId()
  {
    return null;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(id);
    paramParcel.writeString(name);
    paramParcel.writeString(choiceDescription);
    paramParcel.writeInt(quantity);
    paramParcel.writeString(price);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1PastOrdersDTO.GHSPastOrderItem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */