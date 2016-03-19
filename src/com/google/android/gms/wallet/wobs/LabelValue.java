package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class LabelValue
  implements SafeParcelable
{
  public static final Parcelable.Creator<LabelValue> CREATOR = new c();
  String a;
  String b;
  private final int c;
  
  LabelValue()
  {
    c = 1;
  }
  
  LabelValue(int paramInt, String paramString1, String paramString2)
  {
    c = paramInt;
    a = paramString1;
    b = paramString2;
  }
  
  public int a()
  {
    return c;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    c.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.wobs.LabelValue
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */