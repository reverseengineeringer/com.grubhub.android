package com.crashlytics.android.internal;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;

public abstract class aA<V>
  extends aE<V>
{
  private final Closeable a;
  private final boolean b;
  
  protected aA(Closeable paramCloseable, boolean paramBoolean)
  {
    a = paramCloseable;
    b = paramBoolean;
  }
  
  protected final void b()
    throws IOException
  {
    if ((a instanceof Flushable)) {
      ((Flushable)a).flush();
    }
    if (b) {}
    try
    {
      a.close();
      return;
    }
    catch (IOException localIOException) {}
    a.close();
    return;
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.internal.aA
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */