package com.amazon.insights.event;

import com.amazon.insights.Event;
import com.amazon.insights.core.log.Logger;
import com.amazon.insights.core.util.StringUtil;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

public class EventConstraintDecorator
  implements Event
{
  private static final int MAX_EVENT_ATTRIBUTE_METRIC_KEY_LENGTH = 50;
  private static final int MAX_EVENT_ATTRIBUTE_VALUE_LENGTH = 1000;
  private static final int MAX_NUM_OF_METRICS_AND_ATTRIBUTES = 20;
  private static Logger logger = Logger.getLogger(EventConstraintDecorator.class);
  private final AtomicInteger currentNumOfAttributesAndMetrics = new AtomicInteger(0);
  private final Event decoratedEvent;
  private final int maxAttributesAndMetrics;
  
  public EventConstraintDecorator(Event paramEvent, int paramInt)
  {
    decoratedEvent = paramEvent;
    maxAttributesAndMetrics = paramInt;
  }
  
  public static EventConstraintDecorator newInstance(Event paramEvent)
  {
    return new EventConstraintDecorator(paramEvent, 20);
  }
  
  private static EventConstraintDecorator.Pair<String, String> processAttribute(String paramString1, String paramString2)
  {
    String str = StringUtil.clipString(paramString1, 50, false);
    if (str.length() < paramString1.length()) {
      logger.devw("The attribute key has been trimmed to a length of 50 characters");
    }
    paramString1 = StringUtil.clipString(paramString2, 1000, false);
    if (paramString1.length() < paramString2.length()) {
      logger.devw("The attribute value has been trimmed to a length of 1000 characters");
    }
    return new EventConstraintDecorator.Pair(str, paramString1);
  }
  
  private static EventConstraintDecorator.Pair<String, Number> processMetric(String paramString, Number paramNumber)
  {
    String str = StringUtil.clipString(paramString, 50, false);
    if (str.length() < paramString.length()) {
      logger.devw("The metric key has been trimmed to a length of 50 characters");
    }
    return new EventConstraintDecorator.Pair(str, paramNumber);
  }
  
  public void addAttribute(String paramString1, String paramString2)
  {
    if ((paramString1 != null) && (paramString2 != null)) {}
    try
    {
      if ((!decoratedEvent.hasAttribute(paramString1)) && (currentNumOfAttributesAndMetrics.get() < maxAttributesAndMetrics))
      {
        paramString1 = processAttribute(paramString1, paramString2);
        decoratedEvent.addAttribute((String)EventConstraintDecorator.Pair.access$000(paramString1), (String)EventConstraintDecorator.Pair.access$100(paramString1));
        currentNumOfAttributesAndMetrics.incrementAndGet();
      }
      return;
    }
    catch (Exception paramString1)
    {
      for (;;)
      {
        logger.e("addAttribute", paramString1);
      }
    }
    finally {}
  }
  
  public void addMetric(String paramString, Number paramNumber)
  {
    if ((paramString != null) && (paramNumber != null)) {}
    try
    {
      if ((!decoratedEvent.hasMetric(paramString)) && (currentNumOfAttributesAndMetrics.get() < maxAttributesAndMetrics))
      {
        paramString = processMetric(paramString, paramNumber);
        decoratedEvent.addMetric((String)EventConstraintDecorator.Pair.access$000(paramString), (Number)EventConstraintDecorator.Pair.access$100(paramString));
        currentNumOfAttributesAndMetrics.incrementAndGet();
      }
      return;
    }
    catch (Exception paramString)
    {
      for (;;)
      {
        logger.e("addMetric", paramString);
      }
    }
    finally {}
  }
  
  public Map<String, String> getAllAttributes()
  {
    return decoratedEvent.getAllAttributes();
  }
  
  public Map<String, Number> getAllMetrics()
  {
    return decoratedEvent.getAllMetrics();
  }
  
  public String getAttribute(String paramString)
  {
    return decoratedEvent.getAttribute(paramString);
  }
  
  public String getEventType()
  {
    return decoratedEvent.getEventType();
  }
  
  public Number getMetric(String paramString)
  {
    return decoratedEvent.getMetric(paramString);
  }
  
  public boolean hasAttribute(String paramString)
  {
    try
    {
      boolean bool = decoratedEvent.hasAttribute(paramString);
      return bool;
    }
    catch (Exception paramString)
    {
      logger.e("hasAttribute", paramString);
    }
    return false;
  }
  
  public boolean hasMetric(String paramString)
  {
    try
    {
      boolean bool = decoratedEvent.hasMetric(paramString);
      return bool;
    }
    catch (Exception paramString)
    {
      logger.e("hasMetric", paramString);
    }
    return false;
  }
  
  public Event withAttribute(String paramString1, String paramString2)
  {
    try
    {
      addAttribute(paramString1, paramString2);
      return decoratedEvent;
    }
    catch (Exception paramString1)
    {
      for (;;)
      {
        logger.e("withAttribute", paramString1);
      }
    }
  }
  
  public Event withMetric(String paramString, Number paramNumber)
  {
    try
    {
      addMetric(paramString, paramNumber);
      return decoratedEvent;
    }
    catch (Exception paramString)
    {
      for (;;)
      {
        logger.e("withMetric", paramString);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.event.EventConstraintDecorator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */