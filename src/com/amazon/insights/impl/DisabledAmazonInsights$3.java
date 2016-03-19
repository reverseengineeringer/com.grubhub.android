package com.amazon.insights.impl;

import com.amazon.insights.UserProfile;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

class DisabledAmazonInsights$3
  implements UserProfile
{
  Map<String, Object> userProfile = new ConcurrentHashMap();
  
  DisabledAmazonInsights$3(DisabledAmazonInsights paramDisabledAmazonInsights) {}
  
  public UserProfile addDimensionAsNumber(String paramString, Number paramNumber)
  {
    userProfile.put(paramString, paramNumber);
    return this;
  }
  
  public UserProfile addDimensionAsString(String paramString1, String paramString2)
  {
    userProfile.put(paramString1, paramString2);
    return this;
  }
  
  public Map<String, Object> getDimensions()
  {
    return userProfile;
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.impl.DisabledAmazonInsights.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */