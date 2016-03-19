package com.grubhub.AppBaseLibrary.android.dataServices.a;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import com.grubhub.AppBaseLibrary.android.utils.c.h;

public class a<T>
  implements i, d, e<T>
{
  protected Context a;
  private com.grubhub.AppBaseLibrary.android.dataServices.net.a b;
  private com.grubhub.AppBaseLibrary.android.dataServices.b.b c;
  private h d;
  private com.grubhub.AppBaseLibrary.android.utils.urbanAirship.a e;
  private i f;
  private i g;
  private e<T> h;
  private d i;
  private String j;
  private boolean k;
  private boolean l;
  
  protected a(Context paramContext, i parami1, i parami2)
  {
    a = paramContext;
    f = parami1;
    g = parami2;
    j = String.valueOf(hashCode());
  }
  
  public void a()
  {
    if (f != null) {
      f.a();
    }
    k = true;
    l = false;
  }
  
  public void a(com.grubhub.AppBaseLibrary.android.b.b paramb)
  {
    if ((i != null) && (!l)) {
      i.a(paramb);
    }
    if ((g != null) && (!l)) {
      g.a();
    }
    k = false;
  }
  
  public void a(d paramd)
  {
    i = paramd;
  }
  
  public void a(e<T> parame)
  {
    h = parame;
  }
  
  protected com.grubhub.AppBaseLibrary.android.dataServices.net.a b()
  {
    if (b == null) {
      b = GHSApplication.a(a);
    }
    return b;
  }
  
  protected com.grubhub.AppBaseLibrary.android.dataServices.b.b c()
  {
    if (c == null) {
      c = GHSApplication.a().b();
    }
    return c;
  }
  
  protected h d()
  {
    if (d == null) {
      d = h.a();
    }
    return d;
  }
  
  protected com.grubhub.AppBaseLibrary.android.utils.urbanAirship.a e()
  {
    if (e == null) {
      e = com.grubhub.AppBaseLibrary.android.utils.urbanAirship.a.a();
    }
    return e;
  }
  
  protected String f()
  {
    return j;
  }
  
  public void g()
  {
    b().a(j);
    k = false;
    l = true;
  }
  
  public boolean h()
  {
    return k;
  }
  
  public void onResponse(T paramT)
  {
    if ((h != null) && (!l)) {
      h.onResponse(paramT);
    }
    if ((g != null) && (!l)) {
      g.a();
    }
    k = false;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */