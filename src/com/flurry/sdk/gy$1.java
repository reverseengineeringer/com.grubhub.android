package com.flurry.sdk;

import android.content.Context;
import java.lang.ref.WeakReference;

class gy$1
  implements hw<ja>
{
  gy$1(gy paramgy) {}
  
  public void a(ja paramja)
  {
    if ((gy.a(a) != null) && (b != gy.a(a).get())) {
      return;
    }
    switch (gy.7.a[c.ordinal()])
    {
    default: 
      return;
    case 1: 
      a.a(b, (Context)a.get());
      return;
    case 2: 
      a.a((Context)a.get());
      return;
    case 3: 
      a.b((Context)a.get());
      return;
    }
    hx.a().b("com.flurry.android.sdk.FlurrySessionEvent", gy.b(a));
    a.a(d);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.gy.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */