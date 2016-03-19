package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wallet.wobs.CommonWalletObject;
import com.google.android.gms.wallet.wobs.a;

public final class OfferWalletObject
  implements SafeParcelable
{
  public static final Parcelable.Creator<OfferWalletObject> CREATOR = new y();
  String a;
  String b;
  CommonWalletObject c;
  private final int d;
  
  OfferWalletObject()
  {
    d = 3;
  }
  
  OfferWalletObject(int paramInt, String paramString1, String paramString2, CommonWalletObject paramCommonWalletObject)
  {
    d = paramInt;
    b = paramString2;
    if (paramInt < 3)
    {
      c = CommonWalletObject.a().a(paramString1).a();
      return;
    }
    c = paramCommonWalletObject;
  }
  
  public int a()
  {
    return d;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    y.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.OfferWalletObject
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */