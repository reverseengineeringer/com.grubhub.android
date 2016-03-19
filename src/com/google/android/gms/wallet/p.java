package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;
import com.google.android.gms.identity.intents.model.UserAddress;

public class p
  implements Parcelable.Creator<FullWallet>
{
  static void a(FullWallet paramFullWallet, Parcel paramParcel, int paramInt)
  {
    int i = c.a(paramParcel);
    c.a(paramParcel, 1, paramFullWallet.a());
    c.a(paramParcel, 2, a, false);
    c.a(paramParcel, 3, b, false);
    c.a(paramParcel, 4, c, paramInt, false);
    c.a(paramParcel, 5, d, false);
    c.a(paramParcel, 6, e, paramInt, false);
    c.a(paramParcel, 7, f, paramInt, false);
    c.a(paramParcel, 8, g, false);
    c.a(paramParcel, 9, h, paramInt, false);
    c.a(paramParcel, 10, paramFullWallet.i, paramInt, false);
    c.a(paramParcel, 11, j, paramInt, false);
    c.a(paramParcel, 12, k, paramInt, false);
    c.a(paramParcel, i);
  }
  
  public FullWallet a(Parcel paramParcel)
  {
    int j = a.b(paramParcel);
    int i = 0;
    String str3 = null;
    String str2 = null;
    ProxyCard localProxyCard = null;
    String str1 = null;
    Address localAddress2 = null;
    Address localAddress1 = null;
    String[] arrayOfString = null;
    UserAddress localUserAddress2 = null;
    UserAddress localUserAddress1 = null;
    InstrumentInfo[] arrayOfInstrumentInfo = null;
    PaymentMethodToken localPaymentMethodToken = null;
    while (paramParcel.dataPosition() < j)
    {
      int k = a.a(paramParcel);
      switch (a.a(k))
      {
      default: 
        a.b(paramParcel, k);
        break;
      case 1: 
        i = a.e(paramParcel, k);
        break;
      case 2: 
        str3 = a.j(paramParcel, k);
        break;
      case 3: 
        str2 = a.j(paramParcel, k);
        break;
      case 4: 
        localProxyCard = (ProxyCard)a.a(paramParcel, k, ProxyCard.CREATOR);
        break;
      case 5: 
        str1 = a.j(paramParcel, k);
        break;
      case 6: 
        localAddress2 = (Address)a.a(paramParcel, k, Address.CREATOR);
        break;
      case 7: 
        localAddress1 = (Address)a.a(paramParcel, k, Address.CREATOR);
        break;
      case 8: 
        arrayOfString = a.p(paramParcel, k);
        break;
      case 9: 
        localUserAddress2 = (UserAddress)a.a(paramParcel, k, UserAddress.CREATOR);
        break;
      case 10: 
        localUserAddress1 = (UserAddress)a.a(paramParcel, k, UserAddress.CREATOR);
        break;
      case 11: 
        arrayOfInstrumentInfo = (InstrumentInfo[])a.b(paramParcel, k, InstrumentInfo.CREATOR);
        break;
      case 12: 
        localPaymentMethodToken = (PaymentMethodToken)a.a(paramParcel, k, PaymentMethodToken.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new b("Overread allowed size end=" + j, paramParcel);
    }
    return new FullWallet(i, str3, str2, localProxyCard, str1, localAddress2, localAddress1, arrayOfString, localUserAddress2, localUserAddress1, arrayOfInstrumentInfo, localPaymentMethodToken);
  }
  
  public FullWallet[] a(int paramInt)
  {
    return new FullWallet[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */