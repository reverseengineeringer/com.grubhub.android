package com.google.android.gms.wallet.fragment;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;
import com.google.android.gms.wallet.MaskedWallet;
import com.google.android.gms.wallet.MaskedWalletRequest;

public class f
  implements Parcelable.Creator<WalletFragmentInitParams>
{
  static void a(WalletFragmentInitParams paramWalletFragmentInitParams, Parcel paramParcel, int paramInt)
  {
    int i = c.a(paramParcel);
    c.a(paramParcel, 1, a);
    c.a(paramParcel, 2, paramWalletFragmentInitParams.a(), false);
    c.a(paramParcel, 3, paramWalletFragmentInitParams.b(), paramInt, false);
    c.a(paramParcel, 4, paramWalletFragmentInitParams.c());
    c.a(paramParcel, 5, paramWalletFragmentInitParams.d(), paramInt, false);
    c.a(paramParcel, i);
  }
  
  public WalletFragmentInitParams a(Parcel paramParcel)
  {
    MaskedWallet localMaskedWallet = null;
    int k = a.b(paramParcel);
    int j = 0;
    int i = -1;
    MaskedWalletRequest localMaskedWalletRequest = null;
    String str = null;
    while (paramParcel.dataPosition() < k)
    {
      int m = a.a(paramParcel);
      switch (a.a(m))
      {
      default: 
        a.b(paramParcel, m);
        break;
      case 1: 
        j = a.e(paramParcel, m);
        break;
      case 2: 
        str = a.j(paramParcel, m);
        break;
      case 3: 
        localMaskedWalletRequest = (MaskedWalletRequest)a.a(paramParcel, m, MaskedWalletRequest.CREATOR);
        break;
      case 4: 
        i = a.e(paramParcel, m);
        break;
      case 5: 
        localMaskedWallet = (MaskedWallet)a.a(paramParcel, m, MaskedWallet.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new b("Overread allowed size end=" + k, paramParcel);
    }
    return new WalletFragmentInitParams(j, str, localMaskedWalletRequest, i, localMaskedWallet);
  }
  
  public WalletFragmentInitParams[] a(int paramInt)
  {
    return new WalletFragmentInitParams[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.fragment.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */