package com.google.android.gms.tagmanager;

import com.google.android.gms.d.o;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class dm
{
  private static final Object a = null;
  private static Long b = new Long(0L);
  private static Double c = new Double(0.0D);
  private static dl d = dl.a(0L);
  private static String e = new String("");
  private static Boolean f = new Boolean(false);
  private static List<Object> g = new ArrayList(0);
  private static Map<Object, Object> h = new HashMap();
  private static o i = e(e);
  
  public static o a(String paramString)
  {
    o localo = new o();
    a = 5;
    g = paramString;
    return localo;
  }
  
  public static Object a()
  {
    return a;
  }
  
  public static String a(o paramo)
  {
    return a(e(paramo));
  }
  
  public static String a(Object paramObject)
  {
    if (paramObject == null) {
      return e;
    }
    return paramObject.toString();
  }
  
  public static dl b(o paramo)
  {
    return b(e(paramo));
  }
  
  public static dl b(Object paramObject)
  {
    if ((paramObject instanceof dl)) {
      return (dl)paramObject;
    }
    if (h(paramObject)) {
      return dl.a(i(paramObject));
    }
    if (f(paramObject)) {
      return dl.a(Double.valueOf(g(paramObject)));
    }
    return b(a(paramObject));
  }
  
  private static dl b(String paramString)
  {
    try
    {
      dl localdl = dl.a(paramString);
      return localdl;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      ba.a("Failed to convert '" + paramString + "' to a number.");
    }
    return d;
  }
  
  public static Long b()
  {
    return b;
  }
  
  public static Boolean c()
  {
    return f;
  }
  
  public static Long c(o paramo)
  {
    return c(e(paramo));
  }
  
  public static Long c(Object paramObject)
  {
    if (h(paramObject)) {
      return Long.valueOf(i(paramObject));
    }
    return c(a(paramObject));
  }
  
  private static Long c(String paramString)
  {
    paramString = b(paramString);
    if (paramString == d) {
      return b;
    }
    return Long.valueOf(paramString.longValue());
  }
  
  public static dl d()
  {
    return d;
  }
  
  public static Boolean d(o paramo)
  {
    return d(e(paramo));
  }
  
  public static Boolean d(Object paramObject)
  {
    if ((paramObject instanceof Boolean)) {
      return (Boolean)paramObject;
    }
    return d(a(paramObject));
  }
  
  private static Boolean d(String paramString)
  {
    if ("true".equalsIgnoreCase(paramString)) {
      return Boolean.TRUE;
    }
    if ("false".equalsIgnoreCase(paramString)) {
      return Boolean.FALSE;
    }
    return f;
  }
  
  public static o e(Object paramObject)
  {
    boolean bool = false;
    Object localObject1 = new o();
    if ((paramObject instanceof o)) {
      return (o)paramObject;
    }
    if ((paramObject instanceof String))
    {
      a = 1;
      b = ((String)paramObject);
    }
    for (;;)
    {
      l = bool;
      return (o)localObject1;
      Object localObject2;
      Object localObject3;
      if ((paramObject instanceof List))
      {
        a = 2;
        localObject2 = (List)paramObject;
        paramObject = new ArrayList(((List)localObject2).size());
        localObject2 = ((List)localObject2).iterator();
        bool = false;
        if (((Iterator)localObject2).hasNext())
        {
          localObject3 = e(((Iterator)localObject2).next());
          if (localObject3 == i) {
            return i;
          }
          if ((bool) || (l)) {}
          for (bool = true;; bool = false)
          {
            ((List)paramObject).add(localObject3);
            break;
          }
        }
        c = ((o[])((List)paramObject).toArray(new o[0]));
      }
      else if ((paramObject instanceof Map))
      {
        a = 3;
        localObject3 = ((Map)paramObject).entrySet();
        paramObject = new ArrayList(((Set)localObject3).size());
        localObject2 = new ArrayList(((Set)localObject3).size());
        localObject3 = ((Set)localObject3).iterator();
        bool = false;
        if (((Iterator)localObject3).hasNext())
        {
          Object localObject4 = (Map.Entry)((Iterator)localObject3).next();
          o localo = e(((Map.Entry)localObject4).getKey());
          localObject4 = e(((Map.Entry)localObject4).getValue());
          if ((localo == i) || (localObject4 == i)) {
            return i;
          }
          if ((bool) || (l) || (l)) {}
          for (bool = true;; bool = false)
          {
            ((List)paramObject).add(localo);
            ((List)localObject2).add(localObject4);
            break;
          }
        }
        d = ((o[])((List)paramObject).toArray(new o[0]));
        e = ((o[])((List)localObject2).toArray(new o[0]));
      }
      else if (f(paramObject))
      {
        a = 1;
        b = paramObject.toString();
      }
      else if (h(paramObject))
      {
        a = 6;
        h = i(paramObject);
      }
      else
      {
        if (!(paramObject instanceof Boolean)) {
          break;
        }
        a = 8;
        i = ((Boolean)paramObject).booleanValue();
      }
    }
    localObject1 = new StringBuilder().append("Converting to Value from unknown object type: ");
    if (paramObject == null) {}
    for (paramObject = "null";; paramObject = paramObject.getClass().toString())
    {
      ba.a((String)paramObject);
      return i;
    }
  }
  
  public static Object e(o paramo)
  {
    int m = 0;
    int k = 0;
    int j = 0;
    if (paramo == null) {
      return a;
    }
    Object localObject1;
    Object localObject2;
    switch (a)
    {
    default: 
      ba.a("Failed to convert a value of type: " + a);
      return a;
    case 1: 
      return b;
    case 2: 
      localObject1 = new ArrayList(c.length);
      paramo = c;
      k = paramo.length;
      while (j < k)
      {
        localObject2 = e(paramo[j]);
        if (localObject2 == a) {
          return a;
        }
        ((ArrayList)localObject1).add(localObject2);
        j += 1;
      }
      return localObject1;
    case 3: 
      if (d.length != e.length)
      {
        ba.a("Converting an invalid value to object: " + paramo.toString());
        return a;
      }
      localObject1 = new HashMap(e.length);
      j = m;
      while (j < d.length)
      {
        localObject2 = e(d[j]);
        Object localObject3 = e(e[j]);
        if ((localObject2 == a) || (localObject3 == a)) {
          return a;
        }
        ((Map)localObject1).put(localObject2, localObject3);
        j += 1;
      }
      return localObject1;
    case 4: 
      ba.a("Trying to convert a macro reference to object");
      return a;
    case 5: 
      ba.a("Trying to convert a function id to object");
      return a;
    case 6: 
      return Long.valueOf(h);
    case 7: 
      localObject1 = new StringBuffer();
      paramo = paramo.j;
      m = paramo.length;
      j = k;
      while (j < m)
      {
        localObject2 = a(paramo[j]);
        if (localObject2 == e) {
          return a;
        }
        ((StringBuffer)localObject1).append((String)localObject2);
        j += 1;
      }
      return ((StringBuffer)localObject1).toString();
    }
    return Boolean.valueOf(i);
  }
  
  public static String e()
  {
    return e;
  }
  
  public static o f()
  {
    return i;
  }
  
  private static boolean f(Object paramObject)
  {
    return ((paramObject instanceof Double)) || ((paramObject instanceof Float)) || (((paramObject instanceof dl)) && (((dl)paramObject).a()));
  }
  
  private static double g(Object paramObject)
  {
    if ((paramObject instanceof Number)) {
      return ((Number)paramObject).doubleValue();
    }
    ba.a("getDouble received non-Number");
    return 0.0D;
  }
  
  private static boolean h(Object paramObject)
  {
    return ((paramObject instanceof Byte)) || ((paramObject instanceof Short)) || ((paramObject instanceof Integer)) || ((paramObject instanceof Long)) || (((paramObject instanceof dl)) && (((dl)paramObject).b()));
  }
  
  private static long i(Object paramObject)
  {
    if ((paramObject instanceof Number)) {
      return ((Number)paramObject).longValue();
    }
    ba.a("getInt64 received non-Number");
    return 0L;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.dm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */