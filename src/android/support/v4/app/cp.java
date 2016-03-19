package android.support.v4.app;

import android.app.Notification;
import android.os.RemoteException;

class cp
  implements ct
{
  final String a;
  final int b;
  final String c;
  final Notification d;
  
  public cp(String paramString1, int paramInt, String paramString2, Notification paramNotification)
  {
    a = paramString1;
    b = paramInt;
    c = paramString2;
    d = paramNotification;
  }
  
  public void a(ak paramak)
    throws RemoteException
  {
    paramak.a(a, b, c, d);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("NotifyTask[");
    localStringBuilder.append("packageName:").append(a);
    localStringBuilder.append(", id:").append(b);
    localStringBuilder.append(", tag:").append(c);
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.cp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */