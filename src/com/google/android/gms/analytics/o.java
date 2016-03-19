package com.google.android.gms.analytics;

import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.analytics.internal.a;
import com.google.android.gms.analytics.internal.ac;
import com.google.android.gms.analytics.internal.af;
import com.google.android.gms.analytics.internal.an;
import com.google.android.gms.common.internal.aq;
import com.google.android.gms.d.bo;
import com.google.android.gms.d.br;
import com.google.android.gms.d.bx;
import java.util.List;
import java.util.ListIterator;

public class o
  extends br<o>
{
  private final com.google.android.gms.analytics.internal.v b;
  private boolean c;
  
  public o(com.google.android.gms.analytics.internal.v paramv)
  {
    super(paramv.h(), paramv.d());
    b = paramv;
  }
  
  protected void a(bo parambo)
  {
    parambo = (com.google.android.gms.d.v)parambo.b(com.google.android.gms.d.v.class);
    if (TextUtils.isEmpty(parambo.b())) {
      parambo.b(b.p().a());
    }
    if ((c) && (TextUtils.isEmpty(parambo.d())))
    {
      a locala = b.o();
      parambo.d(locala.b());
      parambo.a(locala.a());
    }
  }
  
  public void b(String paramString)
  {
    aq.a(paramString);
    c(paramString);
    n().add(new p(b, paramString));
  }
  
  public void b(boolean paramBoolean)
  {
    c = paramBoolean;
  }
  
  public void c(String paramString)
  {
    paramString = p.a(paramString);
    ListIterator localListIterator = n().listIterator();
    while (localListIterator.hasNext()) {
      if (paramString.equals(((bx)localListIterator.next()).a())) {
        localListIterator.remove();
      }
    }
  }
  
  com.google.android.gms.analytics.internal.v k()
  {
    return b;
  }
  
  public bo l()
  {
    bo localbo = m().a();
    localbo.a(b.q().b());
    localbo.a(b.r().a());
    b(localbo);
    return localbo;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */