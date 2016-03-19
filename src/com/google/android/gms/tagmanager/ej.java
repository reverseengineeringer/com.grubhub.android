package com.google.android.gms.tagmanager;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.d.bc;
import com.google.android.gms.d.m;

class ej
  implements ay<m>
{
  private ej(eg parameg) {}
  
  public void a() {}
  
  public void a(m paramm)
  {
    synchronized (a)
    {
      if (b == null)
      {
        if (da).b == null)
        {
          ba.a("Current resource is null; network resource is also null");
          eg.a(a, 3600000L);
          return;
        }
        b = da).b;
      }
      eg.a(a, paramm, eg.b(a).a(), false);
      ba.e("setting refresh time to current time: " + eg.e(a));
      if (!eg.f(a)) {
        eg.a(a, paramm);
      }
      return;
    }
  }
  
  public void a(az arg1)
  {
    synchronized (a)
    {
      if (!a.a())
      {
        if (eg.a(a) != null) {
          a.a(eg.a(a));
        }
      }
      else
      {
        eg.a(a, 3600000L);
        return;
      }
      a.a(a.c(Status.d));
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.ej
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */