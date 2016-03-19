package com.facebook.a;

import com.facebook.internal.al;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

final class a$3
  implements Runnable
{
  public void run()
  {
    HashSet localHashSet = new HashSet();
    synchronized (a.b())
    {
      Iterator localIterator = a.c().keySet().iterator();
      if (localIterator.hasNext()) {
        localHashSet.add(((b)localIterator.next()).b());
      }
    }
    ??? = ((Set)localObject2).iterator();
    while (((Iterator)???).hasNext()) {
      al.a((String)((Iterator)???).next(), true);
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.a.a.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */