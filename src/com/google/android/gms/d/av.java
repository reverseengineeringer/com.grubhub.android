package com.google.android.gms.d;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

class av
  implements at
{
  private IBinder a;
  
  av(IBinder paramIBinder)
  {
    a = paramIBinder;
  }
  
  public void a(int paramInt)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.service.ICommonCallbacks");
      localParcel1.writeInt(paramInt);
      a.transact(1, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  public IBinder asBinder()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.av
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */