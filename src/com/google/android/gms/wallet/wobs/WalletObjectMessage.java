package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class WalletObjectMessage
  implements SafeParcelable
{
  public static final Parcelable.Creator<WalletObjectMessage> CREATOR = new j();
  String a;
  String b;
  TimeInterval c;
  UriData d;
  UriData e;
  private final int f;
  
  WalletObjectMessage()
  {
    f = 1;
  }
  
  WalletObjectMessage(int paramInt, String paramString1, String paramString2, TimeInterval paramTimeInterval, UriData paramUriData1, UriData paramUriData2)
  {
    f = paramInt;
    a = paramString1;
    b = paramString2;
    c = paramTimeInterval;
    d = paramUriData1;
    e = paramUriData2;
  }
  
  public int a()
  {
    return f;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    j.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.wobs.WalletObjectMessage
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */