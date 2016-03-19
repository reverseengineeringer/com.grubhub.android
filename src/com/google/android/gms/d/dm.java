package com.google.android.gms.d;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.os.RemoteException;
import com.google.android.gms.c.d;
import com.google.android.gms.c.e;
import com.google.android.gms.c.g;
import com.google.android.gms.c.h;
import com.google.android.gms.wallet.fragment.WalletFragmentOptions;

public abstract class dm
  extends Binder
  implements dl
{
  public static dl a(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.wallet.internal.IWalletDynamiteCreator");
    if ((localIInterface != null) && ((localIInterface instanceof dl))) {
      return (dl)localIInterface;
    }
    return new dn(paramIBinder);
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
    throws RemoteException
  {
    Object localObject2 = null;
    switch (paramInt1)
    {
    default: 
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902: 
      paramParcel2.writeString("com.google.android.gms.wallet.internal.IWalletDynamiteCreator");
      return true;
    }
    paramParcel1.enforceInterface("com.google.android.gms.wallet.internal.IWalletDynamiteCreator");
    g localg = h.a(paramParcel1.readStrongBinder());
    d locald = e.a(paramParcel1.readStrongBinder());
    if (paramParcel1.readInt() != 0) {}
    for (Object localObject1 = (WalletFragmentOptions)WalletFragmentOptions.CREATOR.createFromParcel(paramParcel1);; localObject1 = null)
    {
      localObject1 = a(localg, locald, (WalletFragmentOptions)localObject1, dg.a(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      paramParcel1 = (Parcel)localObject2;
      if (localObject1 != null) {
        paramParcel1 = ((dc)localObject1).asBinder();
      }
      paramParcel2.writeStrongBinder(paramParcel1);
      return true;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.dm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */