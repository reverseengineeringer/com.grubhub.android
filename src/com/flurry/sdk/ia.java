package com.flurry.sdk;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor.DiscardPolicy;
import java.util.concurrent.TimeUnit;

public class ia<T extends jq>
{
  private static final String a = ia.class.getSimpleName();
  private final hs<Object, T> b = new hs();
  private final HashMap<T, Object> c = new HashMap();
  private final HashMap<T, Future<?>> d = new HashMap();
  private final ThreadPoolExecutor e;
  
  public ia(String paramString, int paramInt1, int paramInt2, long paramLong, TimeUnit paramTimeUnit, BlockingQueue<Runnable> paramBlockingQueue)
  {
    e = new ThreadPoolExecutor(paramInt1, paramInt2, paramLong, paramTimeUnit, paramBlockingQueue)
    {
      protected void afterExecute(Runnable arg1, final Throwable paramAnonymousThrowable)
      {
        super.afterExecute(???, paramAnonymousThrowable);
        paramAnonymousThrowable = ia.a(ia.this, ???);
        if (paramAnonymousThrowable == null) {
          return;
        }
        synchronized (ia.a(ia.this))
        {
          ia.a(ia.this).remove(paramAnonymousThrowable);
          ia.a(ia.this, paramAnonymousThrowable);
          new jp()
          {
            public void a()
            {
              paramAnonymousThrowable.l();
            }
          }.run();
          return;
        }
      }
      
      protected void beforeExecute(final Thread paramAnonymousThread, Runnable paramAnonymousRunnable)
      {
        super.beforeExecute(paramAnonymousThread, paramAnonymousRunnable);
        paramAnonymousThread = ia.a(ia.this, paramAnonymousRunnable);
        if (paramAnonymousThread == null) {
          return;
        }
        new jp()
        {
          public void a()
          {
            paramAnonymousThread.k();
          }
        }.run();
      }
      
      protected <V> RunnableFuture<V> newTaskFor(Runnable paramAnonymousRunnable, V arg2)
      {
        hz localhz = new hz(paramAnonymousRunnable, ???);
        synchronized (ia.a(ia.this))
        {
          ia.a(ia.this).put((jq)paramAnonymousRunnable, localhz);
          return localhz;
        }
      }
      
      protected <V> RunnableFuture<V> newTaskFor(Callable<V> paramAnonymousCallable)
      {
        throw new UnsupportedOperationException("Callable not supported");
      }
    };
    e.setRejectedExecutionHandler(new ThreadPoolExecutor.DiscardPolicy()
    {
      public void rejectedExecution(Runnable arg1, final ThreadPoolExecutor paramAnonymousThreadPoolExecutor)
      {
        super.rejectedExecution(???, paramAnonymousThreadPoolExecutor);
        paramAnonymousThreadPoolExecutor = ia.a(ia.this, ???);
        if (paramAnonymousThreadPoolExecutor == null) {
          return;
        }
        synchronized (ia.a(ia.this))
        {
          ia.a(ia.this).remove(paramAnonymousThreadPoolExecutor);
          ia.a(ia.this, paramAnonymousThreadPoolExecutor);
          new jp()
          {
            public void a()
            {
              paramAnonymousThreadPoolExecutor.m();
            }
          }.run();
          return;
        }
      }
    });
    paramString = new jg(paramString, 1);
    e.setThreadFactory(paramString);
  }
  
  private T a(Runnable paramRunnable)
  {
    if ((paramRunnable instanceof hz)) {
      return (jq)((hz)paramRunnable).a();
    }
    if ((paramRunnable instanceof jq)) {
      return (jq)paramRunnable;
    }
    ib.a(6, a, "Unknown runnable class: " + paramRunnable.getClass().getName());
    return null;
  }
  
  private void b(T paramT)
  {
    try
    {
      c(c.get(paramT), paramT);
      return;
    }
    finally
    {
      paramT = finally;
      throw paramT;
    }
  }
  
  private void b(Object paramObject, T paramT)
  {
    try
    {
      b.a(paramObject, paramT);
      c.put(paramT, paramObject);
      return;
    }
    finally
    {
      paramObject = finally;
      throw ((Throwable)paramObject);
    }
  }
  
  private void c(Object paramObject, T paramT)
  {
    try
    {
      b.b(paramObject, paramT);
      c.remove(paramT);
      return;
    }
    finally
    {
      paramObject = finally;
      throw ((Throwable)paramObject);
    }
  }
  
  /* Error */
  public void a(final T paramT)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: ifnonnull +6 -> 9
    //   6: aload_0
    //   7: monitorexit
    //   8: return
    //   9: aload_0
    //   10: getfield 56	com/flurry/sdk/ia:d	Ljava/util/HashMap;
    //   13: astore_2
    //   14: aload_2
    //   15: monitorenter
    //   16: aload_0
    //   17: getfield 56	com/flurry/sdk/ia:d	Ljava/util/HashMap;
    //   20: aload_1
    //   21: invokevirtual 144	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   24: checkcast 146	java/util/concurrent/Future
    //   27: astore_3
    //   28: aload_2
    //   29: monitorexit
    //   30: aload_0
    //   31: aload_1
    //   32: invokespecial 122	com/flurry/sdk/ia:b	(Lcom/flurry/sdk/jq;)V
    //   35: aload_3
    //   36: ifnull +11 -> 47
    //   39: aload_3
    //   40: iconst_1
    //   41: invokeinterface 150 2 0
    //   46: pop
    //   47: new 17	com/flurry/sdk/ia$3
    //   50: dup
    //   51: aload_0
    //   52: aload_1
    //   53: invokespecial 152	com/flurry/sdk/ia$3:<init>	(Lcom/flurry/sdk/ia;Lcom/flurry/sdk/jq;)V
    //   56: invokevirtual 155	com/flurry/sdk/ia$3:run	()V
    //   59: goto -53 -> 6
    //   62: astore_1
    //   63: aload_0
    //   64: monitorexit
    //   65: aload_1
    //   66: athrow
    //   67: astore_1
    //   68: aload_2
    //   69: monitorexit
    //   70: aload_1
    //   71: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	72	0	this	ia
    //   0	72	1	paramT	T
    //   27	13	3	localFuture	Future
    // Exception table:
    //   from	to	target	type
    //   9	16	62	finally
    //   30	35	62	finally
    //   39	47	62	finally
    //   47	59	62	finally
    //   70	72	62	finally
    //   16	30	67	finally
    //   68	70	67	finally
  }
  
  /* Error */
  public void a(Object paramObject)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: ifnonnull +6 -> 9
    //   6: aload_0
    //   7: monitorexit
    //   8: return
    //   9: new 158	java/util/HashSet
    //   12: dup
    //   13: invokespecial 159	java/util/HashSet:<init>	()V
    //   16: astore_2
    //   17: aload_2
    //   18: aload_0
    //   19: getfield 49	com/flurry/sdk/ia:b	Lcom/flurry/sdk/hs;
    //   22: aload_1
    //   23: invokevirtual 162	com/flurry/sdk/hs:a	(Ljava/lang/Object;)Ljava/util/List;
    //   26: invokeinterface 168 2 0
    //   31: pop
    //   32: aload_2
    //   33: invokeinterface 172 1 0
    //   38: astore_1
    //   39: aload_1
    //   40: invokeinterface 178 1 0
    //   45: ifeq -39 -> 6
    //   48: aload_0
    //   49: aload_1
    //   50: invokeinterface 182 1 0
    //   55: checkcast 92	com/flurry/sdk/jq
    //   58: invokevirtual 184	com/flurry/sdk/ia:a	(Lcom/flurry/sdk/jq;)V
    //   61: goto -22 -> 39
    //   64: astore_1
    //   65: aload_0
    //   66: monitorexit
    //   67: aload_1
    //   68: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	69	0	this	ia
    //   0	69	1	paramObject	Object
    //   16	17	2	localHashSet	HashSet
    // Exception table:
    //   from	to	target	type
    //   9	39	64	finally
    //   39	61	64	finally
  }
  
  /* Error */
  public void a(Object paramObject, T paramT)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: ifnull +7 -> 10
    //   6: aload_2
    //   7: ifnonnull +6 -> 13
    //   10: aload_0
    //   11: monitorexit
    //   12: return
    //   13: aload_0
    //   14: aload_1
    //   15: aload_2
    //   16: invokespecial 186	com/flurry/sdk/ia:b	(Ljava/lang/Object;Lcom/flurry/sdk/jq;)V
    //   19: aload_0
    //   20: getfield 61	com/flurry/sdk/ia:e	Ljava/util/concurrent/ThreadPoolExecutor;
    //   23: aload_2
    //   24: invokevirtual 190	java/util/concurrent/ThreadPoolExecutor:submit	(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    //   27: pop
    //   28: goto -18 -> 10
    //   31: astore_1
    //   32: aload_0
    //   33: monitorexit
    //   34: aload_1
    //   35: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	36	0	this	ia
    //   0	36	1	paramObject	Object
    //   0	36	2	paramT	T
    // Exception table:
    //   from	to	target	type
    //   13	28	31	finally
  }
  
  /* Error */
  public long b(Object paramObject)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: ifnonnull +9 -> 12
    //   6: lconst_0
    //   7: lstore_3
    //   8: aload_0
    //   9: monitorexit
    //   10: lload_3
    //   11: lreturn
    //   12: aload_0
    //   13: getfield 49	com/flurry/sdk/ia:b	Lcom/flurry/sdk/hs;
    //   16: aload_1
    //   17: invokevirtual 162	com/flurry/sdk/hs:a	(Ljava/lang/Object;)Ljava/util/List;
    //   20: invokeinterface 197 1 0
    //   25: istore_2
    //   26: iload_2
    //   27: i2l
    //   28: lstore_3
    //   29: goto -21 -> 8
    //   32: astore_1
    //   33: aload_0
    //   34: monitorexit
    //   35: aload_1
    //   36: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	37	0	this	ia
    //   0	37	1	paramObject	Object
    //   25	2	2	i	int
    //   7	22	3	l	long
    // Exception table:
    //   from	to	target	type
    //   12	26	32	finally
  }
  
  public void c()
  {
    try
    {
      Object localObject1 = new HashSet();
      ((Set)localObject1).addAll(b.c());
      localObject1 = ((Set)localObject1).iterator();
      while (((Iterator)localObject1).hasNext()) {
        a(((Iterator)localObject1).next());
      }
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ia
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */