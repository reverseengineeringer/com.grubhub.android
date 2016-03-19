package com.grubhub.AppBaseLibrary.android.dataServices.net;

import java.util.concurrent.Callable;

abstract class j<T>
  implements Callable<T>
{
  protected String e;
  
  private j(i parami) {}
  
  public void a(String paramString)
  {
    e = paramString;
  }
  
  public abstract T call();
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */