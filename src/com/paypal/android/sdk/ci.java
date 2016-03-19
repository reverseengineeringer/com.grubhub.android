package com.paypal.android.sdk;

import android.content.Context;
import com.google.android.gms.a.a.a;
import com.google.android.gms.a.a.b;

final class ci
  implements Runnable
{
  ci(Context paramContext, bd parambd) {}
  
  public final void run()
  {
    try
    {
      b localb = a.b(a);
      b.W = localb.a();
      return;
    }
    catch (Throwable localThrowable)
    {
      ch.a(ch.f(), localThrowable.getLocalizedMessage(), localThrowable);
    }
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.ci
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */