package com.google.android.gms.common.api;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.ao;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class Status
  implements v, SafeParcelable
{
  public static final Parcelable.Creator<Status> CREATOR = new aq();
  public static final Status a = new Status(0);
  public static final Status b = new Status(14);
  public static final Status c = new Status(8);
  public static final Status d = new Status(15);
  public static final Status e = new Status(16);
  private final int f;
  private final int g;
  private final String h;
  private final PendingIntent i;
  
  public Status(int paramInt)
  {
    this(paramInt, null);
  }
  
  Status(int paramInt1, int paramInt2, String paramString, PendingIntent paramPendingIntent)
  {
    f = paramInt1;
    g = paramInt2;
    h = paramString;
    i = paramPendingIntent;
  }
  
  public Status(int paramInt, String paramString)
  {
    this(1, paramInt, paramString, null);
  }
  
  public Status(int paramInt, String paramString, PendingIntent paramPendingIntent)
  {
    this(1, paramInt, paramString, paramPendingIntent);
  }
  
  private String g()
  {
    if (h != null) {
      return h;
    }
    return o.a(g);
  }
  
  public Status a()
  {
    return this;
  }
  
  PendingIntent b()
  {
    return i;
  }
  
  public String c()
  {
    return h;
  }
  
  int d()
  {
    return f;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean e()
  {
    return g <= 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof Status)) {}
    do
    {
      return false;
      paramObject = (Status)paramObject;
    } while ((f != f) || (g != g) || (!ao.a(h, h)) || (!ao.a(i, i)));
    return true;
  }
  
  public int f()
  {
    return g;
  }
  
  public int hashCode()
  {
    return ao.a(new Object[] { Integer.valueOf(f), Integer.valueOf(g), h, i });
  }
  
  public String toString()
  {
    return ao.a(this).a("statusCode", g()).a("resolution", i).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    aq.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.Status
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */