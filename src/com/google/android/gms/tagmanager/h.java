package com.google.android.gms.tagmanager;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class h
{
  public static final Object a = new Object();
  static final String[] b = "gtm.lifetime".toString().split("\\.");
  private static final Pattern c = Pattern.compile("(\\d+)\\s*([smhd]?)");
  private final ConcurrentHashMap<j, Integer> d;
  private final Map<String, Object> e;
  private final ReentrantLock f;
  private final LinkedList<Map<String, Object>> g;
  private final k h;
  private final CountDownLatch i;
  
  h()
  {
    this(new k()
    {
      public void a(l paramAnonymousl)
      {
        paramAnonymousl.a(new ArrayList());
      }
      
      public void a(String paramAnonymousString) {}
      
      public void a(List<i> paramAnonymousList, long paramAnonymousLong) {}
    });
  }
  
  h(k paramk)
  {
    h = paramk;
    d = new ConcurrentHashMap();
    e = new HashMap();
    f = new ReentrantLock();
    g = new LinkedList();
    i = new CountDownLatch(1);
    a();
  }
  
  public static Map<String, Object> a(Object... paramVarArgs)
  {
    if (paramVarArgs.length % 2 != 0) {
      throw new IllegalArgumentException("expected even number of key-value pairs");
    }
    HashMap localHashMap = new HashMap();
    int j = 0;
    while (j < paramVarArgs.length)
    {
      if (!(paramVarArgs[j] instanceof String)) {
        throw new IllegalArgumentException("key is not a string: " + paramVarArgs[j]);
      }
      localHashMap.put((String)paramVarArgs[j], paramVarArgs[(j + 1)]);
      j += 2;
    }
    return localHashMap;
  }
  
  private void a()
  {
    h.a(new l()
    {
      public void a(List<i> paramAnonymousList)
      {
        paramAnonymousList = paramAnonymousList.iterator();
        while (paramAnonymousList.hasNext())
        {
          i locali = (i)paramAnonymousList.next();
          h.a(h.this, b(a, b));
        }
        h.a(h.this).countDown();
      }
    });
  }
  
  private void a(Map<String, Object> paramMap, String paramString, Collection<i> paramCollection)
  {
    Iterator localIterator = paramMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      StringBuilder localStringBuilder = new StringBuilder().append(paramString);
      if (paramString.length() == 0) {}
      for (paramMap = "";; paramMap = ".")
      {
        paramMap = paramMap + (String)localEntry.getKey();
        if (!(localEntry.getValue() instanceof Map)) {
          break label119;
        }
        a((Map)localEntry.getValue(), paramMap, paramCollection);
        break;
      }
      label119:
      if (!paramMap.equals("gtm.lifetime")) {
        paramCollection.add(new i(paramMap, localEntry.getValue()));
      }
    }
  }
  
  static Long b(String paramString)
  {
    Object localObject = c.matcher(paramString);
    if (!((Matcher)localObject).matches())
    {
      ba.c("unknown _lifetime: " + paramString);
      return null;
    }
    long l;
    try
    {
      l = Long.parseLong(((Matcher)localObject).group(1));
      if (l <= 0L)
      {
        ba.c("non-positive _lifetime: " + paramString);
        return null;
      }
    }
    catch (NumberFormatException localNumberFormatException)
    {
      for (;;)
      {
        ba.b("illegal number in _lifetime value: " + paramString);
        l = 0L;
      }
      localObject = ((Matcher)localObject).group(2);
      if (((String)localObject).length() == 0) {
        return Long.valueOf(l);
      }
      switch (((String)localObject).charAt(0))
      {
      default: 
        ba.b("unknown units in _lifetime: " + paramString);
        return null;
      }
    }
    return Long.valueOf(l * 1000L);
    return Long.valueOf(l * 1000L * 60L);
    return Long.valueOf(l * 1000L * 60L * 60L);
    return Long.valueOf(l * 1000L * 60L * 60L * 24L);
  }
  
  private void b()
  {
    int j = 0;
    for (;;)
    {
      Map localMap = (Map)g.poll();
      if (localMap != null)
      {
        g(localMap);
        j += 1;
        if (j > 500)
        {
          g.clear();
          throw new RuntimeException("Seems like an infinite loop of pushing to the data layer");
        }
      }
      else
      {
        return;
      }
    }
  }
  
  private void b(Map<String, Object> paramMap)
  {
    f.lock();
    try
    {
      g.offer(paramMap);
      if (f.getHoldCount() == 1) {
        b();
      }
      c(paramMap);
      return;
    }
    finally
    {
      f.unlock();
    }
  }
  
  private void c(Map<String, Object> paramMap)
  {
    Long localLong = d(paramMap);
    if (localLong == null) {
      return;
    }
    paramMap = f(paramMap);
    paramMap.remove("gtm.lifetime");
    h.a(paramMap, localLong.longValue());
  }
  
  private Long d(Map<String, Object> paramMap)
  {
    paramMap = e(paramMap);
    if (paramMap == null) {
      return null;
    }
    return b(paramMap.toString());
  }
  
  private Object e(Map<String, Object> paramMap)
  {
    String[] arrayOfString = b;
    int k = arrayOfString.length;
    int j = 0;
    for (;;)
    {
      Object localObject = paramMap;
      if (j < k)
      {
        localObject = arrayOfString[j];
        if (!(paramMap instanceof Map)) {
          localObject = null;
        }
      }
      else
      {
        return localObject;
      }
      paramMap = ((Map)paramMap).get(localObject);
      j += 1;
    }
  }
  
  private List<i> f(Map<String, Object> paramMap)
  {
    ArrayList localArrayList = new ArrayList();
    a(paramMap, "", localArrayList);
    return localArrayList;
  }
  
  private void g(Map<String, Object> paramMap)
  {
    synchronized (e)
    {
      Iterator localIterator = paramMap.keySet().iterator();
      if (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        a(b(str, paramMap.get(str)), e);
      }
    }
    h(paramMap);
  }
  
  private void h(Map<String, Object> paramMap)
  {
    Iterator localIterator = d.keySet().iterator();
    while (localIterator.hasNext()) {
      ((j)localIterator.next()).a(paramMap);
    }
  }
  
  void a(j paramj)
  {
    d.put(paramj, Integer.valueOf(0));
  }
  
  void a(String paramString)
  {
    a(paramString, null);
    h.a(paramString);
  }
  
  public void a(String paramString, Object paramObject)
  {
    a(b(paramString, paramObject));
  }
  
  public void a(String paramString, Map<String, Object> paramMap)
  {
    paramMap = new HashMap(paramMap);
    paramMap.put("event", paramString);
    a(paramMap);
  }
  
  void a(List<Object> paramList1, List<Object> paramList2)
  {
    while (paramList2.size() < paramList1.size()) {
      paramList2.add(null);
    }
    int j = 0;
    if (j < paramList1.size())
    {
      Object localObject = paramList1.get(j);
      if ((localObject instanceof List))
      {
        if (!(paramList2.get(j) instanceof List)) {
          paramList2.set(j, new ArrayList());
        }
        a((List)localObject, (List)paramList2.get(j));
      }
      for (;;)
      {
        j += 1;
        break;
        if ((localObject instanceof Map))
        {
          if (!(paramList2.get(j) instanceof Map)) {
            paramList2.set(j, new HashMap());
          }
          a((Map)localObject, (Map)paramList2.get(j));
        }
        else if (localObject != a)
        {
          paramList2.set(j, localObject);
        }
      }
    }
  }
  
  public void a(Map<String, Object> paramMap)
  {
    try
    {
      i.await();
      b(paramMap);
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;)
      {
        ba.b("DataLayer.push: unexpected InterruptedException");
      }
    }
  }
  
  void a(Map<String, Object> paramMap1, Map<String, Object> paramMap2)
  {
    Iterator localIterator = paramMap1.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      Object localObject = paramMap1.get(str);
      if ((localObject instanceof List))
      {
        if (!(paramMap2.get(str) instanceof List)) {
          paramMap2.put(str, new ArrayList());
        }
        a((List)localObject, (List)paramMap2.get(str));
      }
      else if ((localObject instanceof Map))
      {
        if (!(paramMap2.get(str) instanceof Map)) {
          paramMap2.put(str, new HashMap());
        }
        a((Map)localObject, (Map)paramMap2.get(str));
      }
      else
      {
        paramMap2.put(str, localObject);
      }
    }
  }
  
  Map<String, Object> b(String paramString, Object paramObject)
  {
    HashMap localHashMap1 = new HashMap();
    String[] arrayOfString = paramString.toString().split("\\.");
    int j = 0;
    HashMap localHashMap2;
    for (paramString = localHashMap1; j < arrayOfString.length - 1; paramString = localHashMap2)
    {
      localHashMap2 = new HashMap();
      paramString.put(arrayOfString[j], localHashMap2);
      j += 1;
    }
    paramString.put(arrayOfString[(arrayOfString.length - 1)], paramObject);
    return localHashMap1;
  }
  
  public Object c(String paramString)
  {
    for (;;)
    {
      int j;
      synchronized (e)
      {
        Map localMap1 = e;
        String[] arrayOfString = paramString.split("\\.");
        int k = arrayOfString.length;
        paramString = localMap1;
        j = 0;
        if (j < k)
        {
          localMap1 = arrayOfString[j];
          if (!(paramString instanceof Map)) {
            return null;
          }
          paramString = ((Map)paramString).get(localMap1);
          if (paramString == null) {
            return null;
          }
        }
        else
        {
          return paramString;
        }
      }
      j += 1;
    }
  }
  
  public String toString()
  {
    synchronized (e)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      Iterator localIterator = e.entrySet().iterator();
      if (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        localStringBuilder.append(String.format("{\n\tKey: %s\n\tValue: %s\n}\n", new Object[] { localEntry.getKey(), localEntry.getValue() }));
      }
    }
    String str = ((StringBuilder)localObject).toString();
    return str;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */