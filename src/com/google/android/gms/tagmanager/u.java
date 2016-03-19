package com.google.android.gms.tagmanager;

import android.util.Base64;
import com.google.android.gms.d.a;
import com.google.android.gms.d.b;
import com.google.android.gms.d.o;
import java.util.Map;

class u
  extends ab
{
  private static final String a = a.zzbI.toString();
  private static final String b = b.zzdw.toString();
  private static final String c = b.zzfU.toString();
  private static final String d = b.zzfq.toString();
  private static final String e = b.zzgc.toString();
  
  public u()
  {
    super(a, new String[] { b });
  }
  
  public o a(Map<String, o> paramMap)
  {
    Object localObject = (o)paramMap.get(b);
    if ((localObject == null) || (localObject == dm.f())) {
      return dm.f();
    }
    String str2 = dm.a((o)localObject);
    localObject = (o)paramMap.get(d);
    String str1;
    if (localObject == null)
    {
      str1 = "text";
      localObject = (o)paramMap.get(e);
      if (localObject != null) {
        break label148;
      }
      localObject = "base16";
      label75:
      paramMap = (o)paramMap.get(c);
      if ((paramMap == null) || (!dm.d(paramMap).booleanValue())) {
        break label322;
      }
    }
    label148:
    label257:
    label296:
    label322:
    for (int i = 3;; i = 2)
    {
      for (;;)
      {
        try
        {
          if ("text".equals(str1))
          {
            paramMap = str2.getBytes();
            if (!"base16".equals(localObject)) {
              break label257;
            }
            paramMap = dy.a(paramMap);
            return dm.e(paramMap);
            str1 = dm.a((o)localObject);
            break;
            localObject = dm.a((o)localObject);
            break label75;
          }
          if ("base16".equals(str1))
          {
            paramMap = dy.a(str2);
            continue;
          }
          if ("base64".equals(str1))
          {
            paramMap = Base64.decode(str2, i);
            continue;
          }
          if ("base64url".equals(str1))
          {
            paramMap = Base64.decode(str2, i | 0x8);
            continue;
          }
          ba.a("Encode: unknown input format: " + str1);
          paramMap = dm.f();
          return paramMap;
        }
        catch (IllegalArgumentException paramMap)
        {
          ba.a("Encode: invalid input:");
          return dm.f();
        }
        if ("base64".equals(localObject))
        {
          paramMap = Base64.encodeToString(paramMap, i);
        }
        else
        {
          if (!"base64url".equals(localObject)) {
            break label296;
          }
          paramMap = Base64.encodeToString(paramMap, i | 0x8);
        }
      }
      ba.a("Encode: unknown output format: " + (String)localObject);
      return dm.f();
    }
  }
  
  public boolean a()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */