package com.flurry.sdk;

import java.util.HashMap;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor.DiscardPolicy;

class ia$2
  extends ThreadPoolExecutor.DiscardPolicy
{
  ia$2(ia paramia) {}
  
  public void rejectedExecution(Runnable arg1, final ThreadPoolExecutor paramThreadPoolExecutor)
  {
    super.rejectedExecution(???, paramThreadPoolExecutor);
    paramThreadPoolExecutor = ia.a(a, ???);
    if (paramThreadPoolExecutor == null) {
      return;
    }
    synchronized (ia.a(a))
    {
      ia.a(a).remove(paramThreadPoolExecutor);
      ia.a(a, paramThreadPoolExecutor);
      new jp()
      {
        public void a()
        {
          paramThreadPoolExecutor.m();
        }
      }.run();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ia.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */