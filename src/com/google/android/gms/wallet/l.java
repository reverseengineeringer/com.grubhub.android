package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

public class l
  implements Parcelable.Creator<Address>
{
  static void a(Address paramAddress, Parcel paramParcel, int paramInt)
  {
    paramInt = c.a(paramParcel);
    c.a(paramParcel, 1, paramAddress.a());
    c.a(paramParcel, 2, a, false);
    c.a(paramParcel, 3, b, false);
    c.a(paramParcel, 4, c, false);
    c.a(paramParcel, 5, d, false);
    c.a(paramParcel, 6, e, false);
    c.a(paramParcel, 7, f, false);
    c.a(paramParcel, 8, g, false);
    c.a(paramParcel, 9, h, false);
    c.a(paramParcel, 10, i, false);
    c.a(paramParcel, 11, j);
    c.a(paramParcel, 12, k, false);
    c.a(paramParcel, paramInt);
  }
  
  public Address a(Parcel paramParcel)
  {
    int j = a.b(paramParcel);
    int i = 0;
    String str10 = null;
    String str9 = null;
    String str8 = null;
    String str7 = null;
    String str6 = null;
    String str5 = null;
    String str4 = null;
    String str3 = null;
    String str2 = null;
    boolean bool = false;
    String str1 = null;
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
        str10 = a.j(paramParcel, k);
        break;
      case 3: 
        str9 = a.j(paramParcel, k);
        break;
      case 4: 
        str8 = a.j(paramParcel, k);
        break;
      case 5: 
        str7 = a.j(paramParcel, k);
        break;
      case 6: 
        str6 = a.j(paramParcel, k);
        break;
      case 7: 
        str5 = a.j(paramParcel, k);
        break;
      case 8: 
        str4 = a.j(paramParcel, k);
        break;
      case 9: 
        str3 = a.j(paramParcel, k);
        break;
      case 10: 
        str2 = a.j(paramParcel, k);
        break;
      case 11: 
        bool = a.c(paramParcel, k);
        break;
      case 12: 
        str1 = a.j(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new b("Overread allowed size end=" + j, paramParcel);
    }
    return new Address(i, str10, str9, str8, str7, str6, str5, str4, str3, str2, bool, str1);
  }
  
  public Address[] a(int paramInt)
  {
    return new Address[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */