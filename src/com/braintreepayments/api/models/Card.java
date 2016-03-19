package com.braintreepayments.api.models;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.Gson;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;

public class Card
  extends PaymentMethod
  implements Parcelable, Serializable
{
  public static final Parcelable.Creator<Card> CREATOR = new Parcelable.Creator()
  {
    public Card a(Parcel paramAnonymousParcel)
    {
      return new Card(paramAnonymousParcel, null);
    }
    
    public Card[] a(int paramAnonymousInt)
    {
      return new Card[paramAnonymousInt];
    }
  };
  @SerializedName("billingAddress")
  private Card.BillingAddress e;
  @SerializedName("threeDSecureInfo")
  private ThreeDSecureInfo f;
  @SerializedName("details")
  private Card.CardDetails g;
  @SerializedName("expirationMonth")
  private String h;
  @SerializedName("expirationYear")
  private String i;
  @SerializedName("expirationDate")
  private String j;
  @SerializedName("number")
  private String k;
  @SerializedName("cvv")
  private String l;
  
  public Card() {}
  
  private Card(Parcel paramParcel)
  {
    e = ((Card.BillingAddress)paramParcel.readParcelable(Card.BillingAddress.class.getClassLoader()));
    g = ((Card.CardDetails)paramParcel.readParcelable(Card.CardDetails.class.getClassLoader()));
    h = paramParcel.readString();
    i = paramParcel.readString();
    j = paramParcel.readString();
    k = paramParcel.readString();
    l = paramParcel.readString();
    a = paramParcel.readString();
    b = paramParcel.readString();
    c = ((m)paramParcel.readSerializable());
    d = paramParcel.readString();
  }
  
  public static Card e(String paramString)
  {
    return (Card)new Gson().fromJson(paramString, Card.class);
  }
  
  public String a()
  {
    return g.a();
  }
  
  protected void a(Card.BillingAddress paramBillingAddress)
  {
    e = paramBillingAddress;
  }
  
  protected void a(ThreeDSecureInfo paramThreeDSecureInfo)
  {
    f = paramThreeDSecureInfo;
  }
  
  protected void a(String paramString)
  {
    h = paramString;
  }
  
  public String b()
  {
    return g.b();
  }
  
  protected void b(String paramString)
  {
    i = paramString;
  }
  
  protected void c(String paramString)
  {
    k = paramString;
  }
  
  protected void d(String paramString)
  {
    l = paramString;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(e, 0);
    paramParcel.writeParcelable(g, 0);
    paramParcel.writeString(h);
    paramParcel.writeString(i);
    paramParcel.writeString(j);
    paramParcel.writeString(k);
    paramParcel.writeString(l);
    paramParcel.writeString(a);
    paramParcel.writeString(b);
    paramParcel.writeSerializable(c);
    paramParcel.writeString(d);
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.api.models.Card
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */