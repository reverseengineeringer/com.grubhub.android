package com.braintreepayments.api.models;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;

class AndroidPayCard$AndroidPayCardDetails
  implements Parcelable, Serializable
{
  public static final Parcelable.Creator<AndroidPayCardDetails> CREATOR = new Parcelable.Creator()
  {
    public AndroidPayCard.AndroidPayCardDetails a(Parcel paramAnonymousParcel)
    {
      return new AndroidPayCard.AndroidPayCardDetails(paramAnonymousParcel, null);
    }
    
    public AndroidPayCard.AndroidPayCardDetails[] a(int paramAnonymousInt)
    {
      return new AndroidPayCard.AndroidPayCardDetails[paramAnonymousInt];
    }
  };
  @SerializedName("cardType")
  private String a;
  @SerializedName("lastTwo")
  private String b;
  
  public AndroidPayCard$AndroidPayCardDetails() {}
  
  private AndroidPayCard$AndroidPayCardDetails(Parcel paramParcel)
  {
    a = paramParcel.readString();
    b = paramParcel.readString();
  }
  
  protected String a()
  {
    return b;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(a);
    paramParcel.writeString(b);
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.api.models.AndroidPayCard.AndroidPayCardDetails
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */