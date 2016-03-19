package com.google.android.gms.d;

import com.google.android.gms.tagmanager.ba;
import com.google.android.gms.tagmanager.dm;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class cp
{
  private static cq a(e parame, i parami, o[] paramArrayOfo, int paramInt)
    throws cw
  {
    cr localcr = cq.a();
    parame = a;
    int i = parame.length;
    paramInt = 0;
    if (paramInt < i)
    {
      int j = parame[paramInt];
      Object localObject = (h)a(d, Integer.valueOf(j).intValue(), "properties");
      String str = (String)a(b, a, "keys");
      localObject = (o)a(paramArrayOfo, b, "values");
      if (b.zzgs.toString().equals(str)) {
        localcr.a((o)localObject);
      }
      for (;;)
      {
        paramInt += 1;
        break;
        localcr.a(str, (o)localObject);
      }
    }
    return localcr.a();
  }
  
  public static cs a(i parami)
    throws cw
  {
    int j = 0;
    Object localObject = new o[c.length];
    int i = 0;
    while (i < c.length)
    {
      a(i, parami, (o[])localObject, new HashSet(0));
      i += 1;
    }
    ct localct = cs.a();
    ArrayList localArrayList1 = new ArrayList();
    i = 0;
    while (i < f.length)
    {
      localArrayList1.add(a(f[i], parami, (o[])localObject, i));
      i += 1;
    }
    ArrayList localArrayList2 = new ArrayList();
    i = 0;
    while (i < g.length)
    {
      localArrayList2.add(a(g[i], parami, (o[])localObject, i));
      i += 1;
    }
    ArrayList localArrayList3 = new ArrayList();
    i = 0;
    while (i < e.length)
    {
      cq localcq = a(e[i], parami, (o[])localObject, i);
      localct.a(localcq);
      localArrayList3.add(localcq);
      i += 1;
    }
    localObject = h;
    int k = localObject.length;
    i = j;
    while (i < k)
    {
      localct.a(a(localObject[i], localArrayList1, localArrayList3, localArrayList2, parami));
      i += 1;
    }
    localct.a(l);
    localct.a(q);
    return localct.a();
  }
  
  private static cu a(j paramj, List<cq> paramList1, List<cq> paramList2, List<cq> paramList3, i parami)
  {
    cv localcv = cu.a();
    int[] arrayOfInt = a;
    int j = arrayOfInt.length;
    int i = 0;
    while (i < j)
    {
      localcv.a((cq)paramList3.get(Integer.valueOf(arrayOfInt[i]).intValue()));
      i += 1;
    }
    arrayOfInt = b;
    j = arrayOfInt.length;
    i = 0;
    while (i < j)
    {
      localcv.b((cq)paramList3.get(Integer.valueOf(arrayOfInt[i]).intValue()));
      i += 1;
    }
    paramList3 = c;
    j = paramList3.length;
    i = 0;
    while (i < j)
    {
      localcv.c((cq)paramList1.get(Integer.valueOf(paramList3[i]).intValue()));
      i += 1;
    }
    paramList3 = e;
    j = paramList3.length;
    i = 0;
    int k;
    while (i < j)
    {
      k = paramList3[i];
      localcv.a(c[Integer.valueOf(k).intValue()].b);
      i += 1;
    }
    paramList3 = d;
    j = paramList3.length;
    i = 0;
    while (i < j)
    {
      localcv.d((cq)paramList1.get(Integer.valueOf(paramList3[i]).intValue()));
      i += 1;
    }
    paramList1 = f;
    j = paramList1.length;
    i = 0;
    while (i < j)
    {
      k = paramList1[i];
      localcv.b(c[Integer.valueOf(k).intValue()].b);
      i += 1;
    }
    paramList1 = g;
    j = paramList1.length;
    i = 0;
    while (i < j)
    {
      localcv.e((cq)paramList2.get(Integer.valueOf(paramList1[i]).intValue()));
      i += 1;
    }
    paramList1 = paramj.i;
    j = paramList1.length;
    i = 0;
    while (i < j)
    {
      k = paramList1[i];
      localcv.c(c[Integer.valueOf(k).intValue()].b);
      i += 1;
    }
    paramList1 = h;
    j = paramList1.length;
    i = 0;
    while (i < j)
    {
      localcv.f((cq)paramList2.get(Integer.valueOf(paramList1[i]).intValue()));
      i += 1;
    }
    paramj = paramj.j;
    j = paramj.length;
    i = 0;
    while (i < j)
    {
      k = paramj[i];
      localcv.d(c[Integer.valueOf(k).intValue()].b);
      i += 1;
    }
    return localcv.a();
  }
  
  private static o a(int paramInt, i parami, o[] paramArrayOfo, Set<Integer> paramSet)
    throws cw
  {
    int k = 0;
    int m = 0;
    int j = 0;
    if (paramSet.contains(Integer.valueOf(paramInt))) {
      a("Value cycle detected.  Current value reference: " + paramInt + "." + "  Previous value references: " + paramSet + ".");
    }
    o localo1 = (o)a(c, paramInt, "values");
    if (paramArrayOfo[paramInt] != null) {
      return paramArrayOfo[paramInt];
    }
    Object localObject = null;
    paramSet.add(Integer.valueOf(paramInt));
    switch (a)
    {
    }
    for (;;)
    {
      if (localObject == null) {
        a("Invalid value: " + localo1);
      }
      paramArrayOfo[paramInt] = localObject;
      paramSet.remove(Integer.valueOf(paramInt));
      return (o)localObject;
      localObject = b(localo1);
      o localo2 = a(localo1);
      c = new o[b.length];
      int[] arrayOfInt = b;
      k = arrayOfInt.length;
      int i = 0;
      for (;;)
      {
        localObject = localo2;
        if (j >= k) {
          break;
        }
        m = arrayOfInt[j];
        c[i] = a(m, parami, paramArrayOfo, paramSet);
        j += 1;
        i += 1;
      }
      localo2 = a(localo1);
      localObject = b(localo1);
      if (c.length != d.length) {
        a("Uneven map keys (" + c.length + ") and map values (" + d.length + ")");
      }
      d = new o[c.length];
      e = new o[c.length];
      arrayOfInt = c;
      m = arrayOfInt.length;
      j = 0;
      i = 0;
      while (j < m)
      {
        int n = arrayOfInt[j];
        d[i] = a(n, parami, paramArrayOfo, paramSet);
        j += 1;
        i += 1;
      }
      arrayOfInt = d;
      m = arrayOfInt.length;
      i = 0;
      j = k;
      for (;;)
      {
        localObject = localo2;
        if (j >= m) {
          break;
        }
        k = arrayOfInt[j];
        e[i] = a(k, parami, paramArrayOfo, paramSet);
        j += 1;
        i += 1;
      }
      localObject = a(localo1);
      f = dm.a(a(bg, parami, paramArrayOfo, paramSet));
      continue;
      localo2 = a(localo1);
      localObject = b(localo1);
      j = new o[f.length];
      arrayOfInt = f;
      k = arrayOfInt.length;
      i = 0;
      j = m;
      for (;;)
      {
        localObject = localo2;
        if (j >= k) {
          break;
        }
        m = arrayOfInt[j];
        j[i] = a(m, parami, paramArrayOfo, paramSet);
        j += 1;
        i += 1;
      }
      localObject = localo1;
    }
  }
  
  public static o a(o paramo)
  {
    o localo = new o();
    a = a;
    k = ((int[])k.clone());
    if (l) {
      l = l;
    }
    return localo;
  }
  
  private static <T> T a(T[] paramArrayOfT, int paramInt, String paramString)
    throws cw
  {
    if ((paramInt < 0) || (paramInt >= paramArrayOfT.length)) {
      a("Index out of bounds detected: " + paramInt + " in " + paramString);
    }
    return paramArrayOfT[paramInt];
  }
  
  public static void a(InputStream paramInputStream, OutputStream paramOutputStream)
    throws IOException
  {
    byte[] arrayOfByte = new byte['Ѐ'];
    for (;;)
    {
      int i = paramInputStream.read(arrayOfByte);
      if (i == -1) {
        return;
      }
      paramOutputStream.write(arrayOfByte, 0, i);
    }
  }
  
  private static void a(String paramString)
    throws cw
  {
    ba.a(paramString);
    throw new cw(paramString);
  }
  
  private static k b(o paramo)
    throws cw
  {
    if ((k)paramo.a(k.a) == null) {
      a("Expected a ServingValue and didn't get one. Value is: " + paramo);
    }
    return (k)paramo.a(k.a);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.cp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */