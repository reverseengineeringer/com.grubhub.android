package com.grubhub.AppBaseLibrary.android.dataServices.net.b;

import com.android.volley.Response.ErrorListener;
import com.android.volley.VolleyError;
import com.grubhub.AppBaseLibrary.android.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;

class f$5
  implements d
{
  f$5(f paramf, Response.ErrorListener paramErrorListener) {}
  
  public void a(b paramb)
  {
    if (a != null) {
      a.onErrorResponse(new VolleyError(a));
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.f.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */