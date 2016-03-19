package com.grubhub.AppBaseLibrary.android.dataServices.net;

import com.grubhub.AppBaseLibrary.android.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.a.a;
import com.grubhub.AppBaseLibrary.android.dataServices.a.a.c;

class i$64
  implements d
{
  i$64(i parami, a parama, String paramString, d paramd) {}
  
  public void a(b paramb)
  {
    f localf = f.ANONYMOUS_USER;
    if ((a instanceof c)) {
      localf = f.USER;
    }
    d.a(b, localf, paramb.a(), paramb.getLocalizedMessage());
    if (c != null) {
      c.a(paramb);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.i.64
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */