package com.paypal.android.sdk;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadPoolExecutor;

public abstract class dn
  extends dk
{
  private static final String c = dn.class.getSimpleName();
  protected final ea a;
  protected final int b;
  private ThreadPoolExecutor d;
  
  public dn(int paramInt, ea paramea)
  {
    b = paramInt;
    a = paramea;
    d = ((ThreadPoolExecutor)Executors.newCachedThreadPool());
  }
  
  protected abstract String a();
  
  protected abstract int b();
  
  public final boolean b(dz paramdz)
  {
    d.submit(new do(this, paramdz));
    return true;
  }
  
  protected abstract boolean c(dz paramdz);
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.dn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */