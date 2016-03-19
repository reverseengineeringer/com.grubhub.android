package com.braintreepayments.api.models;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;

public class AndroidPayCard
  extends PaymentMethod
  implements Parcelable, Serializable
{
  public static final Parcelable.Creator<AndroidPayCard> CREATOR = new Parcelable.Creator()
  {
    public AndroidPayCard a(Parcel paramAnonymousParcel)
    {
      return new AndroidPayCard(paramAnonymousParcel, null);
    }
    
    public AndroidPayCard[] a(int paramAnonymousInt)
    {
      return new AndroidPayCard[paramAnonymousInt];
    }
  };
  @SerializedName("details")
  private AndroidPayCard.AndroidPayCardDetails e;
  
  public AndroidPayCard() {}
  
  private AndroidPayCard(Parcel paramParcel)
  {
    e = ((AndroidPayCard.AndroidPayCardDetails)paramParcel.readParcelable(AndroidPayCard.AndroidPayCardDetails.class.getClassLoader()));
    a = paramParcel.readString();
    b = paramParcel.readString();
    c = ((m)paramParcel.readSerializable());
    d = paramParcel.readString();
  }
  
  public String a()
  {
    return "Google Wallet";
  }
  
  public String b()
  {
    return e.a();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(e, 0);
    paramParcel.writeString(a);
    paramParcel.writeString(b);
    paramParcel.writeSerializable(c);
    paramParcel.writeString(d);
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.api.models.AndroidPayCard
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */