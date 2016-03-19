package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.identity.intents.model.UserAddress;

public final class MaskedWallet
  implements SafeParcelable
{
  public static final Parcelable.Creator<MaskedWallet> CREATOR = new v();
  String a;
  String b;
  String[] c;
  String d;
  Address e;
  Address f;
  LoyaltyWalletObject[] g;
  OfferWalletObject[] h;
  UserAddress i;
  UserAddress j;
  InstrumentInfo[] k;
  private final int l;
  
  private MaskedWallet()
  {
    l = 2;
  }
  
  MaskedWallet(int paramInt, String paramString1, String paramString2, String[] paramArrayOfString, String paramString3, Address paramAddress1, Address paramAddress2, LoyaltyWalletObject[] paramArrayOfLoyaltyWalletObject, OfferWalletObject[] paramArrayOfOfferWalletObject, UserAddress paramUserAddress1, UserAddress paramUserAddress2, InstrumentInfo[] paramArrayOfInstrumentInfo)
  {
    l = paramInt;
    a = paramString1;
    b = paramString2;
    c = paramArrayOfString;
    d = paramString3;
    e = paramAddress1;
    f = paramAddress2;
    g = paramArrayOfLoyaltyWalletObject;
    h = paramArrayOfOfferWalletObject;
    i = paramUserAddress1;
    j = paramUserAddress2;
    k = paramArrayOfInstrumentInfo;
  }
  
  public int a()
  {
    return l;
  }
  
  public String b()
  {
    return a;
  }
  
  public String c()
  {
    return b;
  }
  
  public String[] d()
  {
    return c;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String e()
  {
    return d;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    v.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.MaskedWallet
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */