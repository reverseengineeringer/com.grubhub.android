package com.flurry.sdk;

import java.lang.ref.WeakReference;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

public class hz<V>
  extends FutureTask<V>
{
  private final WeakReference<Callable<V>> a = new WeakReference(null);
  private final WeakReference<Runnable> b;
  
  public hz(Runnable paramRunnable, V paramV)
  {
    super(paramRunnable, paramV);
    b = new WeakReference(paramRunnable);
  }
  
  public Runnable a()
  {
    return (Runnable)b.get();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.hz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */