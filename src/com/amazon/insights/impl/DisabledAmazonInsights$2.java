package com.amazon.insights.impl;

import com.amazon.insights.Event;
import com.amazon.insights.EventClient;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

class DisabledAmazonInsights$2
  implements EventClient
{
  DisabledAmazonInsights$2(DisabledAmazonInsights paramDisabledAmazonInsights) {}
  
  public void addGlobalAttribute(String paramString1, String paramString2) {}
  
  public void addGlobalAttribute(String paramString1, String paramString2, String paramString3) {}
  
  public void addGlobalMetric(String paramString, Number paramNumber) {}
  
  public void addGlobalMetric(String paramString1, String paramString2, Number paramNumber) {}
  
  public Event createEvent(final String paramString)
  {
    new Event()
    {
      public void addAttribute(String paramAnonymousString1, String paramAnonymousString2)
      {
        if (paramAnonymousString1 == null) {
          return;
        }
        if (paramAnonymousString2 != null)
        {
          val$attributes.put(paramAnonymousString1, paramAnonymousString2);
          return;
        }
        val$attributes.remove(paramAnonymousString1);
      }
      
      public void addMetric(String paramAnonymousString, Number paramAnonymousNumber)
      {
        if (paramAnonymousString == null) {
          return;
        }
        if (paramAnonymousNumber != null)
        {
          val$metrics.put(paramAnonymousString, paramAnonymousNumber);
          return;
        }
        val$metrics.remove(paramAnonymousString);
      }
      
      public Map<String, String> getAllAttributes()
      {
        return Collections.unmodifiableMap(val$attributes);
      }
      
      public Map<String, Number> getAllMetrics()
      {
        return Collections.unmodifiableMap(val$metrics);
      }
      
      public String getAttribute(String paramAnonymousString)
      {
        if (paramAnonymousString == null) {
          return null;
        }
        return (String)val$attributes.get(paramAnonymousString);
      }
      
      public String getEventType()
      {
        return paramString;
      }
      
      public Number getMetric(String paramAnonymousString)
      {
        if (paramAnonymousString == null) {
          return null;
        }
        return (Number)val$metrics.get(paramAnonymousString);
      }
      
      public boolean hasAttribute(String paramAnonymousString)
      {
        if (paramAnonymousString == null) {
          return false;
        }
        return val$attributes.containsKey(paramAnonymousString);
      }
      
      public boolean hasMetric(String paramAnonymousString)
      {
        if (paramAnonymousString == null) {
          return false;
        }
        return val$metrics.containsKey(paramAnonymousString);
      }
      
      public Event withAttribute(String paramAnonymousString1, String paramAnonymousString2)
      {
        addAttribute(paramAnonymousString1, paramAnonymousString2);
        return this;
      }
      
      public Event withMetric(String paramAnonymousString, Number paramAnonymousNumber)
      {
        addMetric(paramAnonymousString, paramAnonymousNumber);
        return this;
      }
    };
  }
  
  public void recordEvent(Event paramEvent) {}
  
  public void removeGlobalAttribute(String paramString) {}
  
  public void removeGlobalAttribute(String paramString1, String paramString2) {}
  
  public void removeGlobalMetric(String paramString) {}
  
  public void removeGlobalMetric(String paramString1, String paramString2) {}
  
  public void submitEvents() {}
}

/* Location:
 * Qualified Name:     com.amazon.insights.impl.DisabledAmazonInsights.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */