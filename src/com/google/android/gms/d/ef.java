package com.google.android.gms.d;

import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

public class ef<M extends ee<M>, T>
{
  protected final int a;
  protected final Class<T> b;
  public final int c;
  protected final boolean d;
  
  private ef(int paramInt1, Class<T> paramClass, int paramInt2, boolean paramBoolean)
  {
    a = paramInt1;
    b = paramClass;
    c = paramInt2;
    d = paramBoolean;
  }
  
  @Deprecated
  public static <M extends ee<M>, T extends ek> ef<M, T> a(int paramInt1, Class<T> paramClass, int paramInt2)
  {
    return new ef(paramInt1, paramClass, paramInt2, false);
  }
  
  private T b(List<em> paramList)
  {
    int j = 0;
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < paramList.size())
    {
      localObject = (em)paramList.get(i);
      if (b.length != 0) {
        a((em)localObject, localArrayList);
      }
      i += 1;
    }
    int k = localArrayList.size();
    if (k == 0)
    {
      paramList = null;
      return paramList;
    }
    Object localObject = b.cast(Array.newInstance(b.getComponentType(), k));
    i = j;
    for (;;)
    {
      paramList = (List<em>)localObject;
      if (i >= k) {
        break;
      }
      Array.set(localObject, i, localArrayList.get(i));
      i += 1;
    }
  }
  
  private T c(List<em> paramList)
  {
    if (paramList.isEmpty()) {
      return null;
    }
    paramList = (em)paramList.get(paramList.size() - 1);
    return (T)b.cast(a(eb.a(b)));
  }
  
  int a(Object paramObject)
  {
    if (d) {
      return b(paramObject);
    }
    return c(paramObject);
  }
  
  protected Object a(eb parameb)
  {
    Class localClass;
    if (d) {
      localClass = b.getComponentType();
    }
    for (;;)
    {
      try
      {
        switch (a)
        {
        case 10: 
          throw new IllegalArgumentException("Unknown type " + a);
        }
      }
      catch (InstantiationException parameb)
      {
        throw new IllegalArgumentException("Error creating instance of class " + localClass, parameb);
        localClass = b;
        continue;
        ek localek = (ek)localClass.newInstance();
        parameb.a(localek, en.b(c));
        return localek;
        localek = (ek)localClass.newInstance();
        parameb.a(localek);
        return localek;
      }
      catch (IllegalAccessException parameb)
      {
        throw new IllegalArgumentException("Error creating instance of class " + localClass, parameb);
      }
      catch (IOException parameb)
      {
        throw new IllegalArgumentException("Error reading extension field", parameb);
      }
    }
  }
  
  final T a(List<em> paramList)
  {
    if (paramList == null) {
      return null;
    }
    if (d) {
      return (T)b(paramList);
    }
    return (T)c(paramList);
  }
  
  protected void a(em paramem, List<Object> paramList)
  {
    paramList.add(a(eb.a(b)));
  }
  
  void a(Object paramObject, ec paramec)
    throws IOException
  {
    if (d)
    {
      c(paramObject, paramec);
      return;
    }
    b(paramObject, paramec);
  }
  
  protected int b(Object paramObject)
  {
    int j = 0;
    int m = Array.getLength(paramObject);
    int i = 0;
    while (i < m)
    {
      int k = j;
      if (Array.get(paramObject, i) != null) {
        k = j + c(Array.get(paramObject, i));
      }
      i += 1;
      j = k;
    }
    return j;
  }
  
  protected void b(Object paramObject, ec paramec)
  {
    for (;;)
    {
      try
      {
        paramec.e(c);
        switch (a)
        {
        case 10: 
          throw new IllegalArgumentException("Unknown type " + a);
        }
      }
      catch (IOException paramObject)
      {
        throw new IllegalStateException((Throwable)paramObject);
      }
      paramObject = (ek)paramObject;
      int i = en.b(c);
      paramec.a((ek)paramObject);
      paramec.c(i, 4);
      return;
      paramec.b((ek)paramObject);
      return;
    }
  }
  
  protected int c(Object paramObject)
  {
    int i = en.b(c);
    switch (a)
    {
    default: 
      throw new IllegalArgumentException("Unknown type " + a);
    case 10: 
      return ec.b(i, (ek)paramObject);
    }
    return ec.c(i, (ek)paramObject);
  }
  
  protected void c(Object paramObject, ec paramec)
  {
    int j = Array.getLength(paramObject);
    int i = 0;
    while (i < j)
    {
      Object localObject = Array.get(paramObject, i);
      if (localObject != null) {
        b(localObject, paramec);
      }
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.ef
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */