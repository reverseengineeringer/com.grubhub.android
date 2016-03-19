package com.google.android.gms.iid;

import android.os.Binder;
import android.os.Handler;
import android.os.Message;
import android.os.RemoteException;

final class c
  extends f
{
  Handler a;
  
  c(MessengerCompat paramMessengerCompat, Handler paramHandler)
  {
    a = paramHandler;
  }
  
  public void a(Message paramMessage)
    throws RemoteException
  {
    arg2 = Binder.getCallingUid();
    a.dispatchMessage(paramMessage);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.iid.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */