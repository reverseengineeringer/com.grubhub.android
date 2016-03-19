package com.google.android.gms.c;

import java.util.Iterator;
import java.util.LinkedList;

class b$1
  implements k<T>
{
  b$1(b paramb) {}
  
  public void a(T paramT)
  {
    b.a(a, paramT);
    paramT = b.a(a).iterator();
    while (paramT.hasNext()) {
      ((c)paramT.next()).a(b.b(a));
    }
    b.a(a).clear();
    b.a(a, null);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.c.b.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */