package org.c.a;

import java.util.Iterator;
import java.util.List;
import org.c.e;

public class a
  implements e
{
  private static String c = "[ ";
  private static String d = " ]";
  private static String e = ", ";
  private static final long serialVersionUID = 1803952589649545191L;
  private final String a;
  private List b;
  
  a(String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("A merker name cannot be null");
    }
    a = paramString;
  }
  
  public String a()
  {
    return a;
  }
  
  /* Error */
  public boolean b()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 48	org/c/a/a:b	Ljava/util/List;
    //   6: ifnull +23 -> 29
    //   9: aload_0
    //   10: getfield 48	org/c/a/a:b	Ljava/util/List;
    //   13: invokeinterface 54 1 0
    //   18: istore_1
    //   19: iload_1
    //   20: ifle +9 -> 29
    //   23: iconst_1
    //   24: istore_2
    //   25: aload_0
    //   26: monitorexit
    //   27: iload_2
    //   28: ireturn
    //   29: iconst_0
    //   30: istore_2
    //   31: goto -6 -> 25
    //   34: astore_3
    //   35: aload_0
    //   36: monitorexit
    //   37: aload_3
    //   38: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	39	0	this	a
    //   18	2	1	i	int
    //   24	7	2	bool	boolean
    //   34	4	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	19	34	finally
  }
  
  /* Error */
  public Iterator c()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 48	org/c/a/a:b	Ljava/util/List;
    //   6: ifnull +17 -> 23
    //   9: aload_0
    //   10: getfield 48	org/c/a/a:b	Ljava/util/List;
    //   13: invokeinterface 58 1 0
    //   18: astore_1
    //   19: aload_0
    //   20: monitorexit
    //   21: aload_1
    //   22: areturn
    //   23: getstatic 63	java/util/Collections:EMPTY_LIST	Ljava/util/List;
    //   26: invokeinterface 58 1 0
    //   31: astore_1
    //   32: goto -13 -> 19
    //   35: astore_1
    //   36: aload_0
    //   37: monitorexit
    //   38: aload_1
    //   39: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	40	0	this	a
    //   18	14	1	localIterator	Iterator
    //   35	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	19	35	finally
    //   23	32	35	finally
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1;
    if (this == paramObject) {
      bool1 = true;
    }
    do
    {
      do
      {
        return bool1;
        bool1 = bool2;
      } while (paramObject == null);
      bool1 = bool2;
    } while (!(paramObject instanceof e));
    paramObject = (e)paramObject;
    return a.equals(((e)paramObject).a());
  }
  
  public int hashCode()
  {
    return a.hashCode();
  }
  
  public String toString()
  {
    if (!b()) {
      return a();
    }
    Iterator localIterator = c();
    StringBuffer localStringBuffer = new StringBuffer(a());
    localStringBuffer.append(' ').append(c);
    while (localIterator.hasNext())
    {
      localStringBuffer.append(((e)localIterator.next()).a());
      if (localIterator.hasNext()) {
        localStringBuffer.append(e);
      }
    }
    localStringBuffer.append(d);
    return localStringBuffer.toString();
  }
}

/* Location:
 * Qualified Name:     org.c.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */