package com.taplytics;

import com.android.volley.Response.ErrorListener;
import com.android.volley.VolleyError;

class ic
  implements Response.ErrorListener
{
  ic(ia paramia, String paramString, ik paramik) {}
  
  public void onErrorResponse(VolleyError paramVolleyError)
  {
    ck.a(a, "Posting App Icon", paramVolleyError);
    if (b != null) {
      b.a(paramVolleyError);
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.ic
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */