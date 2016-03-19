package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.grubhub.AppBaseLibrary.android.order.g;

public class V2FulfillmentInfoDTO
  implements Parcelable
{
  public static final Parcelable.Creator<V2FulfillmentInfoDTO> CREATOR = new Parcelable.Creator()
  {
    public V2FulfillmentInfoDTO createFromParcel(Parcel paramAnonymousParcel)
    {
      return new V2FulfillmentInfoDTO(paramAnonymousParcel, null);
    }
    
    public V2FulfillmentInfoDTO[] newArray(int paramAnonymousInt)
    {
      return new V2FulfillmentInfoDTO[paramAnonymousInt];
    }
  };
  protected static final String DELIVERY = "DELIVERY";
  protected static final String INCOMPLETE_DELIVERY = "INCOMPLETE_DELIVERY";
  protected static final String INCOMPLETE_PICKUP = "INCOMPLETE_PICKUP";
  protected static final String PICKUP = "PICKUP";
  protected V2DeliveryInfoDTO delivery_info;
  protected V2GeoInfoDTO geo_info;
  protected V2DeliveryInfoDTO incomplete_delivery;
  protected V2PickupDTO incomplete_pickup;
  protected V2IndividualInfoDTO individual_info;
  protected V2PickupDTO pickup_info;
  protected String type;
  
  private V2FulfillmentInfoDTO(Parcel paramParcel)
  {
    type = ((String)paramParcel.readValue(null));
    delivery_info = ((V2DeliveryInfoDTO)paramParcel.readParcelable(V2DeliveryInfoDTO.class.getClassLoader()));
    incomplete_delivery = ((V2DeliveryInfoDTO)paramParcel.readParcelable(V2DeliveryInfoDTO.class.getClassLoader()));
    pickup_info = ((V2PickupDTO)paramParcel.readParcelable(V2PickupDTO.class.getClassLoader()));
    incomplete_pickup = ((V2PickupDTO)paramParcel.readParcelable(V2PickupDTO.class.getClassLoader()));
    geo_info = ((V2GeoInfoDTO)paramParcel.readParcelable(V2GeoInfoDTO.class.getClassLoader()));
    individual_info = ((V2IndividualInfoDTO)paramParcel.readParcelable(V2IndividualInfoDTO.class.getClassLoader()));
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public g getOrderType()
  {
    if ("DELIVERY".equalsIgnoreCase(type)) {
      return g.DELIVERY;
    }
    if ("PICKUP".equalsIgnoreCase(type)) {
      return g.PICKUP;
    }
    return null;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeValue(type);
    paramParcel.writeParcelable(delivery_info, paramInt);
    paramParcel.writeParcelable(incomplete_delivery, paramInt);
    paramParcel.writeParcelable(pickup_info, paramInt);
    paramParcel.writeParcelable(incomplete_pickup, paramInt);
    paramParcel.writeParcelable(geo_info, paramInt);
    paramParcel.writeParcelable(individual_info, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2FulfillmentInfoDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */