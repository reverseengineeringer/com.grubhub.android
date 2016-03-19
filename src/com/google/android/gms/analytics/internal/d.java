package com.google.android.gms.analytics.internal;

import android.os.IInterface;
import android.os.RemoteException;
import java.util.List;
import java.util.Map;

public abstract interface d
  extends IInterface
{
  public abstract void a()
    throws RemoteException;
  
  public abstract void a(Map paramMap, long paramLong, String paramString, List<Command> paramList)
    throws RemoteException;
  
  public abstract String b()
    throws RemoteException;
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */