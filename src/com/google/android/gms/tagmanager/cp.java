package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.d.b;
import com.google.android.gms.d.l;
import com.google.android.gms.d.o;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class cp
{
  private static final bq<o> a = new bq(dm.f(), true);
  private final com.google.android.gms.d.cs b;
  private final y c;
  private final Map<String, ab> d;
  private final Map<String, ab> e;
  private final Map<String, ab> f;
  private final dz<com.google.android.gms.d.cq, bq<o>> g;
  private final dz<String, cr> h;
  private final Set<com.google.android.gms.d.cu> i;
  private final h j;
  private final Map<String, cs> k;
  private volatile String l;
  private int m;
  
  public cp(Context paramContext, com.google.android.gms.d.cs paramcs, h paramh, er paramer1, er paramer2, y paramy)
  {
    if (paramcs == null) {
      throw new NullPointerException("resource cannot be null");
    }
    b = paramcs;
    i = new HashSet(paramcs.b());
    j = paramh;
    c = paramy;
    paramcs = new eb()
    {
      public int a(com.google.android.gms.d.cq paramAnonymouscq, bq<o> paramAnonymousbq)
      {
        return ((o)paramAnonymousbq.a()).g();
      }
    };
    g = new ea().a(1048576, paramcs);
    paramcs = new eb()
    {
      public int a(String paramAnonymousString, cr paramAnonymouscr)
      {
        return paramAnonymousString.length() + paramAnonymouscr.c();
      }
    };
    h = new ea().a(1048576, paramcs);
    d = new HashMap();
    b(new dw(paramContext));
    b(new eq(paramer2));
    b(new ex(paramh));
    b(new dn(paramContext, paramh));
    b(new dg(paramContext, paramh));
    e = new HashMap();
    c(new eo());
    c(new v());
    c(new w());
    c(new ad());
    c(new ae());
    c(new av());
    c(new aw());
    c(new cd());
    c(new dc());
    f = new HashMap();
    a(new as(paramContext));
    a(new bw(paramContext));
    a(new dr(paramContext));
    a(new ds(paramContext));
    a(new dt(paramContext));
    a(new du(paramContext));
    a(new dv(paramContext));
    a(new ec());
    a(new en(b.c()));
    a(new eq(paramer1));
    a(new et(paramh));
    a(new r(paramContext));
    a(new s());
    a(new u());
    a(new z(this));
    a(new af());
    a(new ag());
    a(new an(paramContext));
    a(new ap());
    a(new au());
    a(new bc());
    a(new be(paramContext));
    a(new br());
    a(new bv());
    a(new ca());
    a(new cc());
    a(new ce(paramContext));
    a(new ct());
    a(new cu());
    a(new df());
    a(new do());
    k = new HashMap();
    paramh = i.iterator();
    while (paramh.hasNext())
    {
      paramer1 = (com.google.android.gms.d.cu)paramh.next();
      if (paramy.a())
      {
        a(paramer1.f(), paramer1.g(), "add macro");
        a(paramer1.k(), paramer1.h(), "remove macro");
        a(paramer1.d(), paramer1.i(), "add tag");
        a(paramer1.e(), paramer1.j(), "remove tag");
      }
      int n = 0;
      while (n < paramer1.f().size())
      {
        paramer2 = (com.google.android.gms.d.cq)paramer1.f().get(n);
        paramcs = "Unknown";
        paramContext = paramcs;
        if (paramy.a())
        {
          paramContext = paramcs;
          if (n < paramer1.g().size()) {
            paramContext = (String)paramer1.g().get(n);
          }
        }
        paramcs = a(k, a(paramer2));
        paramcs.a(paramer1);
        paramcs.a(paramer1, paramer2);
        paramcs.a(paramer1, paramContext);
        n += 1;
      }
      n = 0;
      while (n < paramer1.k().size())
      {
        paramer2 = (com.google.android.gms.d.cq)paramer1.k().get(n);
        paramcs = "Unknown";
        paramContext = paramcs;
        if (paramy.a())
        {
          paramContext = paramcs;
          if (n < paramer1.h().size()) {
            paramContext = (String)paramer1.h().get(n);
          }
        }
        paramcs = a(k, a(paramer2));
        paramcs.a(paramer1);
        paramcs.b(paramer1, paramer2);
        paramcs.b(paramer1, paramContext);
        n += 1;
      }
    }
    paramContext = b.d().entrySet().iterator();
    while (paramContext.hasNext())
    {
      paramcs = (Map.Entry)paramContext.next();
      paramh = ((List)paramcs.getValue()).iterator();
      while (paramh.hasNext())
      {
        paramer1 = (com.google.android.gms.d.cq)paramh.next();
        if (!dm.d((o)paramer1.b().get(b.zzfT.toString())).booleanValue()) {
          a(k, (String)paramcs.getKey()).a(paramer1);
        }
      }
    }
  }
  
  private bq<o> a(o paramo, Set<String> paramSet, dp paramdp)
  {
    if (!l) {
      return new bq(paramo, true);
    }
    bq localbq1;
    switch (a)
    {
    case 5: 
    case 6: 
    default: 
      ba.a("Unknown type: " + a);
      return a;
    case 2: 
      localo = com.google.android.gms.d.cp.a(paramo);
      c = new o[c.length];
      n = 0;
      while (n < c.length)
      {
        localbq1 = a(c[n], paramSet, paramdp.a(n));
        if (localbq1 == a) {
          return a;
        }
        c[n] = ((o)localbq1.a());
        n += 1;
      }
      return new bq(localo, false);
    case 3: 
      localo = com.google.android.gms.d.cp.a(paramo);
      if (d.length != e.length)
      {
        ba.a("Invalid serving value: " + paramo.toString());
        return a;
      }
      d = new o[d.length];
      e = new o[d.length];
      n = 0;
      while (n < d.length)
      {
        localbq1 = a(d[n], paramSet, paramdp.b(n));
        bq localbq2 = a(e[n], paramSet, paramdp.c(n));
        if ((localbq1 == a) || (localbq2 == a)) {
          return a;
        }
        d[n] = ((o)localbq1.a());
        e[n] = ((o)localbq2.a());
        n += 1;
      }
      return new bq(localo, false);
    case 4: 
      if (paramSet.contains(f))
      {
        ba.a("Macro cycle detected.  Current macro reference: " + f + "." + "  Previous macro references: " + paramSet.toString() + ".");
        return a;
      }
      paramSet.add(f);
      paramdp = dq.a(a(f, paramSet, paramdp.a()), k);
      paramSet.remove(f);
      return paramdp;
    }
    o localo = com.google.android.gms.d.cp.a(paramo);
    j = new o[j.length];
    int n = 0;
    while (n < j.length)
    {
      localbq1 = a(j[n], paramSet, paramdp.d(n));
      if (localbq1 == a) {
        return a;
      }
      j[n] = ((o)localbq1.a());
      n += 1;
    }
    return new bq(localo, false);
  }
  
  private bq<o> a(String paramString, Set<String> paramSet, bd parambd)
  {
    m += 1;
    Object localObject = (cr)h.a(paramString);
    if ((localObject != null) && (!c.a()))
    {
      a(((cr)localObject).b(), paramSet);
      m -= 1;
      return ((cr)localObject).a();
    }
    localObject = (cs)k.get(paramString);
    if (localObject == null)
    {
      ba.a(b() + "Invalid macro: " + paramString);
      m -= 1;
      return a;
    }
    bq localbq = a(paramString, ((cs)localObject).a(), ((cs)localObject).b(), ((cs)localObject).c(), ((cs)localObject).e(), ((cs)localObject).d(), paramSet, parambd.b());
    if (((Set)localbq.a()).isEmpty()) {}
    for (localObject = ((cs)localObject).f(); localObject == null; localObject = (com.google.android.gms.d.cq)((Set)localbq.a()).iterator().next())
    {
      m -= 1;
      return a;
      if (((Set)localbq.a()).size() > 1) {
        ba.b(b() + "Multiple macros active for macroName " + paramString);
      }
    }
    parambd = a(f, (com.google.android.gms.d.cq)localObject, paramSet, parambd.a());
    boolean bool;
    if ((localbq.b()) && (parambd.b()))
    {
      bool = true;
      if (parambd != a) {
        break label392;
      }
    }
    label392:
    for (parambd = a;; parambd = new bq(parambd.a(), bool))
    {
      localObject = ((com.google.android.gms.d.cq)localObject).c();
      if (parambd.b()) {
        h.a(paramString, new cr(parambd, (o)localObject));
      }
      a((o)localObject, paramSet);
      m -= 1;
      return parambd;
      bool = false;
      break;
    }
  }
  
  private bq<o> a(Map<String, ab> paramMap, com.google.android.gms.d.cq paramcq, Set<String> paramSet, cf paramcf)
  {
    boolean bool = true;
    Object localObject1 = (o)paramcq.b().get(b.zzfg.toString());
    if (localObject1 == null)
    {
      ba.a("No function id in properties");
      paramMap = a;
    }
    ab localab;
    do
    {
      return paramMap;
      localObject1 = g;
      localab = (ab)paramMap.get(localObject1);
      if (localab == null)
      {
        ba.a((String)localObject1 + " has no backing implementation.");
        return a;
      }
      paramMap = (bq)g.a(paramcq);
    } while ((paramMap != null) && (!c.a()));
    paramMap = new HashMap();
    Iterator localIterator = paramcq.b().entrySet().iterator();
    int n = 1;
    if (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      Object localObject2 = paramcf.a((String)localEntry.getKey());
      localObject2 = a((o)localEntry.getValue(), paramSet, ((ch)localObject2).a((o)localEntry.getValue()));
      if (localObject2 == a) {
        return a;
      }
      if (((bq)localObject2).b()) {
        paramcq.a((String)localEntry.getKey(), (o)((bq)localObject2).a());
      }
      for (;;)
      {
        paramMap.put(localEntry.getKey(), ((bq)localObject2).a());
        break;
        n = 0;
      }
    }
    if (!localab.a(paramMap.keySet()))
    {
      ba.a("Incorrect keys for function " + (String)localObject1 + " required " + localab.c() + " had " + paramMap.keySet());
      return a;
    }
    if ((n != 0) && (localab.a())) {}
    for (;;)
    {
      paramMap = new bq(localab.a(paramMap), bool);
      if (bool) {
        g.a(paramcq, paramMap);
      }
      paramcf.a((o)paramMap.a());
      return paramMap;
      bool = false;
    }
  }
  
  private bq<Set<com.google.android.gms.d.cq>> a(Set<com.google.android.gms.d.cu> paramSet, Set<String> paramSet1, cq paramcq, co paramco)
  {
    HashSet localHashSet1 = new HashSet();
    HashSet localHashSet2 = new HashSet();
    paramSet = paramSet.iterator();
    boolean bool = true;
    if (paramSet.hasNext())
    {
      com.google.android.gms.d.cu localcu = (com.google.android.gms.d.cu)paramSet.next();
      ci localci = paramco.a();
      bq localbq = a(localcu, paramSet1, localci);
      if (((Boolean)localbq.a()).booleanValue()) {
        paramcq.a(localcu, localHashSet1, localHashSet2, localci);
      }
      if ((bool) && (localbq.b())) {}
      for (bool = true;; bool = false) {
        break;
      }
    }
    localHashSet1.removeAll(localHashSet2);
    paramco.a(localHashSet1);
    return new bq(localHashSet1, bool);
  }
  
  private static cs a(Map<String, cs> paramMap, String paramString)
  {
    cs localcs2 = (cs)paramMap.get(paramString);
    cs localcs1 = localcs2;
    if (localcs2 == null)
    {
      localcs1 = new cs();
      paramMap.put(paramString, localcs1);
    }
    return localcs1;
  }
  
  private static String a(com.google.android.gms.d.cq paramcq)
  {
    return dm.a((o)paramcq.b().get(b.zzfr.toString()));
  }
  
  private void a(o paramo, Set<String> paramSet)
  {
    if (paramo == null) {}
    for (;;)
    {
      return;
      paramo = a(paramo, paramSet, new bo());
      if (paramo != a)
      {
        paramo = dm.e((o)paramo.a());
        if ((paramo instanceof Map))
        {
          paramo = (Map)paramo;
          j.a(paramo);
          return;
        }
        if (!(paramo instanceof List)) {
          break;
        }
        paramo = ((List)paramo).iterator();
        while (paramo.hasNext())
        {
          paramSet = paramo.next();
          if ((paramSet instanceof Map))
          {
            paramSet = (Map)paramSet;
            j.a(paramSet);
          }
          else
          {
            ba.b("pushAfterEvaluate: value not a Map");
          }
        }
      }
    }
    ba.b("pushAfterEvaluate: value not a Map or List");
  }
  
  private static void a(List<com.google.android.gms.d.cq> paramList, List<String> paramList1, String paramString)
  {
    if (paramList.size() != paramList1.size()) {
      ba.c("Invalid resource: imbalance of rule names of functions for " + paramString + " operation. Using default rule name instead");
    }
  }
  
  private static void a(Map<String, ab> paramMap, ab paramab)
  {
    if (paramMap.containsKey(paramab.b())) {
      throw new IllegalArgumentException("Duplicate function type name: " + paramab.b());
    }
    paramMap.put(paramab.b(), paramab);
  }
  
  private String b()
  {
    if (m <= 1) {
      return "";
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(Integer.toString(m));
    int n = 2;
    while (n < m)
    {
      localStringBuilder.append(' ');
      n += 1;
    }
    localStringBuilder.append(": ");
    return localStringBuilder.toString();
  }
  
  bq<Boolean> a(com.google.android.gms.d.cq paramcq, Set<String> paramSet, cf paramcf)
  {
    paramcq = a(e, paramcq, paramSet, paramcf);
    paramSet = dm.d((o)paramcq.a());
    paramcf.a(dm.e(paramSet));
    return new bq(paramSet, paramcq.b());
  }
  
  bq<Boolean> a(com.google.android.gms.d.cu paramcu, Set<String> paramSet, ci paramci)
  {
    Object localObject = paramcu.c().iterator();
    boolean bool = true;
    if (((Iterator)localObject).hasNext())
    {
      bq localbq = a((com.google.android.gms.d.cq)((Iterator)localObject).next(), paramSet, paramci.a());
      if (((Boolean)localbq.a()).booleanValue())
      {
        paramci.a(dm.e(Boolean.valueOf(false)));
        return new bq(Boolean.valueOf(false), localbq.b());
      }
      if ((bool) && (localbq.b())) {}
      for (bool = true;; bool = false) {
        break;
      }
    }
    paramcu = paramcu.b().iterator();
    while (paramcu.hasNext())
    {
      localObject = a((com.google.android.gms.d.cq)paramcu.next(), paramSet, paramci.b());
      if (!((Boolean)((bq)localObject).a()).booleanValue())
      {
        paramci.a(dm.e(Boolean.valueOf(false)));
        return new bq(Boolean.valueOf(false), ((bq)localObject).b());
      }
      if ((bool) && (((bq)localObject).b())) {
        bool = true;
      } else {
        bool = false;
      }
    }
    paramci.a(dm.e(Boolean.valueOf(true)));
    return new bq(Boolean.valueOf(true), bool);
  }
  
  bq<Set<com.google.android.gms.d.cq>> a(String paramString, Set<com.google.android.gms.d.cu> paramSet, final Map<com.google.android.gms.d.cu, List<com.google.android.gms.d.cq>> paramMap1, final Map<com.google.android.gms.d.cu, List<String>> paramMap2, final Map<com.google.android.gms.d.cu, List<com.google.android.gms.d.cq>> paramMap3, final Map<com.google.android.gms.d.cu, List<String>> paramMap4, Set<String> paramSet1, co paramco)
  {
    a(paramSet, paramSet1, new cq()
    {
      public void a(com.google.android.gms.d.cu paramAnonymouscu, Set<com.google.android.gms.d.cq> paramAnonymousSet1, Set<com.google.android.gms.d.cq> paramAnonymousSet2, ci paramAnonymousci)
      {
        List localList1 = (List)paramMap1.get(paramAnonymouscu);
        List localList2 = (List)paramMap2.get(paramAnonymouscu);
        if (localList1 != null)
        {
          paramAnonymousSet1.addAll(localList1);
          paramAnonymousci.c().a(localList1, localList2);
        }
        paramAnonymousSet1 = (List)paramMap3.get(paramAnonymouscu);
        paramAnonymouscu = (List)paramMap4.get(paramAnonymouscu);
        if (paramAnonymousSet1 != null)
        {
          paramAnonymousSet2.addAll(paramAnonymousSet1);
          paramAnonymousci.d().a(paramAnonymousSet1, paramAnonymouscu);
        }
      }
    }, paramco);
  }
  
  bq<Set<com.google.android.gms.d.cq>> a(Set<com.google.android.gms.d.cu> paramSet, co paramco)
  {
    a(paramSet, new HashSet(), new cq()
    {
      public void a(com.google.android.gms.d.cu paramAnonymouscu, Set<com.google.android.gms.d.cq> paramAnonymousSet1, Set<com.google.android.gms.d.cq> paramAnonymousSet2, ci paramAnonymousci)
      {
        paramAnonymousSet1.addAll(paramAnonymouscu.d());
        paramAnonymousSet2.addAll(paramAnonymouscu.e());
        paramAnonymousci.e().a(paramAnonymouscu.d(), paramAnonymouscu.i());
        paramAnonymousci.f().a(paramAnonymouscu.e(), paramAnonymouscu.j());
      }
    }, paramco);
  }
  
  String a()
  {
    try
    {
      String str = l;
      return str;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  void a(ab paramab)
  {
    a(f, paramab);
  }
  
  public void a(String paramString)
  {
    try
    {
      c(paramString);
      paramString = c.b(paramString);
      es locales = paramString.b();
      Iterator localIterator = ((Set)a(i, locales.b()).a()).iterator();
      while (localIterator.hasNext())
      {
        com.google.android.gms.d.cq localcq = (com.google.android.gms.d.cq)localIterator.next();
        a(d, localcq, new HashSet(), locales.a());
      }
      paramString.c();
    }
    finally {}
    c(null);
  }
  
  public void a(List<l> paramList)
  {
    for (;;)
    {
      try
      {
        paramList = paramList.iterator();
        if (!paramList.hasNext()) {
          break;
        }
        l locall = (l)paramList.next();
        if ((a == null) || (!a.startsWith("gaExperiment:"))) {
          ba.e("Ignored supplemental: " + locall);
        } else {
          aa.a(j, locall);
        }
      }
      finally {}
    }
  }
  
  public bq<o> b(String paramString)
  {
    m = 0;
    x localx = c.a(paramString);
    paramString = a(paramString, new HashSet(), localx.a());
    localx.c();
    return paramString;
  }
  
  void b(ab paramab)
  {
    a(d, paramab);
  }
  
  void c(ab paramab)
  {
    a(e, paramab);
  }
  
  void c(String paramString)
  {
    try
    {
      l = paramString;
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.cp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */