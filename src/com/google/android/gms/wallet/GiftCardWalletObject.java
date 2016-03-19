package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wallet.wobs.CommonWalletObject;
import com.google.android.gms.wallet.wobs.a;

public final class GiftCardWalletObject
  implements SafeParcelable
{
  public static final Parcelable.Creator<GiftCardWalletObject> CREATOR = new r();
  final int a;
  CommonWalletObject b = CommonWalletObject.a().a();
  String c;
  String d;
  String e;
  long f;
  String g;
  long h;
  String i;
  
  GiftCardWalletObject()
  {
    a = 1;
  }
  
  GiftCardWalletObject(int paramInt, CommonWalletObject paramCommonWalletObject, String paramString1, String paramString2, String paramString3, long paramLong1, String paramString4, long paramLong2, String paramString5)
  {
    a = paramInt;
    b = paramCommonWalletObject;
    c = paramString1;
    d = paramString2;
    f = paramLong1;
    g = paramString4;
    h = paramLong2;
    i = paramString5;
    e = paramString3;
  }
  
  public int a()
  {
    return a;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    r.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.GiftCardWalletObject
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */