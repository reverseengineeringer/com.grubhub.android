package com.taplytics;

import org.json.JSONArray;

class cf
  implements gi
{
  cf(ce paramce) {}
  
  public void a(JSONArray paramJSONArray, Exception paramException)
  {
    if (paramJSONArray != null)
    {
      int i = 0;
      while (i < paramJSONArray.length())
      {
        paramException = paramJSONArray.optJSONObject(i);
        if (paramException != null) {
          cc.a(a.a).a(paramException);
        }
        i += 1;
      }
      cs.a().a("TLEvents.json", null);
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.cf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */