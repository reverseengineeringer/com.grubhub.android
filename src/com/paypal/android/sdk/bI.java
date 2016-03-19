package com.paypal.android.sdk;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.Date;

public final class bI
  extends cr
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new cs();
  private String b;
  private Date c;
  private String d;
  private ct e;
  private int f;
  private int g;
  
  public bI() {}
  
  private bI(Parcel paramParcel)
  {
    a = paramParcel.readString();
    b = paramParcel.readString();
    d = paramParcel.readString();
    c = ((Date)paramParcel.readSerializable());
    e = ((ct)paramParcel.readSerializable());
    f = paramParcel.readInt();
    g = paramParcel.readInt();
  }
  
  public bI(ck paramck, String paramString1, String paramString2, Date paramDate, String paramString3, String paramString4, int paramInt1, int paramInt2)
  {
    a = paramck.b(paramString2);
    b = paramString1;
    c = paramDate;
    a(paramString3);
    b(paramString4);
    f = paramInt1;
    g = paramInt2;
  }
  
  public bI(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, int paramInt1, int paramInt2)
  {
    a = paramString2;
    b = paramString1;
    c = fb.a(paramString3);
    a(paramString4);
    b(paramString5);
    f = paramInt1;
    g = paramInt2;
  }
  
  private void a(String paramString)
  {
    if (paramString != null)
    {
      d = paramString.substring(paramString.length() - 4);
      return;
    }
    d = null;
  }
  
  private void b(String paramString)
  {
    e = ct.a(paramString);
  }
  
  public final boolean b()
  {
    return (!ft.a(b)) && (!ft.a(d)) && (!ft.a(a)) && (c != null) && (!c.before(new Date())) && (e != null) && (e != ct.a) && (f > 0) && (f <= 12) && (g >= 0) && (g <= 9999);
  }
  
  public final Date c()
  {
    return c;
  }
  
  public final String d()
  {
    String str = d;
    if (str == null) {
      return null;
    }
    return "x-" + str.substring(str.length() - 4);
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final String e()
  {
    return b;
  }
  
  public final int f()
  {
    return f;
  }
  
  public final int g()
  {
    return g;
  }
  
  public final ct h()
  {
    return e;
  }
  
  public final String toString()
  {
    return "TokenizedCreditCard(token=" + b + ",lastFourDigits=" + d + ",payerId=" + a + ",tokenValidUntil=" + c + ",cardType=" + e + ",expiryMonth/year=" + f + "/" + g + ")";
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(a);
    paramParcel.writeString(b);
    paramParcel.writeString(d);
    paramParcel.writeSerializable(c);
    paramParcel.writeSerializable(e);
    paramParcel.writeInt(f);
    paramParcel.writeInt(g);
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.bI
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */