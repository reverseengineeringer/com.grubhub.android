package com.braintreepayments.api.models;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;

public class ThreeDSecureLookup
  implements Parcelable
{
  public static final Parcelable.Creator<ThreeDSecureLookup> CREATOR = new Parcelable.Creator()
  {
    public ThreeDSecureLookup a(Parcel paramAnonymousParcel)
    {
      return new ThreeDSecureLookup(paramAnonymousParcel, null);
    }
    
    public ThreeDSecureLookup[] a(int paramAnonymousInt)
    {
      return new ThreeDSecureLookup[paramAnonymousInt];
    }
  };
  @SerializedName("acsUrl")
  private String a;
  @SerializedName("md")
  private String b;
  @SerializedName("termUrl")
  private String c;
  @SerializedName("pareq")
  private String d;
  
  public ThreeDSecureLookup() {}
  
  private ThreeDSecureLookup(Parcel paramParcel)
  {
    a = paramParcel.readString();
    b = paramParcel.readString();
    c = paramParcel.readString();
    d = paramParcel.readString();
  }
  
  public String a()
  {
    return a;
  }
  
  public String b()
  {
    return b;
  }
  
  public String c()
  {
    return c;
  }
  
  public String d()
  {
    return d;
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
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.api.models.ThreeDSecureLookup
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */