package com.amazon.insights.core.crash;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class CrashReporter
{
  private Map<Class<?>, CrashAppender> appenders = new ConcurrentHashMap();
  private final Class<?> cls;
  
  public CrashReporter(Class<?> paramClass)
  {
    cls = paramClass;
  }
  
  public void attachAppender(CrashAppender paramCrashAppender)
  {
    if (paramCrashAppender == null) {}
    while (appenders.containsKey(paramCrashAppender.getClass())) {
      return;
    }
    appenders.put(paramCrashAppender.getClass(), paramCrashAppender);
  }
  
  public void detachAppender(CrashAppender paramCrashAppender)
  {
    if (paramCrashAppender == null) {}
    while (!appenders.containsKey(paramCrashAppender.getClass())) {
      return;
    }
    appenders.remove(paramCrashAppender.getClass());
  }
  
  public Collection<CrashAppender> getAppenders()
  {
    return appenders.values();
  }
  
  public Class<?> getReportingClass()
  {
    return cls;
  }
  
  public void report(String paramString)
  {
    Iterator localIterator = getAppenders().iterator();
    while (localIterator.hasNext()) {
      ((CrashAppender)localIterator.next()).report(this, paramString);
    }
  }
  
  public void report(String paramString, Throwable paramThrowable)
  {
    Iterator localIterator = getAppenders().iterator();
    while (localIterator.hasNext()) {
      ((CrashAppender)localIterator.next()).report(this, paramString, paramThrowable);
    }
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.core.crash.CrashReporter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */