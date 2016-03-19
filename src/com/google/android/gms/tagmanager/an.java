package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.d.a;
import com.google.android.gms.d.b;
import com.google.android.gms.d.o;
import java.util.Map;

class an
  extends ab
{
  private static final String a = a.zzbL.toString();
  private static final String b = b.zzdY.toString();
  private final Context c;
  
  public an(Context paramContext)
  {
    super(a, new String[0]);
    c = paramContext;
  }
  
  public o a(Map<String, o> paramMap)
  {
    if ((o)paramMap.get(b) != null) {}
    for (paramMap = dm.a((o)paramMap.get(b));; paramMap = null)
    {
      paramMap = ao.a(c, paramMap);
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
 * Qualified Name:     com.google.android.gms.tagmanager.an
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */