package com.grubhub.AppBaseLibrary.android.dataServices.net.b;

import com.android.volley.Response.ErrorListener;
import com.android.volley.VolleyError;
import com.grubhub.AppBaseLibrary.android.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;

class f$2
  implements Response.ErrorListener
{
  f$2(d paramd) {}
  
  public void onErrorResponse(VolleyError paramVolleyError)
  {
    if (a != null) {
      a.a(new b(paramVolleyError));
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.f.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */