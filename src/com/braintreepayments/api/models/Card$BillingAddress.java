package com.braintreepayments.api.models;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;

public class Card$BillingAddress
  implements Parcelable, Serializable
{
  public static final Parcelable.Creator<BillingAddress> CREATOR = new Parcelable.Creator()
  {
    public Card.BillingAddress a(Parcel paramAnonymousParcel)
    {
      return new Card.BillingAddress(paramAnonymousParcel, null);
    }
    
    public Card.BillingAddress[] a(int paramAnonymousInt)
    {
      return new Card.BillingAddress[paramAnonymousInt];
    }
  };
  @SerializedName("firstName")
  private String a;
  @SerializedName("lastName")
  private String b;
  @SerializedName("countryName")
  private String c;
  @SerializedName("locality")
  private String d;
  @SerializedName("postalCode")
  private String e;
  @SerializedName("region")
  private String f;
  @SerializedName("streetAddress")
  private String g;
  
  public Card$BillingAddress() {}
  
  private Card$BillingAddress(Parcel paramParcel)
  {
    a = paramParcel.readString();
    b = paramParcel.readString();
    c = paramParcel.readString();
    d = paramParcel.readString();
    e = paramParcel.readString();
    f = paramParcel.readString();
    g = paramParcel.readString();
  }
  
  protected void a(String paramString)
  {
    e = paramString;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(a);
    paramParcel.writeString(b);
    paramParcel.writeString(c);
    paramParcel.writeString(d);
    paramParcel.writeString(e);
    paramParcel.writeString(f);
    paramParcel.writeString(g);
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.api.models.Card.BillingAddress
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */