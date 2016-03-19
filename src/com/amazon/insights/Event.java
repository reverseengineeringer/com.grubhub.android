package com.amazon.insights;

import java.util.Map;

public abstract interface Event
{
  public abstract void addAttribute(String paramString1, String paramString2);
  
  public abstract void addMetric(String paramString, Number paramNumber);
  
  public abstract Map<String, String> getAllAttributes();
  
  public abstract Map<String, Number> getAllMetrics();
  
  public abstract String getAttribute(String paramString);
  
  public abstract String getEventType();
  
  public abstract Number getMetric(String paramString);
  
  public abstract boolean hasAttribute(String paramString);
  
  public abstract boolean hasMetric(String paramString);
  
  public abstract Event withAttribute(String paramString1, String paramString2);
  
  public abstract Event withMetric(String paramString, Number paramNumber);
}

/* Location:
 * Qualified Name:     com.amazon.insights.Event
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */