package com.amazon.insights.core.log;

import com.amazon.insights.core.log.appender.DeveloperLogCatAppender;

final class Logger$1
  implements LogInitializer
{
  public void tryInitialize()
  {
    Logger.setGlobalLevel(Logger.LogLevel.WARN);
    Logger.attachAppender(new DeveloperLogCatAppender());
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.core.log.Logger.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */