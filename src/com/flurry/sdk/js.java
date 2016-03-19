package com.flurry.sdk;

import android.content.Context;

public class js
  implements ie, jf.a, Thread.UncaughtExceptionHandler
{
  private static final String a = js.class.getSimpleName();
  private boolean b;
  
  public void a(Context paramContext)
  {
    paramContext = je.a();
    b = ((Boolean)paramContext.a("CaptureUncaughtExceptions")).booleanValue();
    paramContext.a("CaptureUncaughtExceptions", this);
    ib.a(4, a, "initSettings, CrashReportingEnabled = " + b);
    jt.a().a(this);
  }
  
  public void a(String paramString, Object paramObject)
  {
    if (paramString.equals("CaptureUncaughtExceptions"))
    {
      b = ((Boolean)paramObject).booleanValue();
      ib.a(4, a, "onSettingUpdate, CrashReportingEnabled = " + b);
      return;
    }
    ib.a(6, a, "onSettingUpdate internal error!");
  }
  
  public void b()
  {
    jt.b();
    je.a().b("CaptureUncaughtExceptions", this);
  }
  
  public void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    paramThrowable.printStackTrace();
    if (b)
    {
      paramThread = "";
      StackTraceElement[] arrayOfStackTraceElement = paramThrowable.getStackTrace();
      if ((arrayOfStackTraceElement == null) || (arrayOfStackTraceElement.length <= 0)) {
        break label103;
      }
      paramThread = new StringBuilder();
      if (paramThrowable.getMessage() != null) {
        paramThread.append(" (" + paramThrowable.getMessage() + ")\n");
      }
      paramThread = paramThread.toString();
    }
    for (;;)
    {
      fu.a().a("uncaught", paramThread, paramThrowable);
      jb.a().g();
      hf.a().d();
      return;
      label103:
      if (paramThrowable.getMessage() != null) {
        paramThread = paramThrowable.getMessage();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.js
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */