package com.taplytics;

import com.android.volley.Response.ErrorListener;
import com.android.volley.VolleyError;

class hr
  implements Response.ErrorListener
{
  hr(hn paramhn, String paramString, ik paramik) {}
  
  public void onErrorResponse(VolleyError paramVolleyError)
  {
    ck.a(a, "Posting GCM Token", paramVolleyError);
    b.a(paramVolleyError);
  }
}

/* Location:
 * Qualified Name:     com.taplytics.hr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */