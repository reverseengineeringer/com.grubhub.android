package com.facebook;

import android.util.Pair;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class GraphRequest$3
  implements Runnable
{
  GraphRequest$3(ArrayList paramArrayList, x paramx) {}
  
  public void run()
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      Pair localPair = (Pair)localIterator.next();
      ((r)first).a((aa)second);
    }
    localIterator = b.e().iterator();
    while (localIterator.hasNext()) {
      ((y)localIterator.next()).a(b);
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.GraphRequest.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */