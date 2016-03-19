package com.paypal.android.sdk;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public final class bE
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new cp();
  private cg a;
  private String b;
  private cq c;
  
  public bE() {}
  
  public bE(Parcel paramParcel)
  {
    a = ((cg)paramParcel.readParcelable(cg.class.getClassLoader()));
    b = paramParcel.readString();
    c = ((cq)paramParcel.readSerializable());
  }
  
  public final cg a()
  {
    return a;
  }
  
  public final void a(cg paramcg)
  {
    a = paramcg;
  }
  
  public final void a(cq paramcq)
  {
    c = paramcq;
  }
  
  public final void a(String paramString)
  {
    b = paramString;
  }
  
  public final String b()
  {
    return b;
  }
  
  public final cq c()
  {
    return c;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(a, 0);
    paramParcel.writeString(b);
    paramParcel.writeSerializable(c);
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.bE
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */