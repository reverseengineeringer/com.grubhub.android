package com.facebook.share.internal;

import com.facebook.ad;
import com.facebook.internal.ab;
import com.facebook.x;
import com.facebook.y;

class a$10
  implements n
{
  a$10(a parama) {}
  
  public void a()
  {
    switch (a.3.a[a.i(a).ordinal()])
    {
    }
    for (final Object localObject = new g(a, a.h(a), a.i(a));; localObject = new i(a, a.h(a)))
    {
      final e locale = new e(a, a.h(a), a.i(a));
      x localx = new x();
      ((j)localObject).a(localx);
      locale.a(localx);
      localx.a(new y()
      {
        public void a(x paramAnonymousx)
        {
          if ((localObject.a() != null) || (locale.a() != null))
          {
            ab.a(ad.REQUESTS, a.f(), "Unable to refresh like state for id: '%s'", new Object[] { a.j(a) });
            return;
          }
          a.a(a, localObject.b(), localee, localef, localeg, localeh, localObject.c());
        }
      });
      localx.h();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.a.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */