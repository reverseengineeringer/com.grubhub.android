package com.google.android.gms.tagmanager;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;

class h$2
  implements l
{
  h$2(h paramh) {}
  
  public void a(List<i> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      i locali = (i)paramList.next();
      h.a(a, a.b(a, b));
    }
    h.a(a).countDown();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.h.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */