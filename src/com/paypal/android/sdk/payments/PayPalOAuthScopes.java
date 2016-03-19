package com.paypal.android.sdk.payments;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.paypal.android.sdk.o;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class PayPalOAuthScopes
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new br();
  public static final String a = o.a.a();
  public static final String b = o.b.a();
  public static final String c = o.c.a();
  public static final String d = o.e.a();
  public static final String e = o.f.a();
  public static final String f = o.g.a();
  public static final String g = o.d.a();
  private List h = new ArrayList();
  
  public PayPalOAuthScopes() {}
  
  private PayPalOAuthScopes(Parcel paramParcel)
  {
    int j = paramParcel.readInt();
    int i = 0;
    while (i < j)
    {
      h.add(paramParcel.readString());
      i += 1;
    }
  }
  
  public PayPalOAuthScopes(Set paramSet)
  {
    this();
    paramSet = paramSet.iterator();
    while (paramSet.hasNext())
    {
      String str = (String)paramSet.next();
      h.add(str);
    }
  }
  
  final List a()
  {
    return h;
  }
  
  final String b()
  {
    return TextUtils.join(" ", h);
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final String toString()
  {
    return String.format(PayPalOAuthScopes.class.getSimpleName() + ": {%s}", new Object[] { h });
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(h.size());
    paramInt = 0;
    while (paramInt < h.size())
    {
      paramParcel.writeString((String)h.get(paramInt));
      paramInt += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.payments.PayPalOAuthScopes
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */