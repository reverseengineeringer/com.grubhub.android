package com.google.android.gms.common.api;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.signin.internal.AuthAccountResult;
import com.google.android.gms.signin.internal.b;
import java.lang.ref.WeakReference;

class ac
  extends b
{
  private final WeakReference<ab> a;
  
  ac(ab paramab)
  {
    a = new WeakReference(paramab);
  }
  
  public void a(final ConnectionResult paramConnectionResult, final AuthAccountResult paramAuthAccountResult)
  {
    paramAuthAccountResult = (ab)a.get();
    if (paramAuthAccountResult == null) {
      return;
    }
    bc.post(new Runnable()
    {
      public void run()
      {
        ab.c(paramAuthAccountResult, paramConnectionResult);
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */