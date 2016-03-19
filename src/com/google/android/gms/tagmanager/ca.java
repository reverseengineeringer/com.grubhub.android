package com.google.android.gms.tagmanager;

import com.google.android.gms.d.a;
import com.google.android.gms.d.b;
import com.google.android.gms.d.o;
import java.util.Map;

class ca
  extends ab
{
  private static final String a = a.zzby.toString();
  private static final String b = b.zzfM.toString();
  private static final String c = b.zzfK.toString();
  
  public ca()
  {
    super(a, new String[0]);
  }
  
  public o a(Map<String, o> paramMap)
  {
    Object localObject = (o)paramMap.get(b);
    paramMap = (o)paramMap.get(c);
    double d2;
    double d1;
    if ((localObject != null) && (localObject != dm.f()) && (paramMap != null) && (paramMap != dm.f()))
    {
      localObject = dm.b((o)localObject);
      paramMap = dm.b(paramMap);
      if ((localObject != dm.d()) && (paramMap != dm.d()))
      {
        d2 = ((dl)localObject).doubleValue();
        d1 = paramMap.doubleValue();
        if (d2 > d1) {}
      }
    }
    for (;;)
    {
      return dm.e(Long.valueOf(Math.round((d1 - d2) * Math.random() + d2)));
      d1 = 2.147483647E9D;
      d2 = 0.0D;
    }
  }
  
  public boolean a()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.ca
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */