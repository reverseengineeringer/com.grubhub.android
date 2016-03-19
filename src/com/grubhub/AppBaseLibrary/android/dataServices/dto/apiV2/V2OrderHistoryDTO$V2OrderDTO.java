package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderDataModel.GHSIPastOrderItem;
import com.grubhub.AppBaseLibrary.android.order.g;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TimeZone;

public class V2OrderHistoryDTO$V2OrderDTO
  extends V2CartDTO
  implements GHSIPastOrderDataModel
{
  public static final Parcelable.Creator<V2OrderDTO> CREATOR = new Parcelable.Creator()
  {
    public V2OrderHistoryDTO.V2OrderDTO createFromParcel(Parcel paramAnonymousParcel)
    {
      return new V2OrderHistoryDTO.V2OrderDTO(paramAnonymousParcel, null);
    }
    
    public V2OrderHistoryDTO.V2OrderDTO[] newArray(int paramAnonymousInt)
    {
      return new V2OrderHistoryDTO.V2OrderDTO[paramAnonymousInt];
    }
  };
  protected String brand;
  protected V2OrderHistoryDTO.V2OrderDTO.V2DinerInfo diner_info;
  protected Boolean group;
  protected String order_number;
  protected V2OrderHistoryDTO.V2OrderDTO.V2OrderTracking order_tracking;
  protected String start_time;
  protected String state;
  
  private V2OrderHistoryDTO$V2OrderDTO(Parcel paramParcel)
  {
    id = ((String)paramParcel.readValue(null));
    group_id = ((String)paramParcel.readValue(null));
    brand = ((String)paramParcel.readValue(null));
    when_for = ((String)paramParcel.readValue(null));
    start_time = ((String)paramParcel.readValue(null));
    time_placed = ((String)paramParcel.readValue(null));
    currency = ((String)paramParcel.readValue(null));
    state = ((String)paramParcel.readValue(null));
    asap = ((Boolean)paramParcel.readValue(null));
    group = ((Boolean)paramParcel.readValue(null));
    order_number = ((String)paramParcel.readValue(null));
    diner_info = ((V2OrderHistoryDTO.V2OrderDTO.V2DinerInfo)paramParcel.readParcelable(V2OrderHistoryDTO.V2OrderDTO.V2DinerInfo.class.getClassLoader()));
    fulfillment_info = ((V2FulfillmentInfoDTO)paramParcel.readParcelable(V2FulfillmentInfoDTO.class.getClassLoader()));
    charges = ((V2OrderChargesDTO)paramParcel.readParcelable(V2OrderChargesDTO.class.getClassLoader()));
    order_tracking = ((V2OrderHistoryDTO.V2OrderDTO.V2OrderTracking)paramParcel.readParcelable(V2OrderHistoryDTO.V2OrderDTO.V2OrderTracking.class.getClassLoader()));
    restaurant_ids = new ArrayList();
    paramParcel.readList(restaurant_ids, String.class.getClassLoader());
    int j = paramParcel.readInt();
    if (j > 0)
    {
      payments = new HashMap();
      int i = 0;
      while (i < j)
      {
        String str = paramParcel.readString();
        ArrayList localArrayList = new ArrayList();
        paramParcel.readList(localArrayList, V2CartPaymentDTO.class.getClassLoader());
        payments.put(str, localArrayList);
        i += 1;
      }
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getDinerEmail()
  {
    if (diner_info != null) {
      return diner_info.email;
    }
    return null;
  }
  
  public String getDinerGrandTotal()
  {
    if ((charges != null) && (charges.diner_grand_total != null)) {
      return String.valueOf(charges.diner_grand_total);
    }
    return null;
  }
  
  public String getDinerName()
  {
    if (diner_info != null) {
      return diner_info.name;
    }
    return null;
  }
  
  public String getDinerPhone()
  {
    if (diner_info != null) {
      return diner_info.phone;
    }
    return null;
  }
  
  public String getFoodItemsCommaSeparated()
  {
    if ((charges != null) && (charges.lines != null) && (charges.lines.line_items != null) && (charges.lines.line_items.size() > 0))
    {
      String str1 = "";
      Iterator localIterator = charges.lines.line_items.iterator();
      for (;;)
      {
        str2 = str1;
        if (!localIterator.hasNext()) {
          break;
        }
        V2OrderLineDTO localV2OrderLineDTO = (V2OrderLineDTO)localIterator.next();
        str2 = str1;
        if (!str1.equals("")) {
          str2 = str1 + ", ";
        }
        str1 = str2 + localV2OrderLineDTO.getItemName();
      }
    }
    String str2 = null;
    return str2;
  }
  
  public String getOrderId()
  {
    return id;
  }
  
  public String getOrderNumber()
  {
    return order_number;
  }
  
  public String getOrderState()
  {
    return state;
  }
  
  public g getOrderType()
  {
    if (fulfillment_info != null) {
      return fulfillment_info.getOrderType();
    }
    return null;
  }
  
  public ArrayList<GHSIPastOrderDataModel.GHSIPastOrderItem> getPastOrderItemList()
  {
    if ((charges != null) && (charges.lines != null) && (charges.lines.line_items != null)) {
      return new ArrayList(charges.lines.line_items);
    }
    return null;
  }
  
  public String getRestaurantId()
  {
    if ((restaurant_ids != null) && (!restaurant_ids.isEmpty())) {
      return (String)restaurant_ids.get(0);
    }
    return null;
  }
  
  public String getRestaurantLatitude()
  {
    return null;
  }
  
  public String getRestaurantLogoURL()
  {
    return null;
  }
  
  public String getRestaurantLongitude()
  {
    return null;
  }
  
  public String getRestaurantName()
  {
    if ((charges != null) && (charges.lines != null) && (charges.lines.line_items != null) && (!charges.lines.line_items.isEmpty())) {
      return ((V2OrderLineDTO)charges.lines.line_items.get(0)).getRestaurantName();
    }
    return null;
  }
  
  public String getTimePlacedString()
  {
    long l = getTimePlacedMillis();
    if (l > 0L)
    {
      SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("MMMM dd, yyyy, h:mm a", Locale.US);
      localSimpleDateFormat.setTimeZone(TimeZone.getDefault());
      return localSimpleDateFormat.format(new Date(l));
    }
    return null;
  }
  
  public boolean hasOrderItems()
  {
    return (charges != null) && (charges.lines != null) && (charges.lines.line_items != null) && (!charges.lines.line_items.isEmpty());
  }
  
  public boolean isOrderTrackingEnabled()
  {
    if (order_tracking == null) {
      return false;
    }
    return order_tracking.enabled;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeValue(id);
    paramParcel.writeValue(group_id);
    paramParcel.writeValue(brand);
    paramParcel.writeValue(when_for);
    paramParcel.writeValue(start_time);
    paramParcel.writeValue(time_placed);
    paramParcel.writeValue(currency);
    paramParcel.writeValue(state);
    paramParcel.writeValue(asap);
    paramParcel.writeValue(group);
    paramParcel.writeValue(order_number);
    paramParcel.writeParcelable(diner_info, paramInt);
    paramParcel.writeParcelable(fulfillment_info, paramInt);
    paramParcel.writeParcelable(charges, paramInt);
    paramParcel.writeParcelable(order_tracking, paramInt);
    paramParcel.writeList(restaurant_ids);
    if (payments == null) {}
    for (paramInt = 0;; paramInt = payments.size())
    {
      paramParcel.writeInt(paramInt);
      if (payments == null) {
        break;
      }
      Iterator localIterator = payments.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        paramParcel.writeString((String)localEntry.getKey());
        paramParcel.writeList((List)localEntry.getValue());
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2OrderHistoryDTO.V2OrderDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */