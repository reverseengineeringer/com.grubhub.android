package com.google.android.gms.analytics.internal;

import android.content.Context;
import com.google.android.gms.analytics.e;
import com.google.android.gms.common.internal.aq;
import com.google.android.gms.d.bc;
import com.google.android.gms.d.bd;
import com.google.android.gms.d.bs;

public class w
{
  private final Context a;
  private final Context b;
  
  public w(Context paramContext)
  {
    aq.a(paramContext);
    paramContext = paramContext.getApplicationContext();
    aq.a(paramContext, "Application context can't be null");
    a = paramContext;
    b = paramContext;
  }
  
  public Context a()
  {
    return a;
  }
  
  protected an a(v paramv)
  {
    return new an(paramv);
  }
  
  protected bs a(Context paramContext)
  {
    return bs.a(paramContext);
  }
  
  public Context b()
  {
    return b;
  }
  
  protected ac b(v paramv)
  {
    return new ac(paramv);
  }
  
  protected a c(v paramv)
  {
    return new a(paramv);
  }
  
  protected af d(v paramv)
  {
    return new af(paramv);
  }
  
  protected q e(v paramv)
  {
    return new q(paramv);
  }
  
  protected i f(v paramv)
  {
    return new i(paramv);
  }
  
  protected ak g(v paramv)
  {
    return new ak(paramv);
  }
  
  protected bc h(v paramv)
  {
    return bd.c();
  }
  
  protected e i(v paramv)
  {
    return new e(paramv);
  }
  
  ad j(v paramv)
  {
    return new ad(paramv, this);
  }
  
  zzag k(v paramv)
  {
    return new zzag(paramv);
  }
  
  protected r l(v paramv)
  {
    return new r(paramv, this);
  }
  
  public aa m(v paramv)
  {
    return new aa(paramv);
  }
  
  public j n(v paramv)
  {
    return new j(paramv);
  }
  
  public y o(v paramv)
  {
    return new y(paramv);
  }
  
  public ao p(v paramv)
  {
    return new ao(paramv);
  }
  
  public l q(v paramv)
  {
    return new l(paramv);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */