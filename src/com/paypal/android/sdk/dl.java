package com.paypal.android.sdk;

import android.os.Build.VERSION;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class dl
{
  private static final int a;
  private static int b;
  private static int c = (a << 1) + 1;
  
  static
  {
    new dl();
    int i = Runtime.getRuntime().availableProcessors();
    a = i;
    b = i + 1;
  }
  
  private dl()
  {
    new dm((byte)0);
  }
  
  public static ThreadPoolExecutor a()
  {
    ThreadPoolExecutor localThreadPoolExecutor = new ThreadPoolExecutor(b, c, 1L, TimeUnit.SECONDS, new LinkedBlockingQueue());
    if (Build.VERSION.SDK_INT >= 9) {
      localThreadPoolExecutor.allowCoreThreadTimeOut(true);
    }
    return localThreadPoolExecutor;
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.dl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */