package com.flurry.sdk;

import android.content.Context;
import java.lang.ref.WeakReference;

class hm$1
  implements hw<ja>
{
  hm$1(hm paramhm) {}
  
  public void a(ja paramja)
  {
    if ((hm.a(a) != null) && (b != hm.a(a).get())) {
      return;
    }
    switch (hm.3.a[c.ordinal()])
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
    hx.a().b("com.flurry.android.sdk.FlurrySessionEvent", hm.b(a));
    a.a();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.hm.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */