package com.amazon.insights.core;

import com.amazon.insights.InsightsCallback;
import com.amazon.insights.InsightsHandler;
import com.amazon.insights.error.InsightsError;

public class DefaultInsightsHandler<T>
  implements InsightsHandler<T>
{
  private InsightsCallback<T> callback = null;
  private InsightsError error = null;
  private T response = null;
  
  /* Error */
  public void onComplete(T paramT)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_1
    //   4: putfield 23	com/amazon/insights/core/DefaultInsightsHandler:response	Ljava/lang/Object;
    //   7: aload_0
    //   8: getfield 21	com/amazon/insights/core/DefaultInsightsHandler:callback	Lcom/amazon/insights/InsightsCallback;
    //   11: astore_1
    //   12: aload_1
    //   13: ifnonnull +6 -> 19
    //   16: aload_0
    //   17: monitorexit
    //   18: return
    //   19: aload_0
    //   20: getfield 23	com/amazon/insights/core/DefaultInsightsHandler:response	Ljava/lang/Object;
    //   23: ifnull -7 -> 16
    //   26: aload_0
    //   27: getfield 21	com/amazon/insights/core/DefaultInsightsHandler:callback	Lcom/amazon/insights/InsightsCallback;
    //   30: aload_0
    //   31: getfield 23	com/amazon/insights/core/DefaultInsightsHandler:response	Ljava/lang/Object;
    //   34: invokevirtual 32	com/amazon/insights/InsightsCallback:onComplete	(Ljava/lang/Object;)V
    //   37: goto -21 -> 16
    //   40: astore_1
    //   41: aload_0
    //   42: monitorexit
    //   43: aload_1
    //   44: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	45	0	this	DefaultInsightsHandler
    //   0	45	1	paramT	T
    // Exception table:
    //   from	to	target	type
    //   2	12	40	finally
    //   19	37	40	finally
  }
  
  /* Error */
  public void onError(InsightsError paramInsightsError)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_1
    //   4: putfield 25	com/amazon/insights/core/DefaultInsightsHandler:error	Lcom/amazon/insights/error/InsightsError;
    //   7: aload_0
    //   8: getfield 21	com/amazon/insights/core/DefaultInsightsHandler:callback	Lcom/amazon/insights/InsightsCallback;
    //   11: astore_1
    //   12: aload_1
    //   13: ifnonnull +6 -> 19
    //   16: aload_0
    //   17: monitorexit
    //   18: return
    //   19: aload_0
    //   20: getfield 25	com/amazon/insights/core/DefaultInsightsHandler:error	Lcom/amazon/insights/error/InsightsError;
    //   23: ifnull -7 -> 16
    //   26: aload_0
    //   27: getfield 21	com/amazon/insights/core/DefaultInsightsHandler:callback	Lcom/amazon/insights/InsightsCallback;
    //   30: aload_0
    //   31: getfield 25	com/amazon/insights/core/DefaultInsightsHandler:error	Lcom/amazon/insights/error/InsightsError;
    //   34: invokevirtual 38	com/amazon/insights/InsightsCallback:onError	(Lcom/amazon/insights/error/InsightsError;)V
    //   37: goto -21 -> 16
    //   40: astore_1
    //   41: aload_0
    //   42: monitorexit
    //   43: aload_1
    //   44: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	45	0	this	DefaultInsightsHandler
    //   0	45	1	paramInsightsError	InsightsError
    // Exception table:
    //   from	to	target	type
    //   2	12	40	finally
    //   19	37	40	finally
  }
  
  /* Error */
  public void setCallback(InsightsCallback<T> paramInsightsCallback)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 21	com/amazon/insights/core/DefaultInsightsHandler:callback	Lcom/amazon/insights/InsightsCallback;
    //   6: ifnull +32 -> 38
    //   9: iconst_1
    //   10: istore_2
    //   11: aload_0
    //   12: aload_1
    //   13: putfield 21	com/amazon/insights/core/DefaultInsightsHandler:callback	Lcom/amazon/insights/InsightsCallback;
    //   16: iload_2
    //   17: ifne +18 -> 35
    //   20: aload_0
    //   21: getfield 23	com/amazon/insights/core/DefaultInsightsHandler:response	Ljava/lang/Object;
    //   24: ifnull +19 -> 43
    //   27: aload_0
    //   28: aload_0
    //   29: getfield 23	com/amazon/insights/core/DefaultInsightsHandler:response	Ljava/lang/Object;
    //   32: invokevirtual 41	com/amazon/insights/core/DefaultInsightsHandler:onComplete	(Ljava/lang/Object;)V
    //   35: aload_0
    //   36: monitorexit
    //   37: return
    //   38: iconst_0
    //   39: istore_2
    //   40: goto -29 -> 11
    //   43: aload_0
    //   44: getfield 25	com/amazon/insights/core/DefaultInsightsHandler:error	Lcom/amazon/insights/error/InsightsError;
    //   47: ifnull -12 -> 35
    //   50: aload_0
    //   51: aload_0
    //   52: getfield 25	com/amazon/insights/core/DefaultInsightsHandler:error	Lcom/amazon/insights/error/InsightsError;
    //   55: invokevirtual 42	com/amazon/insights/core/DefaultInsightsHandler:onError	(Lcom/amazon/insights/error/InsightsError;)V
    //   58: goto -23 -> 35
    //   61: astore_1
    //   62: aload_0
    //   63: monitorexit
    //   64: aload_1
    //   65: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	66	0	this	DefaultInsightsHandler
    //   0	66	1	paramInsightsCallback	InsightsCallback<T>
    //   10	30	2	i	int
    // Exception table:
    //   from	to	target	type
    //   2	9	61	finally
    //   11	16	61	finally
    //   20	35	61	finally
    //   43	58	61	finally
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.core.DefaultInsightsHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */