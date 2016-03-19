package com.grubhub.AppBaseLibrary.android.dataServices.net.b;

import com.android.volley.Response.Listener;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;

class f$4
  implements e<T>
{
  f$4(f paramf, Response.Listener paramListener) {}
  
  public void onResponse(T paramT)
  {
    if (a != null) {
      a.onResponse(paramT);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.f.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */