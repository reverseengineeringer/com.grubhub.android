package com.google.android.gms.d;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

class eh
  implements Cloneable
{
  private ef<?, ?> a;
  private Object b;
  private List<em> c = new ArrayList();
  
  private byte[] c()
    throws IOException
  {
    byte[] arrayOfByte = new byte[a()];
    a(ec.a(arrayOfByte));
    return arrayOfByte;
  }
  
  int a()
  {
    int j;
    if (b != null)
    {
      j = a.a(b);
      return j;
    }
    Iterator localIterator = c.iterator();
    for (int i = 0;; i = ((em)localIterator.next()).a() + i)
    {
      j = i;
      if (!localIterator.hasNext()) {
        break;
      }
    }
  }
  
  <T> T a(ef<?, T> paramef)
  {
    if (b != null)
    {
      if (a != paramef) {
        throw new IllegalStateException("Tried to getExtension with a differernt Extension.");
      }
    }
    else
    {
      a = paramef;
      b = paramef.a(c);
      c = null;
    }
    return (T)b;
  }
  
  void a(ec paramec)
    throws IOException
  {
    if (b != null) {
      a.a(b, paramec);
    }
    for (;;)
    {
      return;
      Iterator localIterator = c.iterator();
      while (localIterator.hasNext()) {
        ((em)localIterator.next()).a(paramec);
      }
    }
  }
  
  void a(em paramem)
  {
    c.add(paramem);
  }
  
  public final eh b()
  {
    int i = 0;
    eh localeh = new eh();
    try
    {
      a = a;
      if (c == null) {
        c = null;
      }
      while (b == null)
      {
        return localeh;
        c.addAll(c);
      }
      if (!(b instanceof ek)) {
        break label92;
      }
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw new AssertionError(localCloneNotSupportedException);
    }
    b = ((ek)b).f();
    return localCloneNotSupportedException;
    label92:
    if ((b instanceof byte[]))
    {
      b = ((byte[])b).clone();
      return localCloneNotSupportedException;
    }
    Object localObject1;
    Object localObject2;
    if ((b instanceof byte[][]))
    {
      localObject1 = (byte[][])b;
      localObject2 = new byte[localObject1.length][];
      b = localObject2;
      i = 0;
      while (i < localObject1.length)
      {
        localObject2[i] = ((byte[])localObject1[i].clone());
        i += 1;
      }
    }
    if ((b instanceof boolean[]))
    {
      b = ((boolean[])b).clone();
      return localCloneNotSupportedException;
    }
    if ((b instanceof int[]))
    {
      b = ((int[])b).clone();
      return localCloneNotSupportedException;
    }
    if ((b instanceof long[]))
    {
      b = ((long[])b).clone();
      return localCloneNotSupportedException;
    }
    if ((b instanceof float[]))
    {
      b = ((float[])b).clone();
      return localCloneNotSupportedException;
    }
    if ((b instanceof double[]))
    {
      b = ((double[])b).clone();
      return localCloneNotSupportedException;
    }
    if ((b instanceof ek[]))
    {
      localObject1 = (ek[])b;
      localObject2 = new ek[localObject1.length];
      b = localObject2;
      while (i < localObject1.length)
      {
        localObject2[i] = localObject1[i].f();
        i += 1;
      }
    }
    return localCloneNotSupportedException;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1;
    if (paramObject == this) {
      bool1 = true;
    }
    do
    {
      do
      {
        return bool1;
        bool1 = bool2;
      } while (!(paramObject instanceof eh));
      paramObject = (eh)paramObject;
      if ((b == null) || (b == null)) {
        break;
      }
      bool1 = bool2;
    } while (a != a);
    if (!a.b.isArray()) {
      return b.equals(b);
    }
    if ((b instanceof byte[])) {
      return Arrays.equals((byte[])b, (byte[])b);
    }
    if ((b instanceof int[])) {
      return Arrays.equals((int[])b, (int[])b);
    }
    if ((b instanceof long[])) {
      return Arrays.equals((long[])b, (long[])b);
    }
    if ((b instanceof float[])) {
      return Arrays.equals((float[])b, (float[])b);
    }
    if ((b instanceof double[])) {
      return Arrays.equals((double[])b, (double[])b);
    }
    if ((b instanceof boolean[])) {
      return Arrays.equals((boolean[])b, (boolean[])b);
    }
    return Arrays.deepEquals((Object[])b, (Object[])b);
    if ((c != null) && (c != null)) {
      return c.equals(c);
    }
    try
    {
      bool1 = Arrays.equals(c(), ((eh)paramObject).c());
      return bool1;
    }
    catch (IOException paramObject)
    {
      throw new IllegalStateException((Throwable)paramObject);
    }
  }
  
  public int hashCode()
  {
    try
    {
      int i = Arrays.hashCode(c());
      return i + 527;
    }
    catch (IOException localIOException)
    {
      throw new IllegalStateException(localIOException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.eh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */