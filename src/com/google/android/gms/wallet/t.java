package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

public class t
  implements Parcelable.Creator<LineItem>
{
  static void a(LineItem paramLineItem, Parcel paramParcel, int paramInt)
  {
    paramInt = c.a(paramParcel);
    c.a(paramParcel, 1, paramLineItem.b());
    c.a(paramParcel, 2, a, false);
    c.a(paramParcel, 3, b, false);
    c.a(paramParcel, 4, c, false);
    c.a(paramParcel, 5, d, false);
    c.a(paramParcel, 6, e);
    c.a(paramParcel, 7, f, false);
    c.a(paramParcel, paramInt);
  }
  
  public LineItem a(Parcel paramParcel)
  {
    int i = 0;
    String str1 = null;
    int k = a.b(paramParcel);
    String str2 = null;
    String str3 = null;
    String str4 = null;
    String str5 = null;
    int j = 0;
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
        str5 = a.j(paramParcel, m);
        break;
      case 3: 
        str4 = a.j(paramParcel, m);
        break;
      case 4: 
        str3 = a.j(paramParcel, m);
        break;
      case 5: 
        str2 = a.j(paramParcel, m);
        break;
      case 6: 
        i = a.e(paramParcel, m);
        break;
      case 7: 
        str1 = a.j(paramParcel, m);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new b("Overread allowed size end=" + k, paramParcel);
    }
    return new LineItem(j, str5, str4, str3, str2, i, str1);
  }
  
  public LineItem[] a(int paramInt)
  {
    return new LineItem[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */