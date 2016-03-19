package com.google.android.gms.tagmanager;

import com.google.android.gms.d.a;
import com.google.android.gms.d.b;
import com.google.android.gms.d.o;
import java.util.Map;

class et
  extends ab
{
  private static final String a = a.zzbk.toString();
  private static final String b = b.zzfO.toString();
  private static final String c = b.zzez.toString();
  private final h d;
  
  public et(h paramh)
  {
    super(a, new String[] { b });
    d = paramh;
  }
  
  public o a(Map<String, o> paramMap)
  {
    Object localObject = d.c(dm.a((o)paramMap.get(b)));
    if (localObject == null)
    {
      paramMap = (o)paramMap.get(c);
      if (paramMap != null) {
        return paramMap;
      }
      return dm.f();
    }
    return dm.e(localObject);
  }
  
  public boolean a()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.et
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */