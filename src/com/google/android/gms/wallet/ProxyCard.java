package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class ProxyCard
  implements SafeParcelable
{
  public static final Parcelable.Creator<ProxyCard> CREATOR = new ab();
  String a;
  String b;
  int c;
  int d;
  private final int e;
  
  ProxyCard(int paramInt1, String paramString1, String paramString2, int paramInt2, int paramInt3)
  {
    e = paramInt1;
    a = paramString1;
    b = paramString2;
    c = paramInt2;
    d = paramInt3;
  }
  
  public int a()
  {
    return e;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ab.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.ProxyCard
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */