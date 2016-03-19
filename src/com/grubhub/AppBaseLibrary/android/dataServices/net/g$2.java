package com.grubhub.AppBaseLibrary.android.dataServices.net;

import com.grubhub.AppBaseLibrary.android.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1ErrorMapper;

class g$2
  implements d
{
  g$2(g paramg, d paramd) {}
  
  public void a(b paramb)
  {
    if (!a.b(paramb)) {
      V1ErrorMapper.mapToAppError(paramb);
    }
    if (b.a(paramb)) {
      new c(b, paramb).a(b.b, a, f.USER);
    }
    while (a == null) {
      return;
    }
    a.a(paramb);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.g.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */