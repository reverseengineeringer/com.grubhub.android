package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.net.Uri.Builder;
import com.google.android.gms.d.a;
import com.google.android.gms.d.b;
import com.google.android.gms.d.o;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class dw
  extends dk
{
  static final String a = "gtm_" + b + "_unrepeatable";
  private static final String b = a.zzcl.toString();
  private static final String c = b.zzhu.toString();
  private static final String d = b.zzdk.toString();
  private static final String e = b.zzht.toString();
  private static final Set<String> f = new HashSet();
  private final dx g;
  private final Context h;
  
  public dw(Context paramContext)
  {
    this(paramContext, new dx()
    {
      public ai a()
      {
        return ez.a(dw.this);
      }
    });
  }
  
  dw(Context paramContext, dx paramdx)
  {
    super(b, new String[] { c });
    g = paramdx;
    h = paramContext;
  }
  
  private boolean c(String paramString)
  {
    boolean bool1 = true;
    for (;;)
    {
      try
      {
        boolean bool2 = b(paramString);
        if (bool2) {
          return bool1;
        }
        if (a(paramString)) {
          f.add(paramString);
        } else {
          bool1 = false;
        }
      }
      finally {}
    }
  }
  
  boolean a(String paramString)
  {
    return h.getSharedPreferences(a, 0).contains(paramString);
  }
  
  public void b(Map<String, o> paramMap)
  {
    String str;
    if (paramMap.get(e) != null)
    {
      str = dm.a((o)paramMap.get(e));
      if ((str == null) || (!c(str))) {
        break label46;
      }
    }
    label46:
    do
    {
      return;
      str = null;
      break;
      Uri.Builder localBuilder = Uri.parse(dm.a((o)paramMap.get(c))).buildUpon();
      paramMap = (o)paramMap.get(d);
      if (paramMap != null)
      {
        paramMap = dm.e(paramMap);
        if (!(paramMap instanceof List))
        {
          ba.a("ArbitraryPixel: additional params not a list: not sending partial hit: " + localBuilder.build().toString());
          return;
        }
        paramMap = ((List)paramMap).iterator();
        while (paramMap.hasNext())
        {
          Object localObject = paramMap.next();
          if (!(localObject instanceof Map))
          {
            ba.a("ArbitraryPixel: additional params contains non-map: not sending partial hit: " + localBuilder.build().toString());
            return;
          }
          localObject = ((Map)localObject).entrySet().iterator();
          while (((Iterator)localObject).hasNext())
          {
            Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
            localBuilder.appendQueryParameter(localEntry.getKey().toString(), localEntry.getValue().toString());
          }
        }
      }
      paramMap = localBuilder.build().toString();
      g.a().a(paramMap);
      ba.e("ArbitraryPixel: url = " + paramMap);
    } while (str == null);
    try
    {
      f.add(str);
      cy.a(h, a, str, "true");
      return;
    }
    finally {}
  }
  
  boolean b(String paramString)
  {
    return f.contains(paramString);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.dw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */