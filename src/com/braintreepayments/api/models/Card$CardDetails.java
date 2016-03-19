package com.braintreepayments.api.models;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;

class Card$CardDetails
  implements Parcelable, Serializable
{
  public static final Parcelable.Creator<CardDetails> CREATOR = new Parcelable.Creator()
  {
    public Card.CardDetails a(Parcel paramAnonymousParcel)
    {
      return new Card.CardDetails(paramAnonymousParcel, null);
    }
    
    public Card.CardDetails[] a(int paramAnonymousInt)
    {
      return new Card.CardDetails[paramAnonymousInt];
    }
  };
  @SerializedName("cardType")
  private String a;
  @SerializedName("lastTwo")
  private String b;
  
  public Card$CardDetails() {}
  
  private Card$CardDetails(Parcel paramParcel)
  {
    a = paramParcel.readString();
    b = paramParcel.readString();
  }
  
  protected String a()
  {
    return a;
  }
  
  protected String b()
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
 * Qualified Name:     com.braintreepayments.api.models.Card.CardDetails
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */