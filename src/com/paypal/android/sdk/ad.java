package com.paypal.android.sdk;

import android.os.Message;
import java.util.Map;

public class ad
  implements ea
{
  private static final String a = ad.class.getSimpleName();
  private final ck b;
  private ae c;
  private ac d;
  private final ai e;
  private dv f;
  
  public ad(ck paramck, ac paramac, ef paramef)
  {
    b = paramck;
    d = paramac;
    e = new ai();
    c = new ae(this);
  }
  
  public final String a(dx paramdx)
  {
    new StringBuilder("environment:").append(d).append(" environment.getEndpoints():").append(d.c());
    if ((d != null) && (d.c() != null))
    {
      paramdx = (String)d.c().get(paramdx.a());
      new StringBuilder("returning:").append(paramdx);
      return paramdx;
    }
    return null;
  }
  
  public final void a()
  {
    f.a();
  }
  
  public final void a(ak paramak)
  {
    e.a(paramak);
  }
  
  public final void a(dv paramdv)
  {
    if (f != null) {
      throw new IllegalStateException();
    }
    f = paramdv;
  }
  
  public final void a(dz paramdz)
  {
    paramdz.m();
    bf.a().f();
    if (!paramdz.a())
    {
      Message localMessage = new Message();
      what = 2;
      obj = paramdz;
      c.sendMessage(localMessage);
    }
  }
  
  public final void b()
  {
    e.a();
  }
  
  public final void b(dz paramdz)
  {
    f.a(paramdz);
  }
  
  public final String c()
  {
    return d.a();
  }
  
  public final ck d()
  {
    return b;
  }
  
  public final String e()
  {
    return d.b();
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */