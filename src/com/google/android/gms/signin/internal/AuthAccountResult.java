package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class AuthAccountResult
  implements SafeParcelable
{
  public static final Parcelable.Creator<AuthAccountResult> CREATOR = new a();
  final int a;
  
  public AuthAccountResult()
  {
    this(1);
  }
  
  AuthAccountResult(int paramInt)
  {
    a = paramInt;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    a.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.signin.internal.AuthAccountResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */