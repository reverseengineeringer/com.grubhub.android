package com.amazon.insights.core.log;

import com.amazon.insights.core.log.appender.DeveloperLogCatAppender;
import com.amazon.insights.core.log.appender.LogAppender;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class Logger
{
  public static final String TAG = "AmazonInsightsSDK";
  private static Map<Class<?>, LogAppender> appenders;
  private static Logger.LogLevel globalLevel;
  private static boolean initialized;
  private static Map<Class<?>, Logger> loggers;
  private Logger.LogLevel classLevel = null;
  private Class<?> cls = null;
  private String tag = "AmazonInsightsSDK";
  
  static
  {
    if (!Logger.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      globalLevel = Logger.LogLevel.WARN;
      appenders = new ConcurrentHashMap();
      loggers = new ConcurrentHashMap();
      initialized = false;
      return;
    }
  }
  
  public Logger(String paramString, Class<?> paramClass)
  {
    assert (paramClass != null);
    cls = paramClass;
    tag = paramString;
  }
  
  public static void attachAppender(LogAppender paramLogAppender)
  {
    if (paramLogAppender == null) {}
    while (appenders.containsKey(paramLogAppender.getClass())) {
      return;
    }
    appenders.put(paramLogAppender.getClass(), paramLogAppender);
  }
  
  public static void attachLogAppender(LogAppender paramLogAppender)
  {
    attachAppender(paramLogAppender);
  }
  
  public static void detachAppender(LogAppender paramLogAppender)
  {
    if (paramLogAppender == null) {}
    while (!appenders.containsKey(paramLogAppender.getClass())) {
      return;
    }
    appenders.remove(paramLogAppender.getClass());
  }
  
  public static void detachLogAppender(LogAppender paramLogAppender)
  {
    detachAppender(paramLogAppender);
  }
  
  public static Collection<LogAppender> getAppenders()
  {
    return appenders.values();
  }
  
  /* Error */
  static Logger getClassLogger(Class<?> paramClass)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: aload_0
    //   4: astore_1
    //   5: aload_0
    //   6: ifnonnull +6 -> 12
    //   9: ldc 2
    //   11: astore_1
    //   12: getstatic 51	com/amazon/insights/core/log/Logger:loggers	Ljava/util/Map;
    //   15: aload_1
    //   16: invokeinterface 79 2 0
    //   21: ifeq +21 -> 42
    //   24: getstatic 51	com/amazon/insights/core/log/Logger:loggers	Ljava/util/Map;
    //   27: aload_1
    //   28: invokeinterface 105 2 0
    //   33: checkcast 2	com/amazon/insights/core/log/Logger
    //   36: astore_0
    //   37: ldc 2
    //   39: monitorexit
    //   40: aload_0
    //   41: areturn
    //   42: new 2	com/amazon/insights/core/log/Logger
    //   45: dup
    //   46: ldc 12
    //   48: aload_1
    //   49: invokespecial 107	com/amazon/insights/core/log/Logger:<init>	(Ljava/lang/String;Ljava/lang/Class;)V
    //   52: astore_0
    //   53: getstatic 51	com/amazon/insights/core/log/Logger:loggers	Ljava/util/Map;
    //   56: aload_1
    //   57: aload_0
    //   58: invokeinterface 83 3 0
    //   63: pop
    //   64: goto -27 -> 37
    //   67: astore_0
    //   68: ldc 2
    //   70: monitorexit
    //   71: aload_0
    //   72: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	73	0	paramClass	Class<?>
    //   4	53	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   12	37	67	finally
    //   42	64	67	finally
  }
  
  public static Logger.LogLevel getGlobalLevel()
  {
    return globalLevel;
  }
  
  public static Collection<LogAppender> getLogAppenders()
  {
    return getAppenders();
  }
  
  public static Logger getLogger(Class<?> paramClass)
  {
    return getClassLogger(paramClass);
  }
  
  public static void setGlobalLevel(Logger.LogLevel paramLogLevel)
  {
    try
    {
      globalLevel = paramLogLevel;
      return;
    }
    finally
    {
      paramLogLevel = finally;
      throw paramLogLevel;
    }
  }
  
  public static void tryInitialize()
  {
    try
    {
      if (!initialized) {
        tryInitialize(new LogInitializer()
        {
          public void tryInitialize()
          {
            Logger.setGlobalLevel(Logger.LogLevel.WARN);
            Logger.attachAppender(new DeveloperLogCatAppender());
          }
        });
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public static void tryInitialize(LogInitializer paramLogInitializer)
  {
    try
    {
      if ((!initialized) && (paramLogInitializer != null))
      {
        paramLogInitializer.tryInitialize();
        initialized = true;
      }
      return;
    }
    finally {}
  }
  
  public void d(String paramString)
  {
    if (isLoggingEnabled(Logger.LogLevel.DEBUG))
    {
      Iterator localIterator = getLogAppenders().iterator();
      while (localIterator.hasNext())
      {
        LogAppender localLogAppender = (LogAppender)localIterator.next();
        localLogAppender.d(getTag(), localLogAppender.decorateMessage(cls, paramString));
      }
    }
  }
  
  public void d(String paramString, Throwable paramThrowable)
  {
    if (isLoggingEnabled(Logger.LogLevel.DEBUG))
    {
      Iterator localIterator = getLogAppenders().iterator();
      while (localIterator.hasNext())
      {
        LogAppender localLogAppender = (LogAppender)localIterator.next();
        localLogAppender.d(getTag(), localLogAppender.decorateMessage(cls, paramString), paramThrowable);
      }
    }
  }
  
  public void devd(String paramString)
  {
    Iterator localIterator = getLogAppenders().iterator();
    while (localIterator.hasNext())
    {
      LogAppender localLogAppender = (LogAppender)localIterator.next();
      localLogAppender.devd(getTag(), localLogAppender.decorateMessage(cls, paramString));
    }
  }
  
  public void devd(String paramString, Throwable paramThrowable)
  {
    Iterator localIterator = getLogAppenders().iterator();
    while (localIterator.hasNext())
    {
      LogAppender localLogAppender = (LogAppender)localIterator.next();
      localLogAppender.devd(getTag(), localLogAppender.decorateMessage(cls, paramString), paramThrowable);
    }
  }
  
  public void deve(String paramString)
  {
    Iterator localIterator = getLogAppenders().iterator();
    while (localIterator.hasNext())
    {
      LogAppender localLogAppender = (LogAppender)localIterator.next();
      localLogAppender.deve(tag, localLogAppender.decorateMessage(cls, paramString));
    }
  }
  
  public void deve(String paramString, Throwable paramThrowable)
  {
    Iterator localIterator = getLogAppenders().iterator();
    while (localIterator.hasNext())
    {
      LogAppender localLogAppender = (LogAppender)localIterator.next();
      localLogAppender.deve(tag, localLogAppender.decorateMessage(cls, paramString), paramThrowable);
    }
  }
  
  public void devi(String paramString)
  {
    Iterator localIterator = getLogAppenders().iterator();
    while (localIterator.hasNext())
    {
      LogAppender localLogAppender = (LogAppender)localIterator.next();
      localLogAppender.devi(getTag(), localLogAppender.decorateMessage(cls, paramString));
    }
  }
  
  public void devi(String paramString, Throwable paramThrowable)
  {
    Iterator localIterator = getLogAppenders().iterator();
    while (localIterator.hasNext())
    {
      LogAppender localLogAppender = (LogAppender)localIterator.next();
      localLogAppender.devi(getTag(), localLogAppender.decorateMessage(cls, paramString), paramThrowable);
    }
  }
  
  public void devv(String paramString)
  {
    Iterator localIterator = getLogAppenders().iterator();
    while (localIterator.hasNext())
    {
      LogAppender localLogAppender = (LogAppender)localIterator.next();
      localLogAppender.devv(getTag(), localLogAppender.decorateMessage(cls, paramString));
    }
  }
  
  public void devv(String paramString, Throwable paramThrowable)
  {
    Iterator localIterator = getLogAppenders().iterator();
    while (localIterator.hasNext())
    {
      LogAppender localLogAppender = (LogAppender)localIterator.next();
      localLogAppender.devv(getTag(), localLogAppender.decorateMessage(cls, paramString), paramThrowable);
    }
  }
  
  public void devw(String paramString)
  {
    Iterator localIterator = getLogAppenders().iterator();
    while (localIterator.hasNext())
    {
      LogAppender localLogAppender = (LogAppender)localIterator.next();
      localLogAppender.devw(getTag(), localLogAppender.decorateMessage(cls, paramString));
    }
  }
  
  public void devw(String paramString, Throwable paramThrowable)
  {
    Iterator localIterator = getLogAppenders().iterator();
    while (localIterator.hasNext())
    {
      LogAppender localLogAppender = (LogAppender)localIterator.next();
      localLogAppender.devw(getTag(), localLogAppender.decorateMessage(cls, paramString), paramThrowable);
    }
  }
  
  public void devw(Throwable paramThrowable)
  {
    Iterator localIterator = getLogAppenders().iterator();
    while (localIterator.hasNext()) {
      ((LogAppender)localIterator.next()).devw(getTag(), paramThrowable);
    }
  }
  
  public void e(String paramString)
  {
    if (isLoggingEnabled(Logger.LogLevel.ERROR))
    {
      Iterator localIterator = getLogAppenders().iterator();
      while (localIterator.hasNext())
      {
        LogAppender localLogAppender = (LogAppender)localIterator.next();
        localLogAppender.e(tag, localLogAppender.decorateMessage(cls, paramString));
      }
    }
  }
  
  public void e(String paramString, Throwable paramThrowable)
  {
    if (isLoggingEnabled(Logger.LogLevel.ERROR))
    {
      Iterator localIterator = getLogAppenders().iterator();
      while (localIterator.hasNext())
      {
        LogAppender localLogAppender = (LogAppender)localIterator.next();
        localLogAppender.e(tag, localLogAppender.decorateMessage(cls, paramString), paramThrowable);
      }
    }
  }
  
  Class<?> getLogClass()
  {
    return cls;
  }
  
  /* Error */
  Logger.LogLevel getLogLevel()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: getstatic 212	com/amazon/insights/core/log/Logger$LogLevel:OFF	Lcom/amazon/insights/core/log/Logger$LogLevel;
    //   5: astore_1
    //   6: aload_0
    //   7: getfield 58	com/amazon/insights/core/log/Logger:classLevel	Lcom/amazon/insights/core/log/Logger$LogLevel;
    //   10: ifnull +12 -> 22
    //   13: aload_0
    //   14: getfield 58	com/amazon/insights/core/log/Logger:classLevel	Lcom/amazon/insights/core/log/Logger$LogLevel;
    //   17: astore_1
    //   18: aload_0
    //   19: monitorexit
    //   20: aload_1
    //   21: areturn
    //   22: invokestatic 214	com/amazon/insights/core/log/Logger:getGlobalLevel	()Lcom/amazon/insights/core/log/Logger$LogLevel;
    //   25: astore_1
    //   26: goto -8 -> 18
    //   29: astore_1
    //   30: aload_0
    //   31: monitorexit
    //   32: aload_1
    //   33: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	34	0	this	Logger
    //   5	21	1	localLogLevel	Logger.LogLevel
    //   29	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	18	29	finally
    //   22	26	29	finally
  }
  
  String getTag()
  {
    return tag;
  }
  
  public void i(String paramString)
  {
    if (isLoggingEnabled(Logger.LogLevel.INFO))
    {
      Iterator localIterator = getLogAppenders().iterator();
      while (localIterator.hasNext())
      {
        LogAppender localLogAppender = (LogAppender)localIterator.next();
        localLogAppender.i(getTag(), localLogAppender.decorateMessage(cls, paramString));
      }
    }
  }
  
  public void i(String paramString, Throwable paramThrowable)
  {
    if (isLoggingEnabled(Logger.LogLevel.INFO))
    {
      Iterator localIterator = getLogAppenders().iterator();
      while (localIterator.hasNext())
      {
        LogAppender localLogAppender = (LogAppender)localIterator.next();
        localLogAppender.i(getTag(), localLogAppender.decorateMessage(cls, paramString), paramThrowable);
      }
    }
  }
  
  public boolean isLoggingEnabled(Logger.LogLevel paramLogLevel)
  {
    boolean bool = false;
    try
    {
      int i = paramLogLevel.compareTo(getLogLevel());
      if (i >= 0) {
        bool = true;
      }
      return bool;
    }
    finally
    {
      paramLogLevel = finally;
      throw paramLogLevel;
    }
  }
  
  public void setLevel(Logger.LogLevel paramLogLevel)
  {
    try
    {
      classLevel = paramLogLevel;
      return;
    }
    finally
    {
      paramLogLevel = finally;
      throw paramLogLevel;
    }
  }
  
  public void v(String paramString)
  {
    if (isLoggingEnabled(Logger.LogLevel.VERBOSE))
    {
      Iterator localIterator = getLogAppenders().iterator();
      while (localIterator.hasNext())
      {
        LogAppender localLogAppender = (LogAppender)localIterator.next();
        localLogAppender.v(getTag(), localLogAppender.decorateMessage(cls, paramString));
      }
    }
  }
  
  public void v(String paramString, Throwable paramThrowable)
  {
    if (isLoggingEnabled(Logger.LogLevel.VERBOSE))
    {
      Iterator localIterator = getLogAppenders().iterator();
      while (localIterator.hasNext())
      {
        LogAppender localLogAppender = (LogAppender)localIterator.next();
        localLogAppender.v(getTag(), localLogAppender.decorateMessage(cls, paramString), paramThrowable);
      }
    }
  }
  
  public void w(String paramString)
  {
    if (isLoggingEnabled(Logger.LogLevel.WARN))
    {
      Iterator localIterator = getLogAppenders().iterator();
      while (localIterator.hasNext())
      {
        LogAppender localLogAppender = (LogAppender)localIterator.next();
        localLogAppender.w(getTag(), localLogAppender.decorateMessage(cls, paramString));
      }
    }
  }
  
  public void w(String paramString, Throwable paramThrowable)
  {
    if (isLoggingEnabled(Logger.LogLevel.WARN))
    {
      Iterator localIterator = getLogAppenders().iterator();
      while (localIterator.hasNext())
      {
        LogAppender localLogAppender = (LogAppender)localIterator.next();
        localLogAppender.w(getTag(), localLogAppender.decorateMessage(cls, paramString), paramThrowable);
      }
    }
  }
  
  public void w(Throwable paramThrowable)
  {
    if (isLoggingEnabled(Logger.LogLevel.WARN))
    {
      Iterator localIterator = getLogAppenders().iterator();
      while (localIterator.hasNext()) {
        ((LogAppender)localIterator.next()).w(getTag(), paramThrowable);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.core.log.Logger
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */