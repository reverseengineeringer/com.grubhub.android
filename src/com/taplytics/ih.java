package com.taplytics;

import com.android.volley.Response.Listener;
import org.json.JSONArray;

class ih
  implements Response.Listener<JSONArray>
{
  ih(ig paramig, ik paramik) {}
  
  public void a(JSONArray paramJSONArray)
  {
    paramJSONArray = paramJSONArray.optJSONObject(0);
    if (a != null) {
      a.a(paramJSONArray);
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.ih
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */