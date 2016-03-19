package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.ArrayList;

public class V2OrderChargesDTO
  implements Parcelable
{
  public static final Parcelable.Creator<V2OrderChargesDTO> CREATOR = new Parcelable.Creator()
  {
    public V2OrderChargesDTO createFromParcel(Parcel paramAnonymousParcel)
    {
      return new V2OrderChargesDTO(paramAnonymousParcel, null);
    }
    
    public V2OrderChargesDTO[] newArray(int paramAnonymousInt)
    {
      return new V2OrderChargesDTO[paramAnonymousInt];
    }
  };
  protected ArrayList<V2CouponDTO> coupons;
  protected Integer diner_grand_total;
  protected Integer diner_subtotal;
  protected V2OrderChargesDTO.V2OrderFees fees;
  protected V2OrderChargesDTO.V2OrderLines lines;
  protected V2OrderChargesDTO.V2OrderTaxes taxes;
  protected V2OrderChargesDTO.V2Tip tip;
  
  private V2OrderChargesDTO(Parcel paramParcel)
  {
    diner_grand_total = ((Integer)paramParcel.readValue(null));
    diner_subtotal = ((Integer)paramParcel.readValue(null));
    coupons = new ArrayList();
    paramParcel.readList(coupons, V2CouponDTO.class.getClassLoader());
    lines = ((V2OrderChargesDTO.V2OrderLines)paramParcel.readParcelable(V2OrderChargesDTO.V2OrderLines.class.getClassLoader()));
    fees = ((V2OrderChargesDTO.V2OrderFees)paramParcel.readParcelable(V2OrderChargesDTO.V2OrderFees.class.getClassLoader()));
    taxes = ((V2OrderChargesDTO.V2OrderTaxes)paramParcel.readParcelable(V2OrderChargesDTO.V2OrderTaxes.class.getClassLoader()));
    tip = ((V2OrderChargesDTO.V2Tip)paramParcel.readParcelable(V2OrderChargesDTO.V2Tip.class.getClassLoader()));
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeValue(diner_grand_total);
    paramParcel.writeValue(diner_subtotal);
    paramParcel.writeList(coupons);
    paramParcel.writeParcelable(lines, paramInt);
    paramParcel.writeParcelable(fees, paramInt);
    paramParcel.writeParcelable(taxes, paramInt);
    paramParcel.writeParcelable(tip, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2OrderChargesDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */