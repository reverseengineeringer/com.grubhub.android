package com.google.android.gms.d;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

class ay
  implements aw
{
  private IBinder a;
  
  ay(IBinder paramIBinder)
  {
    a = paramIBinder;
  }
  
  public void a(at paramat)
    throws RemoteException
  {
    IBinder localIBinder = null;
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("com.google.android.gms.common.internal.service.ICommonService");
      if (paramat != null) {
        localIBinder = paramat.asBinder();
      }
      localParcel.writeStrongBinder(localIBinder);
      a.transact(1, localParcel, null, 1);
      return;
    }
    finally
    {
      localParcel.recycle();
    }
  }
  
  public IBinder asBinder()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.ay
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */