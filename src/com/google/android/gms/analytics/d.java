package com.google.android.gms.analytics;

import android.content.Context;
import com.google.android.gms.analytics.internal.h;
import java.util.ArrayList;

public class d
  implements Thread.UncaughtExceptionHandler
{
  private final Thread.UncaughtExceptionHandler a;
  private final Tracker b;
  private final Context c;
  private c d;
  private e e;
  
  public d(Tracker paramTracker, Thread.UncaughtExceptionHandler paramUncaughtExceptionHandler, Context paramContext)
  {
    if (paramTracker == null) {
      throw new NullPointerException("tracker cannot be null");
    }
    if (paramContext == null) {
      throw new NullPointerException("context cannot be null");
    }
    a = paramUncaughtExceptionHandler;
    b = paramTracker;
    d = new m(paramContext, new ArrayList());
    c = paramContext.getApplicationContext();
    paramContext = new StringBuilder().append("ExceptionReporter created, original handler is ");
    if (paramUncaughtExceptionHandler == null) {}
    for (paramTracker = "null";; paramTracker = paramUncaughtExceptionHandler.getClass().getName())
    {
      h.b(paramTracker);
      return;
    }
  }
  
  e a()
  {
    if (e == null) {
      e = e.a(c);
    }
    return e;
  }
  
  Thread.UncaughtExceptionHandler b()
  {
    return a;
  }
  
  public void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    Object localObject = "UncaughtException";
    if (d != null) {
      if (paramThread == null) {
        break label115;
      }
    }
    label115:
    for (localObject = paramThread.getName();; localObject = null)
    {
      localObject = d.a((String)localObject, paramThrowable);
      h.b("Reporting uncaught exception: " + (String)localObject);
      b.send(new i().a((String)localObject).a(true).a());
      localObject = a();
      ((e)localObject).i();
      ((e)localObject).j();
      if (a != null)
      {
        h.b("Passing exception to the original handler");
        a.uncaughtException(paramThread, paramThrowable);
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */