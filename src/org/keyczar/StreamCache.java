package org.keyczar;

import java.util.concurrent.ConcurrentHashMap;
import org.keyczar.interfaces.Stream;

class StreamCache<T extends Stream>
{
  private final ConcurrentHashMap<KeyczarKey, StreamQueue<T>> cacheMap = new ConcurrentHashMap();
  
  T get(KeyczarKey paramKeyczarKey)
  {
    return (Stream)getQueue(paramKeyczarKey).poll();
  }
  
  StreamQueue<T> getQueue(KeyczarKey paramKeyczarKey)
  {
    StreamQueue localStreamQueue1 = (StreamQueue)cacheMap.get(paramKeyczarKey);
    if (localStreamQueue1 != null) {
      paramKeyczarKey = localStreamQueue1;
    }
    StreamQueue localStreamQueue2;
    do
    {
      return paramKeyczarKey;
      localStreamQueue2 = new StreamQueue();
      localStreamQueue1 = (StreamQueue)cacheMap.putIfAbsent(paramKeyczarKey, localStreamQueue2);
      paramKeyczarKey = localStreamQueue1;
    } while (localStreamQueue1 != null);
    return localStreamQueue2;
  }
  
  void put(KeyczarKey paramKeyczarKey, T paramT)
  {
    getQueue(paramKeyczarKey).add(paramT);
  }
}

/* Location:
 * Qualified Name:     org.keyczar.StreamCache
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */