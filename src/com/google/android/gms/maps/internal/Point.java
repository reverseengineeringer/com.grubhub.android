package com.google.android.gms.maps.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class Point
  implements SafeParcelable
{
  public static final cx CREATOR = new cx();
  private final int a;
  private final android.graphics.Point b;
  
  public Point(int paramInt, android.graphics.Point paramPoint)
  {
    a = paramInt;
    b = paramPoint;
  }
  
  int a()
  {
    return a;
  }
  
  public android.graphics.Point b()
  {
    return b;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof Point)) {
      return false;
    }
    paramObject = (Point)paramObject;
    return b.equals(b);
  }
  
  public int hashCode()
  {
    return b.hashCode();
  }
  
  public String toString()
  {
    return b.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    cx.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.internal.Point
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */