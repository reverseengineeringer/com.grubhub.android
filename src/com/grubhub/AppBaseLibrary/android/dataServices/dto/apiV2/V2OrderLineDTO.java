package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel.GHSIItemOptionSelection;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel.GHSIOrderItem;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderDataModel.GHSIPastOrderItem;
import java.util.ArrayList;

public class V2OrderLineDTO
  implements Parcelable, GHSICartDataModel.GHSIOrderItem, GHSIPastOrderDataModel.GHSIPastOrderItem
{
  public static final Parcelable.Creator<V2OrderLineDTO> CREATOR = new Parcelable.Creator()
  {
    public V2OrderLineDTO createFromParcel(Parcel paramAnonymousParcel)
    {
      return new V2OrderLineDTO(paramAnonymousParcel, null);
    }
    
    public V2OrderLineDTO[] newArray(int paramAnonymousInt)
    {
      return new V2OrderLineDTO[paramAnonymousInt];
    }
  };
  private Integer diner_total;
  private Integer display_price;
  private String id;
  private String menu_item_id;
  private String name;
  private ArrayList<V2OrderLineDTO.V2OrderLineOption> options;
  private Integer price;
  private Integer quantity;
  private V2OrderRestaurantDTO restaurant;
  private String special_instructions;
  
  private V2OrderLineDTO(Parcel paramParcel)
  {
    id = ((String)paramParcel.readValue(null));
    menu_item_id = ((String)paramParcel.readValue(null));
    name = ((String)paramParcel.readValue(null));
    special_instructions = ((String)paramParcel.readValue(null));
    quantity = ((Integer)paramParcel.readValue(null));
    price = ((Integer)paramParcel.readValue(null));
    display_price = ((Integer)paramParcel.readValue(null));
    diner_total = ((Integer)paramParcel.readValue(null));
    options = new ArrayList();
    paramParcel.readList(options, V2OrderLineDTO.V2OrderLineOption.class.getClassLoader());
    restaurant = ((V2OrderRestaurantDTO)paramParcel.readValue(V2OrderRestaurantDTO.class.getClassLoader()));
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Float getDinerTotal()
  {
    if (diner_total != null) {
      return Float.valueOf(V2CartDTO.centsToDollars(diner_total.intValue()));
    }
    return null;
  }
  
  public Integer getDinerTotalInCents()
  {
    if (diner_total != null) {
      return diner_total;
    }
    return null;
  }
  
  public String getId()
  {
    return id;
  }
  
  public String getItemChoiceDescription()
  {
    return null;
  }
  
  public String getItemName()
  {
    return name;
  }
  
  public Float getItemPrice()
  {
    if ((diner_total != null) && (quantity != null)) {
      return Float.valueOf(V2CartDTO.centsToDollars(diner_total.intValue() / quantity.intValue()));
    }
    return null;
  }
  
  public Integer getItemQuantity()
  {
    return quantity;
  }
  
  public String getItemSpecialInstructions()
  {
    return special_instructions;
  }
  
  public String getOriginalItemId()
  {
    return menu_item_id;
  }
  
  public String getRestaurantId()
  {
    if (restaurant != null) {
      return restaurant.id;
    }
    return null;
  }
  
  public String getRestaurantName()
  {
    if (restaurant != null) {
      return restaurant.name;
    }
    return null;
  }
  
  public ArrayList<GHSICartDataModel.GHSIItemOptionSelection> getSelectedItemOptions()
  {
    if ((options != null) && (!options.isEmpty())) {
      return new ArrayList(options);
    }
    return null;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeValue(id);
    paramParcel.writeValue(menu_item_id);
    paramParcel.writeValue(name);
    paramParcel.writeValue(special_instructions);
    paramParcel.writeValue(quantity);
    paramParcel.writeValue(price);
    paramParcel.writeValue(display_price);
    paramParcel.writeValue(diner_total);
    paramParcel.writeList(options);
    paramParcel.writeValue(restaurant);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2OrderLineDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */