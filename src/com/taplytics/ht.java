package com.taplytics;

import com.android.volley.Response.ErrorListener;
import com.android.volley.VolleyError;

class ht
  implements Response.ErrorListener
{
  ht(hn paramhn, String paramString, ik paramik) {}
  
  public void onErrorResponse(VolleyError paramVolleyError)
  {
    ck.a(a, "Posting View Info", paramVolleyError);
    if (b != null) {
      b.a(paramVolleyError);
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.ht
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */