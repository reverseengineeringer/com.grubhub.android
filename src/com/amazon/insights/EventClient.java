package com.amazon.insights;

public abstract interface EventClient
{
  public abstract void addGlobalAttribute(String paramString1, String paramString2);
  
  public abstract void addGlobalAttribute(String paramString1, String paramString2, String paramString3);
  
  public abstract void addGlobalMetric(String paramString, Number paramNumber);
  
  public abstract void addGlobalMetric(String paramString1, String paramString2, Number paramNumber);
  
  public abstract Event createEvent(String paramString);
  
  public abstract void recordEvent(Event paramEvent);
  
  public abstract void removeGlobalAttribute(String paramString);
  
  public abstract void removeGlobalAttribute(String paramString1, String paramString2);
  
  public abstract void removeGlobalMetric(String paramString);
  
  public abstract void removeGlobalMetric(String paramString1, String paramString2);
  
  public abstract void submitEvents();
}

/* Location:
 * Qualified Name:     com.amazon.insights.EventClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */