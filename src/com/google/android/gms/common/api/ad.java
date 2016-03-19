package com.google.android.gms.common.api;

import com.google.android.gms.common.internal.ResolveAccountResponse;
import com.google.android.gms.common.internal.am;
import java.lang.ref.WeakReference;

class ad
  extends am
{
  private final WeakReference<ab> a;
  
  ad(ab paramab)
  {
    a = new WeakReference(paramab);
  }
  
  public void a(final ResolveAccountResponse paramResolveAccountResponse)
  {
    final ab localab = (ab)a.get();
    if (localab == null) {
      return;
    }
    bc.post(new Runnable()
    {
      public void run()
      {
        ab.a(localab, paramResolveAccountResponse);
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */