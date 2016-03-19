package com.braintreepayments.api.models;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;

public class PostalAddress
  implements Parcelable, Serializable
{
  public static final Parcelable.Creator<PostalAddress> CREATOR = new Parcelable.Creator()
  {
    public PostalAddress a(Parcel paramAnonymousParcel)
    {
      return new PostalAddress(paramAnonymousParcel, null);
    }
    
    public PostalAddress[] a(int paramAnonymousInt)
    {
      return new PostalAddress[paramAnonymousInt];
    }
  };
  @SerializedName("street1")
  private String a;
  @SerializedName("street2")
  private String b;
  @SerializedName("city")
  private String c;
  @SerializedName("country")
  private String d;
  @SerializedName("postalCode")
  private String e;
  @SerializedName("state")
  private String f;
  
  public PostalAddress() {}
  
  private PostalAddress(Parcel paramParcel)
  {
    a = paramParcel.readString();
    b = paramParcel.readString();
    c = paramParcel.readString();
    d = paramParcel.readString();
    e = paramParcel.readString();
    f = paramParcel.readString();
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
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.api.models.PostalAddress
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */