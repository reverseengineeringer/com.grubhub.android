package com.taplytics;

import com.android.volley.Response.ErrorListener;
import com.android.volley.VolleyError;

class hv
  implements Response.ErrorListener
{
  hv(hn paramhn, String paramString, ik paramik) {}
  
  public void onErrorResponse(VolleyError paramVolleyError)
  {
    ck.a(a, "Posting Client Events", paramVolleyError);
    b.a(paramVolleyError);
  }
}

/* Location:
 * Qualified Name:     com.taplytics.hv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */