package org.keyczar;

import java.util.concurrent.ConcurrentLinkedQueue;
import org.keyczar.interfaces.Stream;

class StreamQueue<T extends Stream>
  extends ConcurrentLinkedQueue<T>
{
  private static final long serialVersionUID = 4914617278167817144L;
}

/* Location:
 * Qualified Name:     org.keyczar.StreamQueue
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */