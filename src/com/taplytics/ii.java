package com.taplytics;

import com.android.volley.Response.ErrorListener;
import com.android.volley.VolleyError;

class ii
  implements Response.ErrorListener
{
  ii(ig paramig, ik paramik) {}
  
  public void onErrorResponse(VolleyError paramVolleyError)
  {
    if (a != null) {
      a.a(paramVolleyError);
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.ii
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */