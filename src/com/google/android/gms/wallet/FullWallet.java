package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.identity.intents.model.UserAddress;

public final class FullWallet
  implements SafeParcelable
{
  public static final Parcelable.Creator<FullWallet> CREATOR = new p();
  String a;
  String b;
  ProxyCard c;
  String d;
  Address e;
  Address f;
  String[] g;
  UserAddress h;
  UserAddress i;
  InstrumentInfo[] j;
  PaymentMethodToken k;
  private final int l;
  
  private FullWallet()
  {
    l = 1;
  }
  
  FullWallet(int paramInt, String paramString1, String paramString2, ProxyCard paramProxyCard, String paramString3, Address paramAddress1, Address paramAddress2, String[] paramArrayOfString, UserAddress paramUserAddress1, UserAddress paramUserAddress2, InstrumentInfo[] paramArrayOfInstrumentInfo, PaymentMethodToken paramPaymentMethodToken)
  {
    l = paramInt;
    a = paramString1;
    b = paramString2;
    c = paramProxyCard;
    d = paramString3;
    e = paramAddress1;
    f = paramAddress2;
    g = paramArrayOfString;
    h = paramUserAddress1;
    i = paramUserAddress2;
    j = paramArrayOfInstrumentInfo;
    k = paramPaymentMethodToken;
  }
  
  public int a()
  {
    return l;
  }
  
  public String b()
  {
    return a;
  }
  
  public PaymentMethodToken c()
  {
    return k;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    p.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.FullWallet
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */