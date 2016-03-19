package com.google.android.gms.tagmanager;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import com.google.android.gms.d.a;
import com.google.android.gms.d.b;
import com.google.android.gms.d.o;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

class dg
  extends ab
{
  private static final String a = a.zzcN.toString();
  private static final String b = b.zzfO.toString();
  private static final String c = b.zzft.toString();
  private static final String d = b.zzfB.toString();
  private static final String e = b.zzhs.toString();
  private boolean f;
  private boolean g;
  private final Context h;
  private h i;
  private final HandlerThread j;
  private Handler k;
  private final Set<String> l = new HashSet();
  
  public dg(Context paramContext, h paramh)
  {
    super(a, new String[] { c, b });
    h = paramContext;
    i = paramh;
    j = new HandlerThread("Google GTM SDK Timer", 10);
    j.start();
    k = new Handler(j.getLooper());
  }
  
  public o a(Map<String, o> paramMap)
  {
    String str2 = dm.a((o)paramMap.get(b));
    String str1 = dm.a((o)paramMap.get(e));
    String str3 = dm.a((o)paramMap.get(c));
    paramMap = dm.a((o)paramMap.get(d));
    try
    {
      l1 = Long.parseLong(str3);
    }
    catch (NumberFormatException localNumberFormatException)
    {
      try
      {
        for (;;)
        {
          l2 = Long.parseLong(paramMap);
          if ((l1 > 0L) && (!TextUtils.isEmpty(str2)))
          {
            if (str1 != null)
            {
              paramMap = str1;
              if (!str1.isEmpty()) {}
            }
            else
            {
              paramMap = "0";
            }
            if (!l.contains(paramMap))
            {
              if (!"0".equals(paramMap)) {
                l.add(paramMap);
              }
              k.postDelayed(new dh(this, str2, paramMap, l1, l2), l1);
            }
          }
          return dm.f();
          localNumberFormatException = localNumberFormatException;
          long l1 = 0L;
        }
      }
      catch (NumberFormatException paramMap)
      {
        for (;;)
        {
          long l2 = 0L;
        }
      }
    }
  }
  
  public boolean a()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.dg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */