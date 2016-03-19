package com.facebook.share.internal;

import com.facebook.ad;
import com.facebook.internal.ab;
import com.facebook.x;
import com.facebook.y;

class a$10$1
  implements y
{
  a$10$1(a.10 param10, j paramj, e parame) {}
  
  public void a(x paramx)
  {
    if ((a.a() != null) || (b.a() != null))
    {
      ab.a(ad.REQUESTS, a.f(), "Unable to refresh like state for id: '%s'", new Object[] { a.j(c.a) });
      return;
    }
    a.a(c.a, a.b(), b.e, b.f, b.g, b.h, a.c());
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.a.10.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */