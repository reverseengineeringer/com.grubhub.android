package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.ao;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class StreetViewPanoramaLink
  implements SafeParcelable
{
  public static final r CREATOR = new r();
  public final String a;
  public final float b;
  private final int c;
  
  StreetViewPanoramaLink(int paramInt, String paramString, float paramFloat)
  {
    c = paramInt;
    a = paramString;
    float f = paramFloat;
    if (paramFloat <= 0.0D) {
      f = paramFloat % 360.0F + 360.0F;
    }
    b = (f % 360.0F);
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
      if (!(paramObject instanceof StreetViewPanoramaLink)) {
        return false;
      }
      paramObject = (StreetViewPanoramaLink)paramObject;
    } while ((a.equals(a)) && (Float.floatToIntBits(b) == Float.floatToIntBits(b)));
    return false;
  }
  
  public int hashCode()
  {
    return ao.a(new Object[] { a, Float.valueOf(b) });
  }
  
  public String toString()
  {
    return ao.a(this).a("panoId", a).a("bearing", Float.valueOf(b)).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    r.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.StreetViewPanoramaLink
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */