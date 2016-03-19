package com.amazon.insights.impl;

import com.amazon.insights.ABTestClient;
import com.amazon.insights.AmazonInsights;
import com.amazon.insights.Event;
import com.amazon.insights.EventClient;
import com.amazon.insights.InsightsCallback;
import com.amazon.insights.InsightsHandler;
import com.amazon.insights.SessionClient;
import com.amazon.insights.UserProfile;
import com.amazon.insights.VariationSet;
import com.amazon.insights.error.InsightsError;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class DisabledAmazonInsights
  extends AmazonInsights
{
  public ABTestClient getABTestClient()
  {
    new ABTestClient()
    {
      public InsightsHandler<VariationSet> getVariations(String... paramAnonymousVarArgs)
      {
        new InsightsHandler()
        {
          public void setCallback(InsightsCallback<VariationSet> paramAnonymous2InsightsCallback)
          {
            paramAnonymous2InsightsCallback.onError(new InsightsError()
            {
              public String getMessage()
              {
                return "The Amazon Insights SDK was not initialized";
              }
            });
          }
        };
      }
    };
  }
  
  public EventClient getEventClient()
  {
    new EventClient()
    {
      public void addGlobalAttribute(String paramAnonymousString1, String paramAnonymousString2) {}
      
      public void addGlobalAttribute(String paramAnonymousString1, String paramAnonymousString2, String paramAnonymousString3) {}
      
      public void addGlobalMetric(String paramAnonymousString, Number paramAnonymousNumber) {}
      
      public void addGlobalMetric(String paramAnonymousString1, String paramAnonymousString2, Number paramAnonymousNumber) {}
      
      public Event createEvent(final String paramAnonymousString)
      {
        new Event()
        {
          public void addAttribute(String paramAnonymous2String1, String paramAnonymous2String2)
          {
            if (paramAnonymous2String1 == null) {
              return;
            }
            if (paramAnonymous2String2 != null)
            {
              val$attributes.put(paramAnonymous2String1, paramAnonymous2String2);
              return;
            }
            val$attributes.remove(paramAnonymous2String1);
          }
          
          public void addMetric(String paramAnonymous2String, Number paramAnonymous2Number)
          {
            if (paramAnonymous2String == null) {
              return;
            }
            if (paramAnonymous2Number != null)
            {
              val$metrics.put(paramAnonymous2String, paramAnonymous2Number);
              return;
            }
            val$metrics.remove(paramAnonymous2String);
          }
          
          public Map<String, String> getAllAttributes()
          {
            return Collections.unmodifiableMap(val$attributes);
          }
          
          public Map<String, Number> getAllMetrics()
          {
            return Collections.unmodifiableMap(val$metrics);
          }
          
          public String getAttribute(String paramAnonymous2String)
          {
            if (paramAnonymous2String == null) {
              return null;
            }
            return (String)val$attributes.get(paramAnonymous2String);
          }
          
          public String getEventType()
          {
            return paramAnonymousString;
          }
          
          public Number getMetric(String paramAnonymous2String)
          {
            if (paramAnonymous2String == null) {
              return null;
            }
            return (Number)val$metrics.get(paramAnonymous2String);
          }
          
          public boolean hasAttribute(String paramAnonymous2String)
          {
            if (paramAnonymous2String == null) {
              return false;
            }
            return val$attributes.containsKey(paramAnonymous2String);
          }
          
          public boolean hasMetric(String paramAnonymous2String)
          {
            if (paramAnonymous2String == null) {
              return false;
            }
            return val$metrics.containsKey(paramAnonymous2String);
          }
          
          public Event withAttribute(String paramAnonymous2String1, String paramAnonymous2String2)
          {
            addAttribute(paramAnonymous2String1, paramAnonymous2String2);
            return this;
          }
          
          public Event withMetric(String paramAnonymous2String, Number paramAnonymous2Number)
          {
            addMetric(paramAnonymous2String, paramAnonymous2Number);
            return this;
          }
        };
      }
      
      public void recordEvent(Event paramAnonymousEvent) {}
      
      public void removeGlobalAttribute(String paramAnonymousString) {}
      
      public void removeGlobalAttribute(String paramAnonymousString1, String paramAnonymousString2) {}
      
      public void removeGlobalMetric(String paramAnonymousString) {}
      
      public void removeGlobalMetric(String paramAnonymousString1, String paramAnonymousString2) {}
      
      public void submitEvents() {}
    };
  }
  
  public SessionClient getSessionClient()
  {
    new SessionClient()
    {
      public void pauseSession() {}
      
      public void resumeSession() {}
    };
  }
  
  public UserProfile getUserProfile()
  {
    new UserProfile()
    {
      Map<String, Object> userProfile = new ConcurrentHashMap();
      
      public UserProfile addDimensionAsNumber(String paramAnonymousString, Number paramAnonymousNumber)
      {
        userProfile.put(paramAnonymousString, paramAnonymousNumber);
        return this;
      }
      
      public UserProfile addDimensionAsString(String paramAnonymousString1, String paramAnonymousString2)
      {
        userProfile.put(paramAnonymousString1, paramAnonymousString2);
        return this;
      }
      
      public Map<String, Object> getDimensions()
      {
        return userProfile;
      }
    };
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.impl.DisabledAmazonInsights
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */