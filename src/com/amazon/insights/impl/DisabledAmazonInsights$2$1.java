package com.amazon.insights.impl;

import com.amazon.insights.Event;
import java.util.Collections;
import java.util.Map;

class DisabledAmazonInsights$2$1
  implements Event
{
  DisabledAmazonInsights$2$1(DisabledAmazonInsights.2 param2, Map paramMap1, Map paramMap2, String paramString) {}
  
  public void addAttribute(String paramString1, String paramString2)
  {
    if (paramString1 == null) {
      return;
    }
    if (paramString2 != null)
    {
      val$attributes.put(paramString1, paramString2);
      return;
    }
    val$attributes.remove(paramString1);
  }
  
  public void addMetric(String paramString, Number paramNumber)
  {
    if (paramString == null) {
      return;
    }
    if (paramNumber != null)
    {
      val$metrics.put(paramString, paramNumber);
      return;
    }
    val$metrics.remove(paramString);
  }
  
  public Map<String, String> getAllAttributes()
  {
    return Collections.unmodifiableMap(val$attributes);
  }
  
  public Map<String, Number> getAllMetrics()
  {
    return Collections.unmodifiableMap(val$metrics);
  }
  
  public String getAttribute(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    return (String)val$attributes.get(paramString);
  }
  
  public String getEventType()
  {
    return val$theEventName;
  }
  
  public Number getMetric(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    return (Number)val$metrics.get(paramString);
  }
  
  public boolean hasAttribute(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return val$attributes.containsKey(paramString);
  }
  
  public boolean hasMetric(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return val$metrics.containsKey(paramString);
  }
  
  public Event withAttribute(String paramString1, String paramString2)
  {
    addAttribute(paramString1, paramString2);
    return this;
  }
  
  public Event withMetric(String paramString, Number paramNumber)
  {
    addMetric(paramString, paramNumber);
    return this;
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.impl.DisabledAmazonInsights.2.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */