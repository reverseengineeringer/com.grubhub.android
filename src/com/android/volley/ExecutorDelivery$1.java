package com.android.volley;

import android.os.Handler;
import java.util.concurrent.Executor;

class ExecutorDelivery$1
  implements Executor
{
  ExecutorDelivery$1(ExecutorDelivery paramExecutorDelivery, Handler paramHandler) {}
  
  public void execute(Runnable paramRunnable)
  {
    val$handler.post(paramRunnable);
  }
}

/* Location:
 * Qualified Name:     com.android.volley.ExecutorDelivery.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */