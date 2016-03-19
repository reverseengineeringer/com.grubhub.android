package com.google.android.gms.wallet.fragment;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

public class g
  implements Parcelable.Creator<WalletFragmentOptions>
{
  static void a(WalletFragmentOptions paramWalletFragmentOptions, Parcel paramParcel, int paramInt)
  {
    int i = c.a(paramParcel);
    c.a(paramParcel, 1, a);
    c.a(paramParcel, 2, paramWalletFragmentOptions.a());
    c.a(paramParcel, 3, paramWalletFragmentOptions.b());
    c.a(paramParcel, 4, paramWalletFragmentOptions.c(), paramInt, false);
    c.a(paramParcel, 5, paramWalletFragmentOptions.d());
    c.a(paramParcel, i);
  }
  
  public WalletFragmentOptions a(Parcel paramParcel)
  {
    int i = 1;
    int j = 0;
    int n = a.b(paramParcel);
    WalletFragmentStyle localWalletFragmentStyle = null;
    int k = 1;
    int m = 0;
    while (paramParcel.dataPosition() < n)
    {
      int i1 = a.a(paramParcel);
      switch (a.a(i1))
      {
      default: 
        a.b(paramParcel, i1);
        break;
      case 1: 
        m = a.e(paramParcel, i1);
        break;
      case 2: 
        k = a.e(paramParcel, i1);
        break;
      case 3: 
        j = a.e(paramParcel, i1);
        break;
      case 4: 
        localWalletFragmentStyle = (WalletFragmentStyle)a.a(paramParcel, i1, WalletFragmentStyle.CREATOR);
        break;
      case 5: 
        i = a.e(paramParcel, i1);
      }
    }
    if (paramParcel.dataPosition() != n) {
      throw new b("Overread allowed size end=" + n, paramParcel);
    }
    return new WalletFragmentOptions(m, k, j, localWalletFragmentStyle, i);
  }
  
  public WalletFragmentOptions[] a(int paramInt)
  {
    return new WalletFragmentOptions[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.fragment.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */