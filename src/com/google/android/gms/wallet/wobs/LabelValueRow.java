package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.d.az;
import java.util.ArrayList;

public final class LabelValueRow
  implements SafeParcelable
{
  public static final Parcelable.Creator<LabelValueRow> CREATOR = new d();
  String a;
  String b;
  ArrayList<LabelValue> c;
  private final int d;
  
  LabelValueRow()
  {
    d = 1;
    c = az.a();
  }
  
  LabelValueRow(int paramInt, String paramString1, String paramString2, ArrayList<LabelValue> paramArrayList)
  {
    d = paramInt;
    a = paramString1;
    b = paramString2;
    c = paramArrayList;
  }
  
  public int a()
  {
    return d;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    d.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.wobs.LabelValueRow
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */