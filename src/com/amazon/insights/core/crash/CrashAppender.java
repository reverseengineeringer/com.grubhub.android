package com.amazon.insights.core.crash;

public abstract interface CrashAppender
{
  public abstract void report(CrashReporter paramCrashReporter, String paramString);
  
  public abstract void report(CrashReporter paramCrashReporter, String paramString, Throwable paramThrowable);
}

/* Location:
 * Qualified Name:     com.amazon.insights.core.crash.CrashAppender
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */