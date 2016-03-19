package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

public class j
  implements Parcelable.Creator<WalletObjectMessage>
{
  static void a(WalletObjectMessage paramWalletObjectMessage, Parcel paramParcel, int paramInt)
  {
    int i = c.a(paramParcel);
    c.a(paramParcel, 1, paramWalletObjectMessage.a());
    c.a(paramParcel, 2, a, false);
    c.a(paramParcel, 3, b, false);
    c.a(paramParcel, 4, c, paramInt, false);
    c.a(paramParcel, 5, d, paramInt, false);
    c.a(paramParcel, 6, e, paramInt, false);
    c.a(paramParcel, i);
  }
  
  public WalletObjectMessage a(Parcel paramParcel)
  {
    UriData localUriData1 = null;
    int j = a.b(paramParcel);
    int i = 0;
    UriData localUriData2 = null;
    TimeInterval localTimeInterval = null;
    String str1 = null;
    String str2 = null;
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
        str2 = a.j(paramParcel, k);
        break;
      case 3: 
        str1 = a.j(paramParcel, k);
        break;
      case 4: 
        localTimeInterval = (TimeInterval)a.a(paramParcel, k, TimeInterval.CREATOR);
        break;
      case 5: 
        localUriData2 = (UriData)a.a(paramParcel, k, UriData.CREATOR);
        break;
      case 6: 
        localUriData1 = (UriData)a.a(paramParcel, k, UriData.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new b("Overread allowed size end=" + j, paramParcel);
    }
    return new WalletObjectMessage(i, str2, str1, localTimeInterval, localUriData2, localUriData1);
  }
  
  public WalletObjectMessage[] a(int paramInt)
  {
    return new WalletObjectMessage[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.wobs.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */