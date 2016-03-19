package com.amazon.insights.core.crash.ers;

import com.amazon.insights.core.InsightsContext;
import com.amazon.insights.core.crash.CrashAppender;
import com.amazon.insights.core.crash.CrashReporter;
import com.amazon.insights.core.crash.ExceptionUtils;
import com.amazon.insights.core.util.StringUtil;
import com.amazon.insights.event.DefaultEvent;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;

public class ERSCrashAppender
  implements CrashAppender
{
  private static final String EVENT_SCHEMA_VERSION = "v1.2";
  private static final String ErrorEventName = "_sdkError";
  private static final int MAX_ATTRIBUTE_LENGTH = 1000;
  private static final int MAX_STACK_TRACE_DEPTH = 10;
  private final InsightsContext context;
  private final ERSClient ersClient;
  
  public ERSCrashAppender(InsightsContext paramInsightsContext, ERSClient paramERSClient)
  {
    context = paramInsightsContext;
    ersClient = paramERSClient;
  }
  
  private static String clipStringForERS(String paramString)
  {
    return StringUtil.clipString(paramString, 1000, false);
  }
  
  private DefaultEvent createEvent(CrashReporter paramCrashReporter, String paramString, Throwable paramThrowable)
  {
    DefaultEvent localDefaultEvent = DefaultEvent.newInstance(context, Long.valueOf(System.currentTimeMillis()), "_sdkError");
    localDefaultEvent.addAttribute("ver", "v1.2");
    localDefaultEvent.addAttribute("message", clipStringForERS(paramString));
    localDefaultEvent.addAttribute("reporting_class", clipStringForERS(paramCrashReporter.getReportingClass().getName()));
    if (paramThrowable != null)
    {
      paramCrashReporter = ExceptionUtils.getThrowableList(paramThrowable);
      localDefaultEvent.addAttribute("exception_type", clipStringForERS(((Throwable)paramCrashReporter.get(paramCrashReporter.size() - 1)).getClass().getName()));
      int j = Math.min(paramCrashReporter.size(), 10);
      paramCrashReporter = paramCrashReporter.listIterator(paramCrashReporter.size());
      int i = 0;
      while ((paramCrashReporter.hasPrevious()) && (i < j))
      {
        paramString = (Throwable)paramCrashReporter.previous();
        localDefaultEvent.addAttribute("stack_trace" + i, clipStringForERS(ExceptionUtils.getStackTraceString(paramString)));
        i += 1;
      }
    }
    return localDefaultEvent;
  }
  
  public static ERSCrashAppender newInstance(InsightsContext paramInsightsContext, ERSClient paramERSClient)
  {
    return new ERSCrashAppender(paramInsightsContext, paramERSClient);
  }
  
  public void report(CrashReporter paramCrashReporter, String paramString)
  {
    report(paramCrashReporter, paramString, null);
  }
  
  public void report(CrashReporter paramCrashReporter, String paramString, Throwable paramThrowable)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(createEvent(paramCrashReporter, paramString, paramThrowable));
    ersClient.submitEvents(localArrayList);
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.core.crash.ers.ERSCrashAppender
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */