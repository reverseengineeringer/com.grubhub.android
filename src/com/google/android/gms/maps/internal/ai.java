package com.google.android.gms.maps.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public abstract class ai
  extends Binder
  implements ah
{
  public static ah a(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.internal.ICancelableCallback");
    if ((localIInterface != null) && ((localIInterface instanceof ah))) {
      return (ah)localIInterface;
    }
    return new aj(paramIBinder);
  }
  
  public IBinder asBinder()
  {
    return this;
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
    throws RemoteException
  {
    switch (paramInt1)
    {
    default: 
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902: 
      paramParcel2.writeString("com.google.android.gms.maps.internal.ICancelableCallback");
      return true;
    case 1: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.ICancelableCallback");
      a();
      paramParcel2.writeNoException();
      return true;
    }
    paramParcel1.enforceInterface("com.google.android.gms.maps.internal.ICancelableCallback");
    b();
    paramParcel2.writeNoException();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.internal.ai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */