package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel.PaymentTypes;

public class V2CartPaymentDTO
  implements Parcelable, GHSICartPaymentDataModel
{
  public static final Parcelable.Creator<V2CartPaymentDTO> CREATOR = new Parcelable.Creator()
  {
    public V2CartPaymentDTO createFromParcel(Parcel paramAnonymousParcel)
    {
      return new V2CartPaymentDTO(paramAnonymousParcel, null);
    }
    
    public V2CartPaymentDTO[] newArray(int paramAnonymousInt)
    {
      return new V2CartPaymentDTO[paramAnonymousInt];
    }
  };
  protected Integer amount;
  protected String id;
  protected String payment_id;
  
  private V2CartPaymentDTO(Parcel paramParcel)
  {
    id = paramParcel.readString();
    payment_id = paramParcel.readString();
    amount = ((Integer)paramParcel.readValue(null));
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Integer getAmount()
  {
    return amount;
  }
  
  public String getId()
  {
    return id;
  }
  
  public String getPaymentId()
  {
    return payment_id;
  }
  
  public GHSICartPaymentDataModel.PaymentTypes getType()
  {
    return null;
  }
  
  public void setAmount(Integer paramInteger) {}
  
  public void setId(String paramString) {}
  
  public void setPaymentId(String paramString) {}
  
  public void setType(GHSICartPaymentDataModel.PaymentTypes paramPaymentTypes) {}
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(id);
    paramParcel.writeString(payment_id);
    paramParcel.writeValue(amount);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2CartPaymentDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */