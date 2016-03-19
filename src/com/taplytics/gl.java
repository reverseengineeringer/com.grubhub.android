package com.taplytics;

import java.util.concurrent.Executor;

class gl
  implements Executor
{
  public void execute(Runnable paramRunnable)
  {
    paramRunnable.run();
  }
}

/* Location:
 * Qualified Name:     com.taplytics.gl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */