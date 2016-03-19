package com.paypal.android.sdk.payments;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.paypal.android.sdk.fj;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

final class aQ
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new ay();
  private List a;
  private String b;
  private String c;
  private String d;
  
  aQ()
  {
    a = new ArrayList();
  }
  
  public aQ(Parcel paramParcel)
  {
    this();
    if (paramParcel != null)
    {
      b = paramParcel.readString();
      c = paramParcel.readString();
      d = paramParcel.readString();
      a = new ArrayList();
      paramParcel.readList(a, String.class.getClassLoader());
    }
  }
  
  aQ(fj paramfj)
  {
    a = a(paramfj.u());
    b = paramfj.v();
    c = paramfj.w();
    d = paramfj.x();
  }
  
  private static List a(Map paramMap)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (((String)paramMap.get(str)).toUpperCase().equals("Y")) {
        localArrayList.add(str.toLowerCase(Locale.US));
      }
    }
    return localArrayList;
  }
  
  public final List a()
  {
    return a;
  }
  
  public final String b()
  {
    return b;
  }
  
  public final String c()
  {
    return c;
  }
  
  public final String d()
  {
    return d;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(b);
    paramParcel.writeString(c);
    paramParcel.writeString(d);
    paramParcel.writeList(a);
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.payments.aQ
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */