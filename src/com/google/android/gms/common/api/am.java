package com.google.android.gms.common.api;

import android.os.Looper;
import com.google.android.gms.common.internal.aq;

public final class am<L>
{
  private final am<L>.an a;
  private volatile L b;
  
  am(Looper paramLooper, L paramL)
  {
    a = new an(this, paramLooper);
    b = aq.a(paramL, "Listener must not be null");
  }
  
  public void a()
  {
    b = null;
  }
  
  void a(ao<? super L> paramao)
  {
    Object localObject = b;
    if (localObject == null)
    {
      paramao.a();
      return;
    }
    try
    {
      paramao.a(localObject);
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      paramao.a();
      throw localRuntimeException;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.am
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */