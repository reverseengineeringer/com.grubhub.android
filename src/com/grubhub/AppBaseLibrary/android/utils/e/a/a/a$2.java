package com.grubhub.AppBaseLibrary.android.utils.e.a.a;

import com.grubhub.AppBaseLibrary.android.b.b;
import com.grubhub.AppBaseLibrary.android.b.c;
import java.util.HashMap;

class a$2
  extends HashMap<String, String>
{
  a$2(a parama, b paramb)
  {
    put("HttpStatusCode", a.a(b, String.valueOf(a.a())));
    paramb = b;
    if (a.e() != null) {}
    for (parama = a.e().a();; parama = null)
    {
      put("ErrorProperty", a.a(paramb, parama));
      paramb = b;
      parama = (a)localObject;
      if (a.e() != null) {
        parama = a.e().b();
      }
      put("ErrorMessageKey", a.a(paramb, parama));
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.utils.e.a.a.a.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */