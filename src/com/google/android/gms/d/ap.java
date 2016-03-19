package com.google.android.gms.d;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.z;

class ap
  extends al
{
  private final z<Status> a;
  
  public ap(z<Status> paramz)
  {
    a = paramz;
  }
  
  public void a(int paramInt)
    throws RemoteException
  {
    a.a(new Status(paramInt));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.ap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */