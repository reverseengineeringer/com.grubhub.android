package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;

public final class r
  extends ag
{
  private n a;
  private final int b;
  
  public r(n paramn, int paramInt)
  {
    a = paramn;
    b = paramInt;
  }
  
  private void a()
  {
    a = null;
  }
  
  public void a(int paramInt, Bundle paramBundle)
  {
    aq.a(a, "onAccountValidationComplete can be called only once per call to validateAccount");
    a.a(paramInt, paramBundle, b);
    a();
  }
  
  public void a(int paramInt, IBinder paramIBinder, Bundle paramBundle)
  {
    aq.a(a, "onPostInitComplete can be called only once per call to getRemoteService");
    a.a(paramInt, paramIBinder, paramBundle, b);
    a();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */