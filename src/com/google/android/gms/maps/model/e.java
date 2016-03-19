package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.common.internal.aq;
import com.google.android.gms.maps.model.internal.s;

public final class e
{
  private final s a;
  
  public e(s params)
  {
    a = ((s)aq.a(params));
  }
  
  public void a()
  {
    try
    {
      a.g();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new f(localRemoteException);
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof e)) {
      return false;
    }
    try
    {
      boolean bool = a.a(a);
      return bool;
    }
    catch (RemoteException paramObject)
    {
      throw new f((RemoteException)paramObject);
    }
  }
  
  public int hashCode()
  {
    try
    {
      int i = a.k();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      throw new f(localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */