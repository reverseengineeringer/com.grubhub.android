package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class UriData
  implements SafeParcelable
{
  public static final Parcelable.Creator<UriData> CREATOR = new i();
  String a;
  String b;
  private final int c;
  
  UriData()
  {
    c = 1;
  }
  
  UriData(int paramInt, String paramString1, String paramString2)
  {
    c = paramInt;
    a = paramString1;
    b = paramString2;
  }
  
  public int a()
  {
    return c;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    i.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.wobs.UriData
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */