package com.google.android.gms.maps.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.maps.model.internal.g;
import com.google.android.gms.maps.model.internal.h;

class am
  implements ak
{
  private IBinder a;
  
  am(IBinder paramIBinder)
  {
    a = paramIBinder;
  }
  
  public a a()
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.ICreator");
      a.transact(4, localParcel1, localParcel2, 0);
      localParcel2.readException();
      a locala = b.a(localParcel2.readStrongBinder());
      return locala;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  /* Error */
  public m a(com.google.android.gms.c.g paramg, com.google.android.gms.maps.GoogleMapOptions paramGoogleMapOptions)
    throws RemoteException
  {
    // Byte code:
    //   0: invokestatic 25	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore_3
    //   4: invokestatic 25	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   7: astore 4
    //   9: aload_3
    //   10: ldc 27
    //   12: invokevirtual 31	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   15: aload_1
    //   16: ifnull +70 -> 86
    //   19: aload_1
    //   20: invokeinterface 59 1 0
    //   25: astore_1
    //   26: aload_3
    //   27: aload_1
    //   28: invokevirtual 62	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   31: aload_2
    //   32: ifnull +59 -> 91
    //   35: aload_3
    //   36: iconst_1
    //   37: invokevirtual 66	android/os/Parcel:writeInt	(I)V
    //   40: aload_2
    //   41: aload_3
    //   42: iconst_0
    //   43: invokevirtual 72	com/google/android/gms/maps/GoogleMapOptions:writeToParcel	(Landroid/os/Parcel;I)V
    //   46: aload_0
    //   47: getfield 15	com/google/android/gms/maps/internal/am:a	Landroid/os/IBinder;
    //   50: iconst_3
    //   51: aload_3
    //   52: aload 4
    //   54: iconst_0
    //   55: invokeinterface 37 5 0
    //   60: pop
    //   61: aload 4
    //   63: invokevirtual 40	android/os/Parcel:readException	()V
    //   66: aload 4
    //   68: invokevirtual 44	android/os/Parcel:readStrongBinder	()Landroid/os/IBinder;
    //   71: invokestatic 77	com/google/android/gms/maps/internal/n:a	(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/m;
    //   74: astore_1
    //   75: aload 4
    //   77: invokevirtual 52	android/os/Parcel:recycle	()V
    //   80: aload_3
    //   81: invokevirtual 52	android/os/Parcel:recycle	()V
    //   84: aload_1
    //   85: areturn
    //   86: aconst_null
    //   87: astore_1
    //   88: goto -62 -> 26
    //   91: aload_3
    //   92: iconst_0
    //   93: invokevirtual 66	android/os/Parcel:writeInt	(I)V
    //   96: goto -50 -> 46
    //   99: astore_1
    //   100: aload 4
    //   102: invokevirtual 52	android/os/Parcel:recycle	()V
    //   105: aload_3
    //   106: invokevirtual 52	android/os/Parcel:recycle	()V
    //   109: aload_1
    //   110: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	111	0	this	am
    //   0	111	1	paramg	com.google.android.gms.c.g
    //   0	111	2	paramGoogleMapOptions	com.google.android.gms.maps.GoogleMapOptions
    //   3	103	3	localParcel1	Parcel
    //   7	94	4	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   9	15	99	finally
    //   19	26	99	finally
    //   26	31	99	finally
    //   35	46	99	finally
    //   46	75	99	finally
    //   91	96	99	finally
  }
  
  /* Error */
  public y a(com.google.android.gms.c.g paramg, com.google.android.gms.maps.StreetViewPanoramaOptions paramStreetViewPanoramaOptions)
    throws RemoteException
  {
    // Byte code:
    //   0: invokestatic 25	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore_3
    //   4: invokestatic 25	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   7: astore 4
    //   9: aload_3
    //   10: ldc 27
    //   12: invokevirtual 31	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   15: aload_1
    //   16: ifnull +71 -> 87
    //   19: aload_1
    //   20: invokeinterface 59 1 0
    //   25: astore_1
    //   26: aload_3
    //   27: aload_1
    //   28: invokevirtual 62	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   31: aload_2
    //   32: ifnull +60 -> 92
    //   35: aload_3
    //   36: iconst_1
    //   37: invokevirtual 66	android/os/Parcel:writeInt	(I)V
    //   40: aload_2
    //   41: aload_3
    //   42: iconst_0
    //   43: invokevirtual 81	com/google/android/gms/maps/StreetViewPanoramaOptions:writeToParcel	(Landroid/os/Parcel;I)V
    //   46: aload_0
    //   47: getfield 15	com/google/android/gms/maps/internal/am:a	Landroid/os/IBinder;
    //   50: bipush 7
    //   52: aload_3
    //   53: aload 4
    //   55: iconst_0
    //   56: invokeinterface 37 5 0
    //   61: pop
    //   62: aload 4
    //   64: invokevirtual 40	android/os/Parcel:readException	()V
    //   67: aload 4
    //   69: invokevirtual 44	android/os/Parcel:readStrongBinder	()Landroid/os/IBinder;
    //   72: invokestatic 86	com/google/android/gms/maps/internal/z:a	(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/y;
    //   75: astore_1
    //   76: aload 4
    //   78: invokevirtual 52	android/os/Parcel:recycle	()V
    //   81: aload_3
    //   82: invokevirtual 52	android/os/Parcel:recycle	()V
    //   85: aload_1
    //   86: areturn
    //   87: aconst_null
    //   88: astore_1
    //   89: goto -63 -> 26
    //   92: aload_3
    //   93: iconst_0
    //   94: invokevirtual 66	android/os/Parcel:writeInt	(I)V
    //   97: goto -51 -> 46
    //   100: astore_1
    //   101: aload 4
    //   103: invokevirtual 52	android/os/Parcel:recycle	()V
    //   106: aload_3
    //   107: invokevirtual 52	android/os/Parcel:recycle	()V
    //   110: aload_1
    //   111: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	112	0	this	am
    //   0	112	1	paramg	com.google.android.gms.c.g
    //   0	112	2	paramStreetViewPanoramaOptions	com.google.android.gms.maps.StreetViewPanoramaOptions
    //   3	104	3	localParcel1	Parcel
    //   7	95	4	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   9	15	100	finally
    //   19	26	100	finally
    //   26	31	100	finally
    //   35	46	100	finally
    //   46	76	100	finally
    //   92	97	100	finally
  }
  
  /* Error */
  public void a(com.google.android.gms.c.g paramg)
    throws RemoteException
  {
    // Byte code:
    //   0: invokestatic 25	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore_2
    //   4: invokestatic 25	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   7: astore_3
    //   8: aload_2
    //   9: ldc 27
    //   11: invokevirtual 31	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   14: aload_1
    //   15: ifnull +42 -> 57
    //   18: aload_1
    //   19: invokeinterface 59 1 0
    //   24: astore_1
    //   25: aload_2
    //   26: aload_1
    //   27: invokevirtual 62	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   30: aload_0
    //   31: getfield 15	com/google/android/gms/maps/internal/am:a	Landroid/os/IBinder;
    //   34: iconst_1
    //   35: aload_2
    //   36: aload_3
    //   37: iconst_0
    //   38: invokeinterface 37 5 0
    //   43: pop
    //   44: aload_3
    //   45: invokevirtual 40	android/os/Parcel:readException	()V
    //   48: aload_3
    //   49: invokevirtual 52	android/os/Parcel:recycle	()V
    //   52: aload_2
    //   53: invokevirtual 52	android/os/Parcel:recycle	()V
    //   56: return
    //   57: aconst_null
    //   58: astore_1
    //   59: goto -34 -> 25
    //   62: astore_1
    //   63: aload_3
    //   64: invokevirtual 52	android/os/Parcel:recycle	()V
    //   67: aload_2
    //   68: invokevirtual 52	android/os/Parcel:recycle	()V
    //   71: aload_1
    //   72: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	73	0	this	am
    //   0	73	1	paramg	com.google.android.gms.c.g
    //   3	65	2	localParcel1	Parcel
    //   7	57	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	14	62	finally
    //   18	25	62	finally
    //   25	48	62	finally
  }
  
  /* Error */
  public void a(com.google.android.gms.c.g paramg, int paramInt)
    throws RemoteException
  {
    // Byte code:
    //   0: invokestatic 25	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore_3
    //   4: invokestatic 25	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   7: astore 4
    //   9: aload_3
    //   10: ldc 27
    //   12: invokevirtual 31	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   15: aload_1
    //   16: ifnull +51 -> 67
    //   19: aload_1
    //   20: invokeinterface 59 1 0
    //   25: astore_1
    //   26: aload_3
    //   27: aload_1
    //   28: invokevirtual 62	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   31: aload_3
    //   32: iload_2
    //   33: invokevirtual 66	android/os/Parcel:writeInt	(I)V
    //   36: aload_0
    //   37: getfield 15	com/google/android/gms/maps/internal/am:a	Landroid/os/IBinder;
    //   40: bipush 6
    //   42: aload_3
    //   43: aload 4
    //   45: iconst_0
    //   46: invokeinterface 37 5 0
    //   51: pop
    //   52: aload 4
    //   54: invokevirtual 40	android/os/Parcel:readException	()V
    //   57: aload 4
    //   59: invokevirtual 52	android/os/Parcel:recycle	()V
    //   62: aload_3
    //   63: invokevirtual 52	android/os/Parcel:recycle	()V
    //   66: return
    //   67: aconst_null
    //   68: astore_1
    //   69: goto -43 -> 26
    //   72: astore_1
    //   73: aload 4
    //   75: invokevirtual 52	android/os/Parcel:recycle	()V
    //   78: aload_3
    //   79: invokevirtual 52	android/os/Parcel:recycle	()V
    //   82: aload_1
    //   83: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	84	0	this	am
    //   0	84	1	paramg	com.google.android.gms.c.g
    //   0	84	2	paramInt	int
    //   3	76	3	localParcel1	Parcel
    //   7	67	4	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   9	15	72	finally
    //   19	26	72	finally
    //   26	57	72	finally
  }
  
  public IBinder asBinder()
  {
    return a;
  }
  
  /* Error */
  public j b(com.google.android.gms.c.g paramg)
    throws RemoteException
  {
    // Byte code:
    //   0: invokestatic 25	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore_2
    //   4: invokestatic 25	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   7: astore_3
    //   8: aload_2
    //   9: ldc 27
    //   11: invokevirtual 31	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   14: aload_1
    //   15: ifnull +51 -> 66
    //   18: aload_1
    //   19: invokeinterface 59 1 0
    //   24: astore_1
    //   25: aload_2
    //   26: aload_1
    //   27: invokevirtual 62	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   30: aload_0
    //   31: getfield 15	com/google/android/gms/maps/internal/am:a	Landroid/os/IBinder;
    //   34: iconst_2
    //   35: aload_2
    //   36: aload_3
    //   37: iconst_0
    //   38: invokeinterface 37 5 0
    //   43: pop
    //   44: aload_3
    //   45: invokevirtual 40	android/os/Parcel:readException	()V
    //   48: aload_3
    //   49: invokevirtual 44	android/os/Parcel:readStrongBinder	()Landroid/os/IBinder;
    //   52: invokestatic 95	com/google/android/gms/maps/internal/k:a	(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/j;
    //   55: astore_1
    //   56: aload_3
    //   57: invokevirtual 52	android/os/Parcel:recycle	()V
    //   60: aload_2
    //   61: invokevirtual 52	android/os/Parcel:recycle	()V
    //   64: aload_1
    //   65: areturn
    //   66: aconst_null
    //   67: astore_1
    //   68: goto -43 -> 25
    //   71: astore_1
    //   72: aload_3
    //   73: invokevirtual 52	android/os/Parcel:recycle	()V
    //   76: aload_2
    //   77: invokevirtual 52	android/os/Parcel:recycle	()V
    //   80: aload_1
    //   81: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	82	0	this	am
    //   0	82	1	paramg	com.google.android.gms.c.g
    //   3	74	2	localParcel1	Parcel
    //   7	66	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	14	71	finally
    //   18	25	71	finally
    //   25	56	71	finally
  }
  
  public g b()
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.ICreator");
      a.transact(5, localParcel1, localParcel2, 0);
      localParcel2.readException();
      g localg = h.a(localParcel2.readStrongBinder());
      return localg;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  /* Error */
  public v c(com.google.android.gms.c.g paramg)
    throws RemoteException
  {
    // Byte code:
    //   0: invokestatic 25	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore_2
    //   4: invokestatic 25	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   7: astore_3
    //   8: aload_2
    //   9: ldc 27
    //   11: invokevirtual 31	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   14: aload_1
    //   15: ifnull +52 -> 67
    //   18: aload_1
    //   19: invokeinterface 59 1 0
    //   24: astore_1
    //   25: aload_2
    //   26: aload_1
    //   27: invokevirtual 62	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   30: aload_0
    //   31: getfield 15	com/google/android/gms/maps/internal/am:a	Landroid/os/IBinder;
    //   34: bipush 8
    //   36: aload_2
    //   37: aload_3
    //   38: iconst_0
    //   39: invokeinterface 37 5 0
    //   44: pop
    //   45: aload_3
    //   46: invokevirtual 40	android/os/Parcel:readException	()V
    //   49: aload_3
    //   50: invokevirtual 44	android/os/Parcel:readStrongBinder	()Landroid/os/IBinder;
    //   53: invokestatic 108	com/google/android/gms/maps/internal/w:a	(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/v;
    //   56: astore_1
    //   57: aload_3
    //   58: invokevirtual 52	android/os/Parcel:recycle	()V
    //   61: aload_2
    //   62: invokevirtual 52	android/os/Parcel:recycle	()V
    //   65: aload_1
    //   66: areturn
    //   67: aconst_null
    //   68: astore_1
    //   69: goto -44 -> 25
    //   72: astore_1
    //   73: aload_3
    //   74: invokevirtual 52	android/os/Parcel:recycle	()V
    //   77: aload_2
    //   78: invokevirtual 52	android/os/Parcel:recycle	()V
    //   81: aload_1
    //   82: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	83	0	this	am
    //   0	83	1	paramg	com.google.android.gms.c.g
    //   3	75	2	localParcel1	Parcel
    //   7	67	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	14	72	finally
    //   18	25	72	finally
    //   25	57	72	finally
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.internal.am
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */