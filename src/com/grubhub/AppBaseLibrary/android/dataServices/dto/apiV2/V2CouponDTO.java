package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICouponDataModel;

public class V2CouponDTO
  implements Parcelable, GHSICouponDataModel
{
  public static final Parcelable.Creator<V2CouponDTO> CREATOR = new Parcelable.Creator()
  {
    public V2CouponDTO createFromParcel(Parcel paramAnonymousParcel)
    {
      return new V2CouponDTO(paramAnonymousParcel, null);
    }
    
    public V2CouponDTO[] newArray(int paramAnonymousInt)
    {
      return new V2CouponDTO[paramAnonymousInt];
    }
  };
  private Integer amount;
  private String coupon_id;
  private String description;
  private String id;
  private Integer minimum_amount;
  private String restaurant_id;
  
  private V2CouponDTO(Parcel paramParcel)
  {
    id = ((String)paramParcel.readValue(null));
    coupon_id = ((String)paramParcel.readValue(null));
    restaurant_id = ((String)paramParcel.readValue(null));
    description = ((String)paramParcel.readValue(null));
    amount = ((Integer)paramParcel.readValue(null));
    minimum_amount = ((Integer)paramParcel.readValue(null));
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Float getAmount()
  {
    if (amount != null) {
      return Float.valueOf(V2CartDTO.centsToDollars(amount.intValue()));
    }
    return null;
  }
  
  public Integer getAmountInCents()
  {
    return amount;
  }
  
  public String getCouponId()
  {
    return coupon_id;
  }
  
  public String getDescription()
  {
    return description;
  }
  
  public String getId()
  {
    return id;
  }
  
  public Float getMinimumAmount()
  {
    if (minimum_amount != null) {
      return Float.valueOf(V2CartDTO.centsToDollars(minimum_amount.intValue()));
    }
    return null;
  }
  
  public Integer getMinimumAmountInCents()
  {
    return minimum_amount;
  }
  
  public String getRestaurantId()
  {
    return restaurant_id;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeValue(id);
    paramParcel.writeValue(coupon_id);
    paramParcel.writeValue(restaurant_id);
    paramParcel.writeValue(description);
    paramParcel.writeValue(amount);
    paramParcel.writeValue(minimum_amount);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2CouponDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */