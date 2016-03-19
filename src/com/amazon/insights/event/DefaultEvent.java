package com.amazon.insights.event;

import com.amazon.insights.Event;
import com.amazon.insights.InsightsCredentials;
import com.amazon.insights.core.InsightsContext;
import com.amazon.insights.core.idresolver.Id;
import com.amazon.insights.core.log.Logger;
import com.amazon.insights.core.system.AppDetails;
import com.amazon.insights.core.system.DeviceDetails;
import com.amazon.insights.core.system.System;
import com.amazon.insights.core.util.DateUtil;
import com.amazon.insights.core.util.JSONBuilder;
import com.amazon.insights.core.util.JSONSerializable;
import com.amazon.insights.core.util.SDKInfo;
import java.math.BigDecimal;
import java.util.Collections;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

public final class DefaultEvent
  implements JSONSerializable, InternalEvent
{
  private static Logger logger = Logger.getLogger(DefaultEvent.class);
  private final AppDetails appDetails;
  private final String applicationKey;
  private final Map<String, String> attributes = new ConcurrentHashMap();
  private final DeviceDetails deviceDetails;
  private final String eventType;
  private final Map<String, Number> metrics = new ConcurrentHashMap();
  private final String sdkName;
  private final String sdkVersion;
  private final Long timestamp;
  private final Id uniqueId;
  
  DefaultEvent(String paramString1, Map<String, String> paramMap, Map<String, Number> paramMap1, String paramString2, SDKInfo paramSDKInfo, Long paramLong, Id paramId, AppDetails paramAppDetails, DeviceDetails paramDeviceDetails)
  {
    applicationKey = paramString2;
    sdkName = paramSDKInfo.getName();
    sdkVersion = paramSDKInfo.getVersion();
    timestamp = paramLong;
    uniqueId = paramId;
    eventType = paramString1;
    appDetails = paramAppDetails;
    deviceDetails = paramDeviceDetails;
    if (paramMap != null)
    {
      paramString1 = paramMap.entrySet().iterator();
      while (paramString1.hasNext())
      {
        paramMap = (Map.Entry)paramString1.next();
        addAttribute((String)paramMap.getKey(), (String)paramMap.getValue());
      }
    }
    if (paramMap1 != null)
    {
      paramString1 = paramMap1.entrySet().iterator();
      while (paramString1.hasNext())
      {
        paramMap = (Map.Entry)paramString1.next();
        addMetric((String)paramMap.getKey(), (Number)paramMap.getValue());
      }
    }
  }
  
  public static DefaultEvent createFromEvent(InsightsContext paramInsightsContext, Long paramLong, Event paramEvent)
  {
    return new DefaultEvent(paramEvent.getEventType(), paramEvent.getAllAttributes(), paramEvent.getAllMetrics(), paramInsightsContext.getCredentials().getApplicationKey(), paramInsightsContext.getSDKInfo(), paramLong, paramInsightsContext.getUniqueId(), paramInsightsContext.getSystem().getAppDetails(), paramInsightsContext.getSystem().getDeviceDetails());
  }
  
  public static DefaultEvent newInstance(InsightsContext paramInsightsContext, Long paramLong, String paramString)
  {
    return new DefaultEvent(paramString, null, null, paramInsightsContext.getCredentials().getApplicationKey(), paramInsightsContext.getSDKInfo(), paramLong, paramInsightsContext.getUniqueId(), paramInsightsContext.getSystem().getAppDetails(), paramInsightsContext.getSystem().getDeviceDetails());
  }
  
  public void addAttribute(String paramString1, String paramString2)
  {
    if (paramString1 == null) {
      return;
    }
    if (paramString2 != null)
    {
      attributes.put(paramString1, paramString2);
      return;
    }
    attributes.remove(paramString1);
  }
  
  public void addMetric(String paramString, Number paramNumber)
  {
    if (paramString == null) {
      return;
    }
    if (paramNumber != null)
    {
      metrics.put(paramString, paramNumber);
      return;
    }
    metrics.remove(paramString);
  }
  
  public Map<String, String> getAllAttributes()
  {
    return Collections.unmodifiableMap(attributes);
  }
  
  public Map<String, Number> getAllMetrics()
  {
    return Collections.unmodifiableMap(metrics);
  }
  
  public String getApplicationKey()
  {
    return applicationKey;
  }
  
  public String getAttribute(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    return (String)attributes.get(paramString);
  }
  
  public Long getEventTimestamp()
  {
    return timestamp;
  }
  
  public String getEventType()
  {
    return eventType;
  }
  
  public Number getMetric(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    return (Number)metrics.get(paramString);
  }
  
  public String getSdkName()
  {
    return sdkName;
  }
  
  public String getSdkVersion()
  {
    return sdkVersion;
  }
  
  public Id getUniqueId()
  {
    return uniqueId;
  }
  
  public boolean hasAttribute(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return attributes.containsKey(paramString);
  }
  
  public boolean hasMetric(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return metrics.containsKey(paramString);
  }
  
  public JSONObject toJSONObject()
  {
    Object localObject1 = deviceDetails.locale();
    if (localObject1 != null) {}
    JSONBuilder localJSONBuilder;
    for (localObject1 = ((Locale)localObject1).toString();; localObject1 = "UNKNOWN")
    {
      localJSONBuilder = new JSONBuilder(this);
      localJSONBuilder.withAttribute("application_key", getApplicationKey());
      localJSONBuilder.withAttribute("event_type", getEventType());
      localJSONBuilder.withAttribute("unique_id", getUniqueId().getValue());
      localJSONBuilder.withAttribute("timestamp", DateUtil.isoDateFromMillis(getEventTimestamp().longValue()));
      localJSONBuilder.withAttribute("platform", deviceDetails.platform());
      localJSONBuilder.withAttribute("platform_version", deviceDetails.platformVersion());
      localJSONBuilder.withAttribute("make", deviceDetails.manufacturer());
      localJSONBuilder.withAttribute("model", deviceDetails.model());
      localJSONBuilder.withAttribute("locale", localObject1);
      localJSONBuilder.withAttribute("sdk_version", sdkVersion);
      localJSONBuilder.withAttribute("sdk_name", sdkName);
      localJSONBuilder.withAttribute("app_version_name", appDetails.versionName());
      localJSONBuilder.withAttribute("app_version_code", appDetails.versionCode());
      localJSONBuilder.withAttribute("app_package_name", appDetails.packageName());
      localObject1 = new JSONObject();
      localObject2 = getAllAttributes().entrySet().iterator();
      while (((Iterator)localObject2).hasNext())
      {
        Map.Entry localEntry1 = (Map.Entry)((Iterator)localObject2).next();
        try
        {
          ((JSONObject)localObject1).put((String)localEntry1.getKey(), localEntry1.getValue());
        }
        catch (JSONException localJSONException1) {}
      }
    }
    Object localObject2 = new JSONObject();
    Iterator localIterator = getAllMetrics().entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry2 = (Map.Entry)localIterator.next();
      if (((Number)localEntry2.getValue()).getClass() != null) {
        try
        {
          ((JSONObject)localObject2).put((String)localEntry2.getKey(), new BigDecimal(((Number)localEntry2.getValue()).toString()));
        }
        catch (JSONException localJSONException2)
        {
          logger.w("error serializing metric. key:'" + (String)localEntry2.getKey() + "', value: " + ((Number)localEntry2.getValue()).toString(), localJSONException2);
        }
      }
    }
    if (((JSONObject)localObject1).length() > 0) {
      localJSONBuilder.withAttribute("attributes", localObject1);
    }
    if (((JSONObject)localObject2).length() > 0) {
      localJSONBuilder.withAttribute("metrics", localObject2);
    }
    return localJSONBuilder.toJSONObject();
  }
  
  public String toString()
  {
    JSONObject localJSONObject = toJSONObject();
    try
    {
      String str = localJSONObject.toString(4);
      return str;
    }
    catch (JSONException localJSONException) {}
    return localJSONObject.toString();
  }
  
  public DefaultEvent withAttribute(String paramString1, String paramString2)
  {
    addAttribute(paramString1, paramString2);
    return this;
  }
  
  public DefaultEvent withMetric(String paramString, Number paramNumber)
  {
    addMetric(paramString, paramNumber);
    return this;
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.event.DefaultEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */