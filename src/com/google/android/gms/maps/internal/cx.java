package com.google.android.gms.maps.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

public class cx
  implements Parcelable.Creator<Point>
{
  static void a(Point paramPoint, Parcel paramParcel, int paramInt)
  {
    int i = c.a(paramParcel);
    c.a(paramParcel, 1, paramPoint.a());
    c.a(paramParcel, 2, paramPoint.b(), paramInt, false);
    c.a(paramParcel, i);
  }
  
  public Point a(Parcel paramParcel)
  {
    int j = a.b(paramParcel);
    int i = 0;
    android.graphics.Point localPoint = null;
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
        localPoint = (android.graphics.Point)a.a(paramParcel, k, android.graphics.Point.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new b("Overread allowed size end=" + j, paramParcel);
    }
    return new Point(i, localPoint);
  }
  
  public Point[] a(int paramInt)
  {
    return new Point[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.internal.cx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */