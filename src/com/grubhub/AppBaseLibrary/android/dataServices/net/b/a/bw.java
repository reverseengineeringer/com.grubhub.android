package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import com.android.volley.toolbox.RequestFuture;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.d;
import com.grubhub.AppBaseLibrary.android.dataServices.net.k;
import com.grubhub.AppBaseLibrary.android.utils.f;
import java.util.Map;

public class bw
  extends a<bw, Void, Boolean>
{
  protected String l;
  protected RequestFuture<Void> m;
  
  private bw(bx parambx)
  {
    super(parambx);
    l = bx.a(parambx);
    m = RequestFuture.newFuture();
  }
  
  protected void b()
  {
    if (g == null) {
      g = new com.grubhub.AppBaseLibrary.android.dataServices.net.a.a(d, e);
    }
    g.a("ratings");
    g.a("orders");
    g.a(l);
    g.a("reviews");
    g.a("quit");
  }
  
  protected void c()
  {
    d locald = new d(g.toString(), null, new k(), Object.class, m, m);
    locald.setTag(c);
    h = locald;
  }
  
  protected boolean d()
  {
    return (super.d()) && (f.b(l));
  }
  
  protected Map<String, String> e()
  {
    Map localMap = super.e();
    localMap.put("orderId", l);
    return localMap;
  }
  
  public Boolean h()
  {
    if (!d())
    {
      f();
      return Boolean.valueOf(false);
    }
    b();
    c();
    if ((k != null) && ((k instanceof by))) {
      return ((by)k).a(h, m, a);
    }
    return Boolean.valueOf(false);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.bw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */