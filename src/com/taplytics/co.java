package com.taplytics;

import org.json.JSONObject;

class co
  implements ik
{
  co(cl paramcl, eq parameq, JSONObject paramJSONObject) {}
  
  public void a(Exception paramException)
  {
    ck.b("Flushing App User Attributes", paramException);
    cl.a(c, b);
    cl.a(c, false);
    if (a != null) {
      a.b();
    }
  }
  
  public void a(JSONObject paramJSONObject)
  {
    if (ck.c()) {
      ck.a("Flushed App User Attributes!");
    }
    if ((paramJSONObject != null) && (paramJSONObject.length() > 0)) {
      fy.e().d().a(new cp(this, paramJSONObject));
    }
    if (a != null) {
      a.a();
    }
    cl.a(c, false);
  }
}

/* Location:
 * Qualified Name:     com.taplytics.co
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */