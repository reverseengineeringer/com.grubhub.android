package com.android.volley;

import android.os.Handler;
import android.os.Looper;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

public class RequestQueue
{
  private static final int DEFAULT_NETWORK_THREAD_POOL_SIZE = 4;
  private final Cache mCache;
  private CacheDispatcher mCacheDispatcher;
  private final PriorityBlockingQueue<Request<?>> mCacheQueue = new PriorityBlockingQueue();
  private final Set<Request<?>> mCurrentRequests = new HashSet();
  private final ResponseDelivery mDelivery;
  private NetworkDispatcher[] mDispatchers;
  private final Network mNetwork;
  private final PriorityBlockingQueue<Request<?>> mNetworkQueue = new PriorityBlockingQueue();
  private AtomicInteger mSequenceGenerator = new AtomicInteger();
  private final Map<String, Queue<Request<?>>> mWaitingRequests = new HashMap();
  
  public RequestQueue(Cache paramCache, Network paramNetwork)
  {
    this(paramCache, paramNetwork, 4);
  }
  
  public RequestQueue(Cache paramCache, Network paramNetwork, int paramInt)
  {
    this(paramCache, paramNetwork, paramInt, new ExecutorDelivery(new Handler(Looper.getMainLooper())));
  }
  
  public RequestQueue(Cache paramCache, Network paramNetwork, int paramInt, ResponseDelivery paramResponseDelivery)
  {
    mCache = paramCache;
    mNetwork = paramNetwork;
    mDispatchers = new NetworkDispatcher[paramInt];
    mDelivery = paramResponseDelivery;
  }
  
  public <T> Request<T> add(Request<T> paramRequest)
  {
    paramRequest.setRequestQueue(this);
    synchronized (mCurrentRequests)
    {
      mCurrentRequests.add(paramRequest);
      paramRequest.setSequence(getSequenceNumber());
      paramRequest.addMarker("add-to-queue");
      if (!paramRequest.shouldCache())
      {
        mNetworkQueue.add(paramRequest);
        return paramRequest;
      }
    }
    for (;;)
    {
      String str;
      synchronized (mWaitingRequests)
      {
        str = paramRequest.getCacheKey();
        if (mWaitingRequests.containsKey(str))
        {
          Queue localQueue = (Queue)mWaitingRequests.get(str);
          ??? = localQueue;
          if (localQueue == null) {
            ??? = new LinkedList();
          }
          ((Queue)???).add(paramRequest);
          mWaitingRequests.put(str, ???);
          if (VolleyLog.DEBUG) {
            VolleyLog.v("Request for cacheKey=%s is in flight, putting on hold.", new Object[] { str });
          }
          return paramRequest;
        }
      }
      mWaitingRequests.put(str, null);
      mCacheQueue.add(paramRequest);
    }
  }
  
  public void cancelAll(RequestQueue.RequestFilter paramRequestFilter)
  {
    synchronized (mCurrentRequests)
    {
      Iterator localIterator = mCurrentRequests.iterator();
      while (localIterator.hasNext())
      {
        Request localRequest = (Request)localIterator.next();
        if (paramRequestFilter.apply(localRequest)) {
          localRequest.cancel();
        }
      }
    }
  }
  
  public void cancelAll(final Object paramObject)
  {
    if (paramObject == null) {
      throw new IllegalArgumentException("Cannot cancelAll with a null tag");
    }
    cancelAll(new RequestQueue.RequestFilter()
    {
      public boolean apply(Request<?> paramAnonymousRequest)
      {
        return paramAnonymousRequest.getTag() == paramObject;
      }
    });
  }
  
  void finish(Request<?> paramRequest)
  {
    synchronized (mCurrentRequests)
    {
      mCurrentRequests.remove(paramRequest);
      if (!paramRequest.shouldCache()) {}
    }
    synchronized (mWaitingRequests)
    {
      paramRequest = paramRequest.getCacheKey();
      Queue localQueue = (Queue)mWaitingRequests.remove(paramRequest);
      if (localQueue != null)
      {
        if (VolleyLog.DEBUG) {
          VolleyLog.v("Releasing %d waiting requests for cacheKey=%s.", new Object[] { Integer.valueOf(localQueue.size()), paramRequest });
        }
        mCacheQueue.addAll(localQueue);
      }
      return;
      paramRequest = finally;
      throw paramRequest;
    }
  }
  
  public Cache getCache()
  {
    return mCache;
  }
  
  public int getSequenceNumber()
  {
    return mSequenceGenerator.incrementAndGet();
  }
  
  public void start()
  {
    stop();
    mCacheDispatcher = new CacheDispatcher(mCacheQueue, mNetworkQueue, mCache, mDelivery);
    mCacheDispatcher.start();
    int i = 0;
    while (i < mDispatchers.length)
    {
      NetworkDispatcher localNetworkDispatcher = new NetworkDispatcher(mNetworkQueue, mNetwork, mCache, mDelivery);
      mDispatchers[i] = localNetworkDispatcher;
      localNetworkDispatcher.start();
      i += 1;
    }
  }
  
  public void stop()
  {
    if (mCacheDispatcher != null) {
      mCacheDispatcher.quit();
    }
    int i = 0;
    while (i < mDispatchers.length)
    {
      if (mDispatchers[i] != null) {
        mDispatchers[i].quit();
      }
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.android.volley.RequestQueue
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */