package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

public class h
  implements Parcelable.Creator<TimeInterval>
{
  static void a(TimeInterval paramTimeInterval, Parcel paramParcel, int paramInt)
  {
    paramInt = c.a(paramParcel);
    c.a(paramParcel, 1, paramTimeInterval.a());
    c.a(paramParcel, 2, a);
    c.a(paramParcel, 3, b);
    c.a(paramParcel, paramInt);
  }
  
  public TimeInterval a(Parcel paramParcel)
  {
    long l1 = 0L;
    int j = a.b(paramParcel);
    int i = 0;
    long l2 = 0L;
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
        l2 = a.g(paramParcel, k);
        break;
      case 3: 
        l1 = a.g(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new b("Overread allowed size end=" + j, paramParcel);
    }
    return new TimeInterval(i, l2, l1);
  }
  
  public TimeInterval[] a(int paramInt)
  {
    return new TimeInterval[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.wobs.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */