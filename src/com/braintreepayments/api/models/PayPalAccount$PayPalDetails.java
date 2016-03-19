package com.braintreepayments.api.models;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;

class PayPalAccount$PayPalDetails
  implements Parcelable, Serializable
{
  public static final Parcelable.Creator<PayPalDetails> CREATOR = new Parcelable.Creator()
  {
    public PayPalAccount.PayPalDetails a(Parcel paramAnonymousParcel)
    {
      return new PayPalAccount.PayPalDetails(paramAnonymousParcel, null);
    }
    
    public PayPalAccount.PayPalDetails[] a(int paramAnonymousInt)
    {
      return new PayPalAccount.PayPalDetails[paramAnonymousInt];
    }
  };
  @SerializedName("email")
  private String a;
  
  public PayPalAccount$PayPalDetails() {}
  
  private PayPalAccount$PayPalDetails(Parcel paramParcel)
  {
    a = paramParcel.readString();
  }
  
  private String a()
  {
    return a;
  }
  
  private void a(String paramString)
  {
    a = paramString;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(a);
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.api.models.PayPalAccount.PayPalDetails
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */