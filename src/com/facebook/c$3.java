package com.facebook;

import org.json.JSONObject;

class c$3
  implements r
{
  c$3(c paramc, d paramd) {}
  
  public void a(aa paramaa)
  {
    paramaa = paramaa.b();
    if (paramaa == null) {
      return;
    }
    a.a = paramaa.optString("access_token");
    a.b = paramaa.optInt("expires_at");
  }
}

/* Location:
 * Qualified Name:     com.facebook.c.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */