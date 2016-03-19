package com.taplytics;

import com.taplytics.sdk.TaplyticsResetUserListener;
import org.json.JSONObject;

class cq
  implements ik
{
  cq(cl paramcl, TaplyticsResetUserListener paramTaplyticsResetUserListener, fy paramfy) {}
  
  public void a(Exception paramException)
  {
    ck.b("Resetting App User", paramException);
    if (a != null) {
      a.finishedResettingUser();
    }
  }
  
  public void a(JSONObject paramJSONObject)
  {
    if (ck.c()) {
      ck.a("Reset App User!");
    }
    cs.a().c();
    cs.a().b();
    paramJSONObject = new c();
    paramJSONObject.a(new cr(this));
    b.x();
    b.e(true);
    b.a(null, paramJSONObject);
  }
}

/* Location:
 * Qualified Name:     com.taplytics.cq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */