package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class FullWalletRequest
  implements SafeParcelable
{
  public static final Parcelable.Creator<FullWalletRequest> CREATOR = new q();
  String a;
  String b;
  Cart c;
  private final int d;
  
  FullWalletRequest()
  {
    d = 1;
  }
  
  FullWalletRequest(int paramInt, String paramString1, String paramString2, Cart paramCart)
  {
    d = paramInt;
    a = paramString1;
    b = paramString2;
    c = paramCart;
  }
  
  public static b a()
  {
    FullWalletRequest localFullWalletRequest = new FullWalletRequest();
    localFullWalletRequest.getClass();
    return new b(localFullWalletRequest, null);
  }
  
  public int b()
  {
    return d;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    q.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.FullWalletRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */