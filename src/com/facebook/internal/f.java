package com.facebook.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.atomic.AtomicBoolean;

final class f
  implements ServiceConnection
{
  private AtomicBoolean a = new AtomicBoolean(false);
  private final BlockingQueue<IBinder> b = new LinkedBlockingDeque();
  
  public IBinder a()
    throws InterruptedException
  {
    if (a.compareAndSet(true, true)) {
      throw new IllegalStateException("Binder already consumed");
    }
    return (IBinder)b.take();
  }
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    try
    {
      b.put(paramIBinder);
      return;
    }
    catch (InterruptedException paramComponentName) {}
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName) {}
}

/* Location:
 * Qualified Name:     com.facebook.internal.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */