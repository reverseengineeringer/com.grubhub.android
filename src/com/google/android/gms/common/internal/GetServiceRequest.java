package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Collection;

public class GetServiceRequest
  implements SafeParcelable
{
  public static final Parcelable.Creator<GetServiceRequest> CREATOR = new m();
  final int a;
  final int b;
  int c;
  String d;
  IBinder e;
  Scope[] f;
  Bundle g;
  Account h;
  
  public GetServiceRequest(int paramInt)
  {
    a = 2;
    c = com.google.android.gms.common.e.a;
    b = paramInt;
  }
  
  GetServiceRequest(int paramInt1, int paramInt2, int paramInt3, String paramString, IBinder paramIBinder, Scope[] paramArrayOfScope, Bundle paramBundle, Account paramAccount)
  {
    a = paramInt1;
    b = paramInt2;
    c = paramInt3;
    d = paramString;
    if (paramInt1 < 2) {}
    for (h = a(paramIBinder);; h = paramAccount)
    {
      f = paramArrayOfScope;
      g = paramBundle;
      return;
      e = paramIBinder;
    }
  }
  
  private Account a(IBinder paramIBinder)
  {
    Account localAccount = null;
    if (paramIBinder != null) {
      localAccount = e.a(b.a(paramIBinder));
    }
    return localAccount;
  }
  
  public GetServiceRequest a(Account paramAccount)
  {
    h = paramAccount;
    return this;
  }
  
  public GetServiceRequest a(Bundle paramBundle)
  {
    g = paramBundle;
    return this;
  }
  
  public GetServiceRequest a(a parama)
  {
    if (parama != null) {
      e = parama.asBinder();
    }
    return this;
  }
  
  public GetServiceRequest a(String paramString)
  {
    d = paramString;
    return this;
  }
  
  public GetServiceRequest a(Collection<Scope> paramCollection)
  {
    f = ((Scope[])paramCollection.toArray(new Scope[paramCollection.size()]));
    return this;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    m.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.GetServiceRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */