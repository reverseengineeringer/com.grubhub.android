package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

public class ab
  implements Parcelable.Creator<ProxyCard>
{
  static void a(ProxyCard paramProxyCard, Parcel paramParcel, int paramInt)
  {
    paramInt = c.a(paramParcel);
    c.a(paramParcel, 1, paramProxyCard.a());
    c.a(paramParcel, 2, a, false);
    c.a(paramParcel, 3, b, false);
    c.a(paramParcel, 4, c);
    c.a(paramParcel, 5, d);
    c.a(paramParcel, paramInt);
  }
  
  public ProxyCard a(Parcel paramParcel)
  {
    String str1 = null;
    int i = 0;
    int m = a.b(paramParcel);
    int j = 0;
    String str2 = null;
    int k = 0;
    while (paramParcel.dataPosition() < m)
    {
      int n = a.a(paramParcel);
      switch (a.a(n))
      {
      default: 
        a.b(paramParcel, n);
        break;
      case 1: 
        k = a.e(paramParcel, n);
        break;
      case 2: 
        str2 = a.j(paramParcel, n);
        break;
      case 3: 
        str1 = a.j(paramParcel, n);
        break;
      case 4: 
        j = a.e(paramParcel, n);
        break;
      case 5: 
        i = a.e(paramParcel, n);
      }
    }
    if (paramParcel.dataPosition() != m) {
      throw new b("Overread allowed size end=" + m, paramParcel);
    }
    return new ProxyCard(k, str2, str1, j, i);
  }
  
  public ProxyCard[] a(int paramInt)
  {
    return new ProxyCard[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */