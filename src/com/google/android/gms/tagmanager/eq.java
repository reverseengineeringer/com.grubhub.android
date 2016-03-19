package com.google.android.gms.tagmanager;

import com.google.android.gms.d.a;
import com.google.android.gms.d.b;
import com.google.android.gms.d.o;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class eq
  extends ab
{
  private static final String a = a.zzbt.toString();
  private static final String b = b.zzfh.toString();
  private static final String c = b.zzdk.toString();
  private final er d;
  
  public eq(er paramer)
  {
    super(a, new String[] { b });
    d = paramer;
  }
  
  public o a(Map<String, o> paramMap)
  {
    String str = dm.a((o)paramMap.get(b));
    HashMap localHashMap = new HashMap();
    paramMap = (o)paramMap.get(c);
    if (paramMap != null)
    {
      paramMap = dm.e(paramMap);
      if (!(paramMap instanceof Map))
      {
        ba.b("FunctionCallMacro: expected ADDITIONAL_PARAMS to be a map.");
        return dm.f();
      }
      paramMap = ((Map)paramMap).entrySet().iterator();
      while (paramMap.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)paramMap.next();
        localHashMap.put(localEntry.getKey().toString(), localEntry.getValue());
      }
    }
    try
    {
      paramMap = dm.e(d.a(str, localHashMap));
      return paramMap;
    }
    catch (Exception paramMap)
    {
      ba.b("Custom macro/tag " + str + " threw exception " + paramMap.getMessage());
    }
    return dm.f();
  }
  
  public boolean a()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.eq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */