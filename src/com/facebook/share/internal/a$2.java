package com.facebook.share.internal;

import com.facebook.ad;
import com.facebook.internal.ab;
import com.facebook.internal.al;
import com.facebook.x;
import com.facebook.y;

class a$2
  implements y
{
  a$2(a parama, f paramf, h paramh, n paramn) {}
  
  public void a(x paramx)
  {
    a.c(d, a.e);
    if (al.a(a.h(d)))
    {
      a.c(d, b.e);
      a.d(d, b.f);
    }
    a locala;
    if (al.a(a.h(d)))
    {
      ab.a(ad.DEVELOPER_ERRORS, a.f(), "Unable to verify the FB id for '%s'. Verify that it is a valid FB object or page", new Object[] { a.j(d) });
      locala = d;
      if (b.a() == null) {
        break label143;
      }
    }
    label143:
    for (paramx = b.a();; paramx = a.a())
    {
      a.a(locala, "get_verified_id", paramx);
      if (c != null) {
        c.a();
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.a.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */