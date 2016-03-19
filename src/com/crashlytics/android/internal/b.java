package com.crashlytics.android.internal;

import android.os.Handler;
import android.os.Looper;

public final class B
  extends b
{
  private final Handler b = new Handler(Looper.getMainLooper());
  
  public B(m paramm)
  {
    super(paramm);
  }
  
  public final void c(Object paramObject)
  {
    if ((paramObject instanceof t))
    {
      paramObject = (t)paramObject;
      if (Looper.myLooper() == Looper.getMainLooper())
      {
        super.c(paramObject);
        return;
      }
      b.post(new C(this, (t)paramObject));
      return;
    }
    if (((paramObject instanceof s)) || ((paramObject instanceof f)))
    {
      super.c(paramObject);
      return;
    }
    throw new IllegalArgumentException("Posted argument must implement Event interface");
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.internal.B
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */