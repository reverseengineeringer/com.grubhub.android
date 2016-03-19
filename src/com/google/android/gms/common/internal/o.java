package com.google.android.gms.common.internal;

import android.app.PendingIntent;
import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;

abstract class o
  extends n<T>.q<Boolean>
{
  public final int a;
  public final Bundle b;
  
  protected o(n paramn, int paramInt, Bundle paramBundle)
  {
    super(paramn, Boolean.valueOf(true));
    a = paramInt;
    b = paramBundle;
  }
  
  protected abstract void a(ConnectionResult paramConnectionResult);
  
  protected void a(Boolean paramBoolean)
  {
    Object localObject = null;
    if (paramBoolean == null) {
      n.a(c, 1, null);
    }
    do
    {
      return;
      switch (a)
      {
      default: 
        n.a(c, 1, null);
        paramBoolean = (Boolean)localObject;
        if (b != null) {
          paramBoolean = (PendingIntent)b.getParcelable("pendingIntent");
        }
        a(new ConnectionResult(a, paramBoolean));
        return;
      }
    } while (a());
    n.a(c, 1, null);
    a(new ConnectionResult(8, null));
    return;
    n.a(c, 1, null);
    throw new IllegalStateException("A fatal developer error has occurred. Check the logs for further information.");
  }
  
  protected abstract boolean a();
  
  protected void b() {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */