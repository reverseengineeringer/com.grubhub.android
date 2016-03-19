package com.google.android.gms.analytics.internal;

import com.google.android.gms.d.bs;
import com.google.android.gms.d.by;

public class ac
  extends t
{
  private final by a = new by();
  
  ac(v paramv)
  {
    super(paramv);
  }
  
  public void a()
  {
    Object localObject = zzhm();
    String str = ((q)localObject).b();
    if (str != null) {
      a.a(str);
    }
    localObject = ((q)localObject).a();
    if (localObject != null) {
      a.b((String)localObject);
    }
  }
  
  public by b()
  {
    zzia();
    return a;
  }
  
  protected void zzhn()
  {
    zzhS().a().a(a);
    a();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */