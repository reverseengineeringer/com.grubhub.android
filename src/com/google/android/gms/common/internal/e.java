package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.Binder;
import android.os.RemoteException;
import android.util.Log;

public class e
  extends b
{
  int a;
  private Account b;
  private Context c;
  
  public static Account a(a parama)
  {
    Account localAccount = null;
    long l;
    if (parama != null) {
      l = Binder.clearCallingIdentity();
    }
    try
    {
      localAccount = parama.a();
      return localAccount;
    }
    catch (RemoteException parama)
    {
      Log.w("AccountAccessor", "Remote account accessor probably died");
      return null;
    }
    finally
    {
      Binder.restoreCallingIdentity(l);
    }
  }
  
  public Account a()
  {
    int i = Binder.getCallingUid();
    if (i == a) {
      return b;
    }
    if (com.google.android.gms.common.e.a(c, i))
    {
      a = i;
      return b;
    }
    throw new SecurityException("Caller is not GooglePlayServices");
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof e)) {
      return false;
    }
    return b.equals(b);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */