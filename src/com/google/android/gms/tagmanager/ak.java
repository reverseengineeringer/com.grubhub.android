package com.google.android.gms.tagmanager;

import android.content.Context;
import java.io.ByteArrayOutputStream;
import java.io.PrintStream;
import java.util.concurrent.LinkedBlockingQueue;

class ak
  extends Thread
  implements aj
{
  private static ak d;
  private final LinkedBlockingQueue<Runnable> a = new LinkedBlockingQueue();
  private volatile boolean b = false;
  private volatile boolean c = false;
  private volatile al e;
  private final Context f;
  
  private ak(Context paramContext)
  {
    super("GAThread");
    if (paramContext != null) {}
    for (f = paramContext.getApplicationContext();; f = paramContext)
    {
      start();
      return;
    }
  }
  
  static ak a(Context paramContext)
  {
    if (d == null) {
      d = new ak(paramContext);
    }
    return d;
  }
  
  private String a(Throwable paramThrowable)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    PrintStream localPrintStream = new PrintStream(localByteArrayOutputStream);
    paramThrowable.printStackTrace(localPrintStream);
    localPrintStream.flush();
    return new String(localByteArrayOutputStream.toByteArray());
  }
  
  public void a(Runnable paramRunnable)
  {
    a.add(paramRunnable);
  }
  
  public void a(String paramString)
  {
    a(paramString, System.currentTimeMillis());
  }
  
  void a(String paramString, final long paramLong)
  {
    a(new Runnable()
    {
      public void run()
      {
        if (ak.a(ak.this) == null)
        {
          cx localcx = cx.c();
          localcx.a(ak.b(ak.this), jdField_this);
          ak.a(ak.this, localcx.d());
        }
        ak.a(ak.this).a(paramLong, c);
      }
    });
  }
  
  public void run()
  {
    while (!c) {
      try
      {
        Runnable localRunnable = (Runnable)a.take();
        if (!b) {
          localRunnable.run();
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        ba.c(localInterruptedException.toString());
      }
      catch (Throwable localThrowable)
      {
        ba.a("Error on Google TagManager Thread: " + a(localThrowable));
        ba.a("Google TagManager is shutting down.");
        b = true;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.ak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */