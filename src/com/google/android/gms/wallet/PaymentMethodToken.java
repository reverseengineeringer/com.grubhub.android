package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class PaymentMethodToken
  implements SafeParcelable
{
  public static final Parcelable.Creator<PaymentMethodToken> CREATOR = new z();
  int a;
  String b;
  private final int c;
  
  private PaymentMethodToken()
  {
    c = 1;
  }
  
  PaymentMethodToken(int paramInt1, int paramInt2, String paramString)
  {
    c = paramInt1;
    a = paramInt2;
    b = paramString;
  }
  
  public int a()
  {
    return c;
  }
  
  public String b()
  {
    return b;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    z.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.PaymentMethodToken
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */