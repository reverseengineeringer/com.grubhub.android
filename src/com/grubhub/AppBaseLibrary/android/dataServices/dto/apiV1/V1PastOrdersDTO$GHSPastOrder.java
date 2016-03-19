package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.format.DateUtils;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICouponDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderDataModel.GHSIPastOrderItem;
import com.grubhub.AppBaseLibrary.android.order.g;
import java.util.ArrayList;
import java.util.Iterator;

public class V1PastOrdersDTO$GHSPastOrder
  implements Parcelable, GHSIPastOrderDataModel
{
  public static final Parcelable.Creator<GHSPastOrder> CREATOR = new Parcelable.Creator()
  {
    public V1PastOrdersDTO.GHSPastOrder createFromParcel(Parcel paramAnonymousParcel)
    {
      return new V1PastOrdersDTO.GHSPastOrder(paramAnonymousParcel, null);
    }
    
    public V1PastOrdersDTO.GHSPastOrder[] newArray(int paramAnonymousInt)
    {
      return new V1PastOrdersDTO.GHSPastOrder[paramAnonymousInt];
    }
  };
  public long completeOrderTime;
  public String date;
  public String dinerGrandTotal;
  public String id;
  private V1PastOrdersDTO.GHSPastOrderItems items;
  public boolean needsReview;
  public String orderMethod;
  public V1PastOrdersDTO.GHSPastOrderRestaurant restaurant;
  public String systemOfRecord;
  
  private V1PastOrdersDTO$GHSPastOrder(Parcel paramParcel)
  {
    restaurant = ((V1PastOrdersDTO.GHSPastOrderRestaurant)paramParcel.readParcelable(V1PastOrdersDTO.GHSPastOrderRestaurant.class.getClassLoader()));
    completeOrderTime = paramParcel.readLong();
    id = paramParcel.readString();
    orderMethod = paramParcel.readString();
    if (paramParcel.readInt() != 0) {}
    for (boolean bool = true;; bool = false)
    {
      needsReview = bool;
      date = paramParcel.readString();
      systemOfRecord = paramParcel.readString();
      dinerGrandTotal = paramParcel.readString();
      items = ((V1PastOrdersDTO.GHSPastOrderItems)paramParcel.readParcelable(V1PastOrdersDTO.GHSPastOrderItems.class.getClassLoader()));
      return;
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public GHSICouponDataModel getCoupon()
  {
    return null;
  }
  
  public String getDinerEmail()
  {
    return null;
  }
  
  public String getDinerGrandTotal()
  {
    return dinerGrandTotal;
  }
  
  public String getDinerName()
  {
    return null;
  }
  
  public String getDinerPhone()
  {
    return null;
  }
  
  public String getFoodItemsCommaSeparated()
  {
    String str1 = "";
    String str2 = str1;
    if (items != null)
    {
      str2 = str1;
      if (V1PastOrdersDTO.GHSPastOrderItems.access$200(items) != null)
      {
        Iterator localIterator = V1PastOrdersDTO.GHSPastOrderItems.access$200(items).iterator();
        for (;;)
        {
          str2 = str1;
          if (!localIterator.hasNext()) {
            break;
          }
          V1PastOrdersDTO.GHSPastOrderItem localGHSPastOrderItem = (V1PastOrdersDTO.GHSPastOrderItem)localIterator.next();
          str2 = str1;
          if (!str1.equals("")) {
            str2 = str1 + ", ";
          }
          str1 = str2 + V1PastOrdersDTO.GHSPastOrderItem.access$300(localGHSPastOrderItem);
        }
      }
    }
    return str2;
  }
  
  public String getOrderId()
  {
    return id;
  }
  
  public String getOrderNumber()
  {
    return null;
  }
  
  public String getOrderState()
  {
    return null;
  }
  
  public g getOrderType()
  {
    Object localObject1 = null;
    Object localObject2 = null;
    if (orderMethod != null)
    {
      localObject1 = localObject2;
      if (orderMethod.equalsIgnoreCase(GHSApplication.a().getString(2131231745))) {
        localObject1 = g.DELIVERY;
      }
      if (orderMethod.equalsIgnoreCase(GHSApplication.a().getString(2131231748))) {
        localObject1 = g.PICKUP;
      }
    }
    return (g)localObject1;
  }
  
  public ArrayList<GHSIPastOrderDataModel.GHSIPastOrderItem> getPastOrderItemList()
  {
    ArrayList localArrayList = new ArrayList();
    if ((items != null) && (V1PastOrdersDTO.GHSPastOrderItems.access$200(items) != null)) {
      localArrayList.addAll(V1PastOrdersDTO.GHSPastOrderItems.access$200(items));
    }
    return localArrayList;
  }
  
  public String getRestaurantId()
  {
    if (restaurant != null) {
      return restaurant.id;
    }
    return null;
  }
  
  public String getRestaurantLatitude()
  {
    if (restaurant != null) {
      return restaurant.lat;
    }
    return null;
  }
  
  public String getRestaurantLogoURL()
  {
    if (restaurant != null) {
      return restaurant.logoURL;
    }
    return null;
  }
  
  public String getRestaurantLongitude()
  {
    if (restaurant != null) {
      return restaurant.lng;
    }
    return null;
  }
  
  public String getRestaurantName()
  {
    if (restaurant != null) {
      return restaurant.name;
    }
    return "";
  }
  
  public long getTimePlacedMillis()
  {
    return completeOrderTime;
  }
  
  public String getTimePlacedString()
  {
    String str = "";
    if (completeOrderTime != 0L) {
      str = DateUtils.formatDateTime(GHSApplication.a(), completeOrderTime, 21);
    }
    return str;
  }
  
  public boolean hasOrderItems()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (items != null)
    {
      bool1 = bool2;
      if (V1PastOrdersDTO.GHSPastOrderItems.access$200(items) != null)
      {
        bool1 = bool2;
        if (!V1PastOrdersDTO.GHSPastOrderItems.access$200(items).isEmpty()) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public boolean isOrderTrackingEnabled()
  {
    return false;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(restaurant, 0);
    paramParcel.writeLong(completeOrderTime);
    paramParcel.writeString(id);
    paramParcel.writeString(orderMethod);
    if (needsReview) {}
    for (paramInt = 1;; paramInt = 0)
    {
      paramParcel.writeInt(paramInt);
      paramParcel.writeString(date);
      paramParcel.writeString(systemOfRecord);
      paramParcel.writeString(dinerGrandTotal);
      paramParcel.writeParcelable(items, 0);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1PastOrdersDTO.GHSPastOrder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */