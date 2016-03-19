package android.support.v4.app;

import android.app.Notification;
import android.os.IInterface;
import android.os.RemoteException;

public abstract interface ak
  extends IInterface
{
  public abstract void a(String paramString)
    throws RemoteException;
  
  public abstract void a(String paramString1, int paramInt, String paramString2)
    throws RemoteException;
  
  public abstract void a(String paramString1, int paramInt, String paramString2, Notification paramNotification)
    throws RemoteException;
}

/* Location:
 * Qualified Name:     android.support.v4.app.ak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */