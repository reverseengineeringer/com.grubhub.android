package com.amazon.insights.event;

import com.amazon.insights.Event;
import com.amazon.insights.InsightsCredentials;
import com.amazon.insights.core.InsightsContext;
import com.amazon.insights.core.configuration.Configuration;
import com.amazon.insights.core.log.Logger;
import com.amazon.insights.core.log.Logger.LogLevel;
import com.amazon.insights.core.util.JSONBuilder;
import com.amazon.insights.core.util.JSONSerializable;
import com.amazon.insights.core.util.Preconditions;
import com.amazon.insights.core.util.StringUtil;
import com.amazon.insights.delivery.DeliveryClient;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class DefaultEventClient
  implements JSONSerializable, InternalEventClient
{
  private static final String ANALYTICS_ENABLED = "isAnalyticsEnabled";
  private static final String EVENT_SCHEMA_VERSION = "v1.2";
  private static final int MAX_EVENT_TYPE_LENGTH = 50;
  private static Logger logger = Logger.getLogger(DefaultEventClient.class);
  private boolean allowEventCollection = true;
  private final InsightsContext context;
  private final DeliveryClient deliveryClient;
  private final Map<String, Map<String, String>> eventTypeAttributes = new ConcurrentHashMap();
  private final Map<String, Map<String, Number>> eventTypeMetrics = new ConcurrentHashMap();
  private final Map<String, String> globalAttributes = new ConcurrentHashMap();
  private final Map<String, Number> globalMetrics = new ConcurrentHashMap();
  private List<EventObserver> observers = new CopyOnWriteArrayList();
  private Map<String, String> reservedAttributes = new ConcurrentHashMap();
  
  DefaultEventClient(InsightsContext paramInsightsContext, boolean paramBoolean)
  {
    Preconditions.checkNotNull(paramInsightsContext, "A valid context must be provided");
    Preconditions.checkNotNull(paramInsightsContext.getDeliveryClient(), "A valid DeliveryClient must be provided");
    allowEventCollection = paramBoolean;
    context = paramInsightsContext;
    reservedAttributes.put(paramInsightsContext.getConfiguration().optString("versionKey", "ver"), "v1.2");
    deliveryClient = paramInsightsContext.getDeliveryClient();
    addEventObserver(deliveryClient);
  }
  
  public static DefaultEventClient newInstance(InsightsContext paramInsightsContext, boolean paramBoolean)
  {
    return new DefaultEventClient(paramInsightsContext, paramBoolean);
  }
  
  public void addEventObserver(EventObserver paramEventObserver)
  {
    logger.v("Adding EventObserver");
    if (paramEventObserver == null) {
      logger.v("Null EventObserver provided to addObserver");
    }
    do
    {
      return;
      if (logger.isLoggingEnabled(Logger.LogLevel.VERBOSE)) {
        logger.v(paramEventObserver.toString());
      }
      if (!getEventObservers().contains(paramEventObserver))
      {
        getEventObservers().add(paramEventObserver);
        return;
      }
      logger.v("Observer was already registered with this EventRecorder");
    } while (!logger.isLoggingEnabled(Logger.LogLevel.VERBOSE));
    logger.v(toString());
  }
  
  public void addGlobalAttribute(String paramString1, String paramString2)
  {
    if (paramString1 == null)
    {
      logger.v("Null attribute name provided to addGlobalAttribute");
      return;
    }
    if (paramString2 == null)
    {
      logger.v("Null attribute value provided to addGlobalAttribute. attribute name:" + paramString1);
      return;
    }
    globalAttributes.put(paramString1, paramString2);
  }
  
  public void addGlobalAttribute(String paramString1, String paramString2, String paramString3)
  {
    if (paramString1 == null)
    {
      logger.v("Null eventType provided to addGlobalAttribute");
      return;
    }
    if (paramString2 == null)
    {
      logger.v("Null attribute name provided to addGlobalAttribute. eventType:" + paramString1);
      return;
    }
    if (paramString3 == null)
    {
      logger.v("Null value provided to addGlobalAttribute. eventType:" + paramString1 + ", attributeName:" + paramString2);
      return;
    }
    Map localMap = (Map)eventTypeAttributes.get(paramString1);
    Object localObject = localMap;
    if (localMap == null)
    {
      localObject = new ConcurrentHashMap();
      eventTypeAttributes.put(paramString1, localObject);
    }
    ((Map)localObject).put(paramString2, paramString3);
  }
  
  public void addGlobalMetric(String paramString, Number paramNumber)
  {
    if (paramString == null)
    {
      logger.v("Null metric name provided to addGlobalMetric");
      return;
    }
    if (paramNumber == null)
    {
      logger.v("Null metric value provided to addGlobalMetric.  metric name:" + paramString);
      return;
    }
    globalMetrics.put(paramString, paramNumber);
  }
  
  public void addGlobalMetric(String paramString1, String paramString2, Number paramNumber)
  {
    if (paramString1 == null)
    {
      logger.v("Null eventType provided to addGlobalMetric");
      return;
    }
    if (paramString2 == null)
    {
      logger.v("Null metric name provided to addGlobalMetric. eventType:" + paramString1);
      return;
    }
    if (paramNumber == null)
    {
      logger.v("Null metric value provided to addGlobalMetric. eventType:" + paramString1 + ", metric name:" + paramString2);
      return;
    }
    Map localMap = (Map)eventTypeMetrics.get(paramString1);
    Object localObject = localMap;
    if (localMap == null)
    {
      localObject = new ConcurrentHashMap();
      eventTypeMetrics.put(paramString1, localObject);
    }
    ((Map)localObject).put(paramString2, paramNumber);
  }
  
  public Event createEvent(String paramString)
  {
    if (paramString == null)
    {
      logger.v("Null eventType provided to addGlobalAttribute");
      logger.devi("Null eventType provided to createEvent");
      throw new IllegalArgumentException("The eventType passed into create event was null");
    }
    String str = StringUtil.clipString(paramString, 50, false);
    if (str.length() < paramString.length()) {
      logger.devw("The event type has been trimmed to a length of 50 characters");
    }
    return EventConstraintDecorator.newInstance(createInternalEvent(str));
  }
  
  public InternalEvent createInternalEvent(String paramString)
  {
    return DefaultEvent.newInstance(context, Long.valueOf(System.currentTimeMillis()), paramString);
  }
  
  public boolean getAllowEventCollection()
  {
    return allowEventCollection;
  }
  
  protected List<EventObserver> getEventObservers()
  {
    if (observers == null) {
      observers = new ArrayList();
    }
    return observers;
  }
  
  Set<String> getReservedAttributeKeys()
  {
    return Collections.unmodifiableSet(reservedAttributes.keySet());
  }
  
  protected void notifyObservers(InternalEvent paramInternalEvent)
  {
    logger.v("Notifying EventObservers");
    if (logger.isLoggingEnabled(Logger.LogLevel.VERBOSE)) {
      logger.v(paramInternalEvent.toString());
    }
    Iterator localIterator = getEventObservers().iterator();
    while (localIterator.hasNext()) {
      ((EventObserver)localIterator.next()).notify(paramInternalEvent);
    }
  }
  
  public void recordEvent(Event paramEvent)
  {
    recordEvent(paramEvent, true);
  }
  
  public void recordEvent(Event paramEvent, boolean paramBoolean)
  {
    if (paramEvent == null)
    {
      logger.i("The provided event was null");
      logger.devi("The provided event was null");
    }
    while ((!context.getConfiguration().optBoolean("isAnalyticsEnabled", Boolean.valueOf(true)).booleanValue()) || (!getAllowEventCollection())) {
      return;
    }
    paramEvent = DefaultEvent.createFromEvent(context, Long.valueOf(System.currentTimeMillis()), paramEvent);
    Map.Entry localEntry;
    if (paramBoolean)
    {
      try
      {
        if (eventTypeAttributes.containsKey(paramEvent.getEventType()))
        {
          localIterator = ((Map)eventTypeAttributes.get(paramEvent.getEventType())).entrySet().iterator();
          while (localIterator.hasNext())
          {
            localEntry = (Map.Entry)localIterator.next();
            if (!paramEvent.hasAttribute((String)localEntry.getKey())) {
              paramEvent.addAttribute((String)localEntry.getKey(), (String)localEntry.getValue());
            }
          }
        }
        localIterator = globalAttributes.entrySet().iterator();
      }
      finally {}
      while (localIterator.hasNext())
      {
        localEntry = (Map.Entry)localIterator.next();
        if (!paramEvent.hasAttribute((String)localEntry.getKey())) {
          paramEvent.addAttribute((String)localEntry.getKey(), (String)localEntry.getValue());
        }
      }
      if (eventTypeMetrics.containsKey(paramEvent.getEventType()))
      {
        localIterator = ((Map)eventTypeMetrics.get(paramEvent.getEventType())).entrySet().iterator();
        while (localIterator.hasNext())
        {
          localEntry = (Map.Entry)localIterator.next();
          if (!paramEvent.hasMetric((String)localEntry.getKey())) {
            paramEvent.addMetric((String)localEntry.getKey(), (Number)localEntry.getValue());
          }
        }
      }
      localIterator = globalMetrics.entrySet().iterator();
      while (localIterator.hasNext())
      {
        localEntry = (Map.Entry)localIterator.next();
        if (!paramEvent.hasMetric((String)localEntry.getKey())) {
          paramEvent.addMetric((String)localEntry.getKey(), (Number)localEntry.getValue());
        }
      }
    }
    Iterator localIterator = reservedAttributes.entrySet().iterator();
    while (localIterator.hasNext())
    {
      localEntry = (Map.Entry)localIterator.next();
      if (paramEvent.hasAttribute((String)localEntry.getKey()))
      {
        String str = paramEvent.getAttribute((String)localEntry.getKey());
        paramEvent.addAttribute((String)localEntry.getKey(), (String)localEntry.getValue());
        paramEvent.addAttribute("ud_" + (String)localEntry.getKey(), str);
      }
      else
      {
        paramEvent.addAttribute((String)localEntry.getKey(), (String)localEntry.getValue());
      }
    }
    notifyObservers(paramEvent);
  }
  
  public void removeEventObserver(EventObserver paramEventObserver)
  {
    logger.v("Removing EventObserver");
    if (paramEventObserver == null) {
      logger.v("Null EventObserver provided to removeObserver");
    }
    do
    {
      return;
      if (logger.isLoggingEnabled(Logger.LogLevel.VERBOSE)) {
        logger.v(paramEventObserver.toString());
      }
      if (getEventObservers().contains(paramEventObserver))
      {
        getEventObservers().remove(paramEventObserver);
        return;
      }
      logger.v("Observer was not registered with this EventRecorder");
    } while (!logger.isLoggingEnabled(Logger.LogLevel.VERBOSE));
    logger.v(toString());
  }
  
  public void removeGlobalAttribute(String paramString)
  {
    if (paramString == null)
    {
      logger.v("Null attribute name provided to removeGlobalAttribute");
      return;
    }
    globalAttributes.remove(paramString);
  }
  
  public void removeGlobalAttribute(String paramString1, String paramString2)
  {
    if (paramString1 == null) {
      logger.v("Null eventType provided to removeGlobalAttribute");
    }
    do
    {
      return;
      if (paramString2 == null)
      {
        logger.v("Null attribute name provided to removeGlobalAttribute");
        return;
      }
      paramString1 = (Map)eventTypeAttributes.get(paramString1);
    } while (paramString1 == null);
    paramString1.remove(paramString2);
  }
  
  public void removeGlobalMetric(String paramString)
  {
    if (paramString == null)
    {
      logger.v("Null metric name provided to removeGlobalMetric");
      return;
    }
    globalMetrics.remove(paramString);
  }
  
  public void removeGlobalMetric(String paramString1, String paramString2)
  {
    if (paramString1 == null) {
      logger.v("Null eventType provided to removeGlobalMetric");
    }
    do
    {
      return;
      if (paramString2 == null)
      {
        logger.v("Null metric name provided to removeGlobalMetric");
        return;
      }
      paramString1 = (Map)eventTypeMetrics.get(paramString1);
    } while (paramString1 == null);
    paramString1.remove(paramString2);
  }
  
  public void submitEvents()
  {
    logger.v("Notifying deliveryClient");
    deliveryClient.attemptDelivery();
  }
  
  public JSONObject toJSONObject()
  {
    JSONArray localJSONArray = new JSONArray();
    if (observers != null)
    {
      localObject1 = observers.iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (EventObserver)((Iterator)localObject1).next();
        if (JSONSerializable.class.isAssignableFrom(localObject2.getClass())) {
          localJSONArray.put(((JSONSerializable)localObject2).toJSONObject());
        } else {
          localJSONArray.put(localObject2);
        }
      }
    }
    Object localObject1 = new JSONArray();
    Object localObject4;
    if (globalAttributes != null)
    {
      localObject2 = globalAttributes.entrySet().iterator();
      while (((Iterator)localObject2).hasNext())
      {
        Map.Entry localEntry1 = (Map.Entry)((Iterator)localObject2).next();
        try
        {
          localObject4 = new JSONObject();
          ((JSONObject)localObject4).put((String)localEntry1.getKey(), localEntry1.getValue());
          ((JSONArray)localObject1).put(localObject4);
        }
        catch (JSONException localJSONException1) {}
      }
    }
    Object localObject2 = new JSONArray();
    Object localObject6;
    if (globalMetrics != null)
    {
      localObject3 = globalMetrics.entrySet().iterator();
      while (((Iterator)localObject3).hasNext())
      {
        localObject4 = (Map.Entry)((Iterator)localObject3).next();
        try
        {
          localObject6 = new JSONObject();
          ((JSONObject)localObject6).put((String)((Map.Entry)localObject4).getKey(), ((Map.Entry)localObject4).getValue());
          ((JSONArray)localObject2).put(localObject6);
        }
        catch (JSONException localJSONException2) {}
      }
    }
    Object localObject3 = new JSONObject();
    Object localObject8;
    Object localObject9;
    Object localObject10;
    if (eventTypeAttributes != null)
    {
      localObject5 = eventTypeAttributes.entrySet().iterator();
      while (((Iterator)localObject5).hasNext())
      {
        localObject6 = (Map.Entry)((Iterator)localObject5).next();
        localObject8 = new JSONArray();
        localObject9 = ((Map)((Map.Entry)localObject6).getValue()).entrySet().iterator();
        while (((Iterator)localObject9).hasNext())
        {
          Map.Entry localEntry2 = (Map.Entry)((Iterator)localObject9).next();
          try
          {
            localObject10 = new JSONObject();
            ((JSONObject)localObject10).put((String)localEntry2.getKey(), localEntry2.getValue());
            ((JSONArray)localObject8).put(localObject10);
          }
          catch (JSONException localJSONException5) {}
        }
        try
        {
          ((JSONObject)localObject3).put((String)((Map.Entry)localObject6).getKey(), localObject8);
        }
        catch (JSONException localJSONException3) {}
      }
    }
    Object localObject5 = new JSONObject();
    if (eventTypeMetrics != null)
    {
      localObject7 = eventTypeMetrics.entrySet().iterator();
      while (((Iterator)localObject7).hasNext())
      {
        localObject8 = (Map.Entry)((Iterator)localObject7).next();
        localObject9 = new JSONArray();
        Iterator localIterator = ((Map)((Map.Entry)localObject8).getValue()).entrySet().iterator();
        while (localIterator.hasNext())
        {
          localObject10 = (Map.Entry)localIterator.next();
          try
          {
            JSONObject localJSONObject = new JSONObject();
            localJSONObject.put((String)((Map.Entry)localObject10).getKey(), ((Map.Entry)localObject10).getValue());
            ((JSONArray)localObject9).put(localJSONObject);
          }
          catch (JSONException localJSONException6) {}
        }
        try
        {
          ((JSONObject)localObject5).put((String)((Map.Entry)localObject8).getKey(), localObject9);
        }
        catch (JSONException localJSONException4) {}
      }
    }
    Object localObject7 = context.getCredentials().getApplicationKey();
    return new JSONBuilder(this).withAttribute("applicationKey", localObject7).withAttribute("uniqueId", context.getUniqueId()).withAttribute("observers", localJSONArray).withAttribute("globalAttributes", localObject1).withAttribute("globalMetrics", localObject2).withAttribute("eventTypeAttributes", localObject3).withAttribute("eventTypeMetrics", localObject5).toJSONObject();
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
}

/* Location:
 * Qualified Name:     com.amazon.insights.event.DefaultEventClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */