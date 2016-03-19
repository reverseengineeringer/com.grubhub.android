package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.ao;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.common.internal.aq;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class LatLngBounds
  implements SafeParcelable
{
  public static final l CREATOR = new l();
  public final LatLng a;
  public final LatLng b;
  private final int c;
  
  LatLngBounds(int paramInt, LatLng paramLatLng1, LatLng paramLatLng2)
  {
    aq.a(paramLatLng1, "null southwest");
    aq.a(paramLatLng2, "null northeast");
    if (a >= a) {}
    for (boolean bool = true;; bool = false)
    {
      aq.a(bool, "southern latitude exceeds northern latitude (%s > %s)", new Object[] { Double.valueOf(a), Double.valueOf(a) });
      c = paramInt;
      a = paramLatLng1;
      b = paramLatLng2;
      return;
    }
  }
  
  public LatLngBounds(LatLng paramLatLng1, LatLng paramLatLng2)
  {
    this(1, paramLatLng1, paramLatLng2);
  }
  
  private static double c(double paramDouble1, double paramDouble2)
  {
    return (paramDouble1 - paramDouble2 + 360.0D) % 360.0D;
  }
  
  private static double d(double paramDouble1, double paramDouble2)
  {
    return (paramDouble2 - paramDouble1 + 360.0D) % 360.0D;
  }
  
  int a()
  {
    return c;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof LatLngBounds)) {
        return false;
      }
      paramObject = (LatLngBounds)paramObject;
    } while ((a.equals(a)) && (b.equals(b)));
    return false;
  }
  
  public int hashCode()
  {
    return ao.a(new Object[] { a, b });
  }
  
  public String toString()
  {
    return ao.a(this).a("southwest", a).a("northeast", b).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    l.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.LatLngBounds
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */