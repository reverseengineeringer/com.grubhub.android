package com.amazon.insights.profile;

import com.amazon.insights.UserProfile;
import com.amazon.insights.core.util.StringUtil;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class DefaultUserProfile
  implements UserProfile, Comparable<DefaultUserProfile>
{
  private final Map<String, Object> dimensions = new ConcurrentHashMap();
  
  public static UserProfile newInstance()
  {
    return new DefaultUserProfile();
  }
  
  public UserProfile addDimensionAsBoolean(String paramString, boolean paramBoolean)
  {
    if (!StringUtil.isBlank(paramString)) {
      dimensions.put(paramString, Boolean.valueOf(paramBoolean));
    }
    return this;
  }
  
  public UserProfile addDimensionAsNumber(String paramString, Number paramNumber)
  {
    if (!StringUtil.isBlank(paramString)) {
      dimensions.put(paramString, paramNumber);
    }
    return this;
  }
  
  public UserProfile addDimensionAsString(String paramString1, String paramString2)
  {
    if (!StringUtil.isBlank(paramString1)) {
      dimensions.put(paramString1, paramString2);
    }
    return this;
  }
  
  public int compareTo(DefaultUserProfile paramDefaultUserProfile)
  {
    if (paramDefaultUserProfile == null) {}
    int i;
    int j;
    do
    {
      do
      {
        return -1;
        if (paramDefaultUserProfile == this) {
          return 0;
        }
        paramDefaultUserProfile = dimensions;
        if (dimensions == paramDefaultUserProfile) {
          break;
        }
      } while (dimensions == null);
      if (paramDefaultUserProfile == null) {
        return 1;
      }
      if (dimensions.equals(paramDefaultUserProfile)) {
        break;
      }
      i = dimensions.hashCode();
      j = paramDefaultUserProfile.hashCode();
    } while (i < j);
    if (i > j) {
      return 1;
    }
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof UserProfile)) {
        break;
      }
    } while (compareTo((DefaultUserProfile)paramObject) == 0);
    return false;
    return false;
  }
  
  public Map<String, Object> getDimensions()
  {
    return Collections.unmodifiableMap(dimensions);
  }
  
  public int hashCode()
  {
    if (dimensions == null) {}
    for (int i = 0;; i = dimensions.hashCode()) {
      return i + 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.profile.DefaultUserProfile
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */