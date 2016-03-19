package com.taplytics;

import java.util.ArrayList;
import org.json.JSONObject;

class ci
  implements ik
{
  ci(ch paramch, ArrayList paramArrayList) {}
  
  public void a(Exception paramException)
  {
    ck.b("Flushing Event Queue", paramException);
    cc.a(b.b, b.a);
  }
  
  public void a(JSONObject paramJSONObject)
  {
    if (ck.c()) {
      ck.a("Flushed Event Queue!");
    }
    if (b.a != null) {
      b.a.a();
    }
    cc.a(b.b).b(a.size());
    if (cc.a(b.b).b() > 20) {
      cc.a(b.b, b.a);
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.ci
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */