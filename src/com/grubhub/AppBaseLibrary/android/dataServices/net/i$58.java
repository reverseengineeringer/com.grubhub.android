package com.grubhub.AppBaseLibrary.android.dataServices.net;

import com.grubhub.AppBaseLibrary.android.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2ErrorMapper;

class i$58
  implements d
{
  i$58(i parami, String paramString, f paramf, d paramd, boolean paramBoolean1, boolean paramBoolean2) {}
  
  public void a(b paramb)
  {
    if (!a.b(paramb)) {
      V2ErrorMapper.mapToAppError(a, paramb);
    }
    if (f.a(paramb)) {
      if ((b == f.USER) || (b == f.USER_WHEN_LOGGED_IN)) {
        new c(f, paramb).a(f.b, c, b, d, e);
      }
    }
    while (c == null)
    {
      return;
      new c(f, paramb).a(f.b, c, f.ANONYMOUS_USER);
      return;
    }
    c.a(paramb);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.i.58
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */