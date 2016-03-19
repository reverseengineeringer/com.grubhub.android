package com.taplytics;

import com.android.volley.Response.ErrorListener;
import com.android.volley.VolleyError;

class hx
  implements Response.ErrorListener
{
  hx(hn paramhn, String paramString, ik paramik) {}
  
  public void onErrorResponse(VolleyError paramVolleyError)
  {
    ck.a(a, "Flushing App User", paramVolleyError);
    b.a(paramVolleyError);
  }
}

/* Location:
 * Qualified Name:     com.taplytics.hx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */