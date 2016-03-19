package com.flurry.sdk;

final class jt$a
  implements Thread.UncaughtExceptionHandler
{
  private jt$a(jt paramjt) {}
  
  public void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    jt.a(a, paramThread, paramThrowable);
    jt.b(a, paramThread, paramThrowable);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.jt.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */