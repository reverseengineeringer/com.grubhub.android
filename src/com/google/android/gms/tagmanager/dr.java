package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.d.a;
import com.google.android.gms.d.b;
import com.google.android.gms.d.o;
import java.util.Map;

class dr
  extends ab
{
  private static final String a = a.zzbG.toString();
  private static final String b = b.zzdY.toString();
  private static final String c = b.zzeb.toString();
  private final Context d;
  
  public dr(Context paramContext)
  {
    super(a, new String[] { c });
    d = paramContext;
  }
  
  public o a(Map<String, o> paramMap)
  {
    Object localObject = (o)paramMap.get(c);
    if (localObject == null) {
      return dm.f();
    }
    localObject = dm.a((o)localObject);
    paramMap = (o)paramMap.get(b);
    if (paramMap != null) {}
    for (paramMap = dm.a(paramMap);; paramMap = null)
    {
      paramMap = ao.a(d, (String)localObject, paramMap);
      if (paramMap == null) {
        break;
      }
      return dm.e(paramMap);
    }
    return dm.f();
  }
  
  public boolean a()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.dr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */