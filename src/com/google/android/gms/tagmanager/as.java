package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.d.a;
import com.google.android.gms.d.o;
import java.util.Map;

class as
  extends ab
{
  private static final String a = a.zzbc.toString();
  private final p b;
  
  public as(Context paramContext)
  {
    this(p.a(paramContext));
  }
  
  as(p paramp)
  {
    super(a, new String[0]);
    b = paramp;
  }
  
  public o a(Map<String, o> paramMap)
  {
    paramMap = b.a();
    if (paramMap == null) {
      return dm.f();
    }
    return dm.e(paramMap);
  }
  
  public boolean a()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.as
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */