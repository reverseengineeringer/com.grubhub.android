package com.google.android.gms.tagmanager;

import com.google.android.gms.d.a;
import com.google.android.gms.d.b;
import com.google.android.gms.d.o;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

class cc
  extends ab
{
  private static final String a = a.zzbO.toString();
  private static final String b = b.zzdw.toString();
  private static final String c = b.zzdx.toString();
  private static final String d = b.zzfo.toString();
  private static final String e = b.zzfi.toString();
  
  public cc()
  {
    super(a, new String[] { b, c });
  }
  
  public o a(Map<String, o> paramMap)
  {
    Object localObject = (o)paramMap.get(b);
    o localo = (o)paramMap.get(c);
    if ((localObject == null) || (localObject == dm.f()) || (localo == null) || (localo == dm.f())) {
      return dm.f();
    }
    int i = 64;
    if (dm.d((o)paramMap.get(d)).booleanValue()) {
      i = 66;
    }
    paramMap = (o)paramMap.get(e);
    int j;
    if (paramMap != null)
    {
      paramMap = dm.c(paramMap);
      if (paramMap == dm.b()) {
        return dm.f();
      }
      int k = paramMap.intValue();
      j = k;
      if (k < 0) {
        return dm.f();
      }
    }
    else
    {
      j = 1;
    }
    try
    {
      paramMap = dm.a((o)localObject);
      localObject = dm.a(localo);
      localo = null;
      localObject = Pattern.compile((String)localObject, i).matcher(paramMap);
      paramMap = localo;
      if (((Matcher)localObject).find())
      {
        paramMap = localo;
        if (((Matcher)localObject).groupCount() >= j) {
          paramMap = ((Matcher)localObject).group(j);
        }
      }
      if (paramMap == null) {
        return dm.f();
      }
      paramMap = dm.e(paramMap);
      return paramMap;
    }
    catch (PatternSyntaxException paramMap) {}
    return dm.f();
  }
  
  public boolean a()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.cc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */