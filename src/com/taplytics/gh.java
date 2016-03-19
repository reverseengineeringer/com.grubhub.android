package com.taplytics;

import com.taplytics.sdk.TaplyticsExperimentsLoadedListener;
import com.taplytics.sdk.a;
import org.json.JSONArray;
import org.json.JSONObject;

class gh
  implements ij
{
  gh(fy paramfy, c paramc) {}
  
  public void a(eo parameo)
  {
    boolean bool = true;
    if (ck.c()) {
      ck.a("Got TLProperties!!");
    }
    for (;;)
    {
      try
      {
        fy.b(b, true);
        if (fy.a(b) == null) {
          break label520;
        }
        Boolean localBoolean = Boolean.valueOf(bool);
        if (localBoolean.booleanValue()) {
          parameo.a(fy.a(b).n());
        }
        fy.b(b, parameo);
        if (fy.a(b, fy.a(b))) {
          return;
        }
        fx.a().a(fy.a(b));
        b.a(false, null);
        fy.c(b).a().a(null);
        fy.b(b);
        fy.e(b);
        if (fy.f(b) != null)
        {
          fy.f(b).loaded();
          fy.a(b, null);
        }
        if (fy.g(b))
        {
          if (!aa) {
            im.a().a(null);
          }
          if ((fy.a(b).m() != null) && (fy.a(b, fy.a(b).m())) && (!fy.h(b))) {
            im.a().d();
          }
        }
        if ((fy.i(b) != null) && (iz.a(fy.i(b), "com.google.android.c2dm.permission.RECEIVE")))
        {
          if (ck.c()) {
            ck.a("Getting Push token");
          }
          fy.k(b).a(fy.j(b));
        }
        if (fy.l(b) != null) {
          fy.l(b).a();
        }
        if ((fy.a(b).n() != null) && ((fy.a(b).o() == null) || (!fy.a(b).o().toString().equals(fy.a(b).n().toString()))))
        {
          ft.a().a(new gj(this));
          ft.a().a(fy.a(b).n());
          if ((fy.a(b).q() != null) && (fy.a(b).q().optBoolean("clearEventQueue", false))) {
            b.n().f();
          }
          if (!localBoolean.booleanValue()) {
            fy.c(b).d();
          }
          if ((fy.m(b) == null) || (!b.g())) {
            break label519;
          }
          fy.m(b).a();
          return;
        }
      }
      catch (Exception parameo)
      {
        ck.b("error processing tlproperties response", parameo);
        return;
      }
      if (a != null)
      {
        a.a();
        continue;
        label519:
        return;
        label520:
        bool = false;
      }
    }
  }
  
  public void a(Exception paramException)
  {
    ck.b("Getting Properties from server", paramException);
    fy.e(b);
    if (a != null) {
      a.b();
    }
    if (fy.l(b) != null) {
      fy.l(b).b();
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.gh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */