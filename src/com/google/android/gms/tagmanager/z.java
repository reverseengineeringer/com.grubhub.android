package com.google.android.gms.tagmanager;

import com.google.android.gms.d.a;
import com.google.android.gms.d.o;
import java.util.Map;

class z
  extends ab
{
  private static final String a = a.zzbs.toString();
  private final cp b;
  
  public z(cp paramcp)
  {
    super(a, new String[0]);
    b = paramcp;
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
 * Qualified Name:     com.google.android.gms.tagmanager.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */