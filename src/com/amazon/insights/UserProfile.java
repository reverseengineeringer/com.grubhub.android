package com.amazon.insights;

import java.util.Map;

public abstract interface UserProfile
{
  public abstract UserProfile addDimensionAsNumber(String paramString, Number paramNumber);
  
  public abstract UserProfile addDimensionAsString(String paramString1, String paramString2);
  
  public abstract Map<String, Object> getDimensions();
}

/* Location:
 * Qualified Name:     com.amazon.insights.UserProfile
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */