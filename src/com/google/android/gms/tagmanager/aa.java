package com.google.android.gms.tagmanager;

import com.google.android.gms.d.f;
import com.google.android.gms.d.g;
import com.google.android.gms.d.l;
import com.google.android.gms.d.o;
import java.util.Map;

class aa
{
  private static Map<String, Object> a(o paramo)
  {
    paramo = dm.e(paramo);
    if (!(paramo instanceof Map))
    {
      ba.b("value: " + paramo + " is not a map value, ignored.");
      return null;
    }
    return (Map)paramo;
  }
  
  private static void a(h paramh, g paramg)
  {
    paramg = b;
    int j = paramg.length;
    int i = 0;
    while (i < j)
    {
      paramh.a(dm.a(paramg[i]));
      i += 1;
    }
  }
  
  public static void a(h paramh, l paraml)
  {
    if (c == null)
    {
      ba.b("supplemental missing experimentSupplemental");
      return;
    }
    a(paramh, c);
    b(paramh, c);
    c(paramh, c);
  }
  
  private static void b(h paramh, g paramg)
  {
    paramg = a;
    int j = paramg.length;
    int i = 0;
    while (i < j)
    {
      Map localMap = a(paramg[i]);
      if (localMap != null) {
        paramh.a(localMap);
      }
      i += 1;
    }
  }
  
  private static void c(h paramh, g paramg)
  {
    f[] arrayOff = c;
    int j = arrayOff.length;
    int i = 0;
    while (i < j)
    {
      f localf = arrayOff[i];
      if (a == null)
      {
        ba.b("GaExperimentRandom: No key");
        i += 1;
      }
      else
      {
        Object localObject = paramh.c(a);
        if (!(localObject instanceof Number))
        {
          paramg = null;
          label64:
          long l1 = b;
          long l2 = c;
          if ((!d) || (paramg == null) || (paramg.longValue() < l1) || (paramg.longValue() > l2))
          {
            if (l1 > l2) {
              break label237;
            }
            localObject = Long.valueOf(Math.round(Math.random() * (l2 - l1) + l1));
          }
          paramh.a(a);
          paramg = paramh.b(a, localObject);
          if (e > 0L)
          {
            if (paramg.containsKey("gtm")) {
              break label245;
            }
            paramg.put("gtm", h.a(new Object[] { "lifetime", Long.valueOf(e) }));
          }
        }
        for (;;)
        {
          paramh.a(paramg);
          break;
          paramg = Long.valueOf(((Number)localObject).longValue());
          break label64;
          label237:
          ba.b("GaExperimentRandom: random range invalid");
          break;
          label245:
          localObject = paramg.get("gtm");
          if ((localObject instanceof Map)) {
            ((Map)localObject).put("lifetime", Long.valueOf(e));
          } else {
            ba.b("GaExperimentRandom: gtm not a map");
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */