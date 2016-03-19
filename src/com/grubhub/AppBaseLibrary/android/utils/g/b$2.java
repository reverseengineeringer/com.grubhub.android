package com.grubhub.AppBaseLibrary.android.utils.g;

import com.grubhub.AppBaseLibrary.android.dataServices.net.d;
import com.grubhub.AppBaseLibrary.android.utils.e.a;

class b$2
  implements d
{
  b$2(b paramb) {}
  
  public void a(com.grubhub.AppBaseLibrary.android.b.b paramb)
  {
    a.b("Unable to tokenize the credit card.", paramb.getMessage());
    if (a.c != null) {
      a.c.a(paramb);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.utils.g.b.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */