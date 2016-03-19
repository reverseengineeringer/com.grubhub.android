package com.google.android.gms.tagmanager;

import com.google.android.gms.d.a;
import com.google.android.gms.d.b;
import com.google.android.gms.d.o;
import java.io.UnsupportedEncodingException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

class ap
  extends ab
{
  private static final String a = a.zzbM.toString();
  private static final String b = b.zzdw.toString();
  private static final String c = b.zzfu.toString();
  private static final String d = b.zzfy.toString();
  private static final String e = b.zzeR.toString();
  
  public ap()
  {
    super(a, new String[] { b });
  }
  
  private String a(String paramString, aq paramaq, Set<Character> paramSet)
  {
    switch (1.a[paramaq.ordinal()])
    {
    default: 
      return paramString;
    case 1: 
      try
      {
        paramaq = dq.a(paramString);
        return paramaq;
      }
      catch (UnsupportedEncodingException paramaq)
      {
        ba.a("Joiner: unsupported encoding", paramaq);
        return paramString;
      }
    }
    paramString = paramString.replace("\\", "\\\\");
    paramaq = paramSet.iterator();
    while (paramaq.hasNext())
    {
      paramSet = ((Character)paramaq.next()).toString();
      paramString = paramString.replace(paramSet, "\\" + paramSet);
    }
    return paramString;
  }
  
  private void a(StringBuilder paramStringBuilder, String paramString, aq paramaq, Set<Character> paramSet)
  {
    paramStringBuilder.append(a(paramString, paramaq, paramSet));
  }
  
  private void a(Set<Character> paramSet, String paramString)
  {
    int i = 0;
    while (i < paramString.length())
    {
      paramSet.add(Character.valueOf(paramString.charAt(i)));
      i += 1;
    }
  }
  
  public o a(Map<String, o> paramMap)
  {
    o localo = (o)paramMap.get(b);
    if (localo == null) {
      return dm.f();
    }
    Object localObject1 = (o)paramMap.get(c);
    String str1;
    Object localObject2;
    if (localObject1 != null)
    {
      str1 = dm.a((o)localObject1);
      localObject1 = (o)paramMap.get(d);
      if (localObject1 == null) {
        break label186;
      }
      localObject2 = dm.a((o)localObject1);
      label75:
      localObject1 = aq.zzaMa;
      paramMap = (o)paramMap.get(e);
      if (paramMap == null) {
        break label418;
      }
      paramMap = dm.a(paramMap);
      if (!"url".equals(paramMap)) {
        break label193;
      }
      localObject1 = aq.zzaMb;
      paramMap = null;
    }
    for (;;)
    {
      label118:
      StringBuilder localStringBuilder = new StringBuilder();
      switch (a)
      {
      default: 
        a(localStringBuilder, dm.a(localo), (aq)localObject1, paramMap);
      }
      for (;;)
      {
        return dm.e(localStringBuilder.toString());
        str1 = "";
        break;
        label186:
        localObject2 = "=";
        break label75;
        label193:
        if ("backslash".equals(paramMap))
        {
          localObject1 = aq.zzaMc;
          paramMap = new HashSet();
          a(paramMap, str1);
          a(paramMap, (String)localObject2);
          paramMap.remove(Character.valueOf('\\'));
          break label118;
        }
        ba.a("Joiner: unsupported escape type: " + paramMap);
        return dm.f();
        int j = 1;
        localObject2 = c;
        int k = localObject2.length;
        int i = 0;
        while (i < k)
        {
          localo = localObject2[i];
          if (j == 0) {
            localStringBuilder.append(str1);
          }
          a(localStringBuilder, dm.a(localo), (aq)localObject1, paramMap);
          i += 1;
          j = 0;
        }
        i = 0;
        while (i < d.length)
        {
          if (i > 0) {
            localStringBuilder.append(str1);
          }
          String str2 = dm.a(d[i]);
          String str3 = dm.a(e[i]);
          a(localStringBuilder, str2, (aq)localObject1, paramMap);
          localStringBuilder.append((String)localObject2);
          a(localStringBuilder, str3, (aq)localObject1, paramMap);
          i += 1;
        }
      }
      label418:
      paramMap = null;
    }
  }
  
  public boolean a()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.ap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */