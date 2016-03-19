package com.taplytics;

import org.json.JSONObject;

class gf
  implements gr
{
  gf(fy paramfy, String paramString) {}
  
  public void a(eo parameo, Exception paramException)
  {
    if (paramException != null) {
      ck.b("Reading TLProperties from disk", paramException);
    }
    do
    {
      do
      {
        return;
      } while (parameo == null);
      paramException = parameo.c();
      if (paramException == null) {
        break;
      }
    } while (fy.a(b, fy.a(b)));
    fx.a().a(fy.a(b));
    if (paramException.has("token")) {}
    for (;;)
    {
      try
      {
        paramException = paramException.getString("token");
        if ((paramException != null) && (!a.equals(paramException))) {
          continue;
        }
        fy.b(b, parameo);
        b.a(false, null);
        fy.b(b);
        fy.a(b, fy.a(b).m());
      }
      catch (Exception parameo)
      {
        ck.b("Getting token from disk TLProperties", parameo);
        continue;
      }
      fy.c(b).d();
      return;
      cs.a().b();
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.gf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */