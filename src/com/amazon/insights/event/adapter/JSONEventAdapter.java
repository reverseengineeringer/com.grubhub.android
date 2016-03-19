package com.amazon.insights.event.adapter;

import com.amazon.insights.core.log.Logger;
import com.amazon.insights.core.util.JSONBuilder;
import com.amazon.insights.event.InternalEvent;
import org.json.JSONObject;

public class JSONEventAdapter
  implements EventAdapter<JSONObject>
{
  private static Logger logger = Logger.getLogger(JSONEventAdapter.class);
  
  public String toString()
  {
    return new JSONBuilder(this).toString();
  }
  
  public JSONObject translateFromEvent(InternalEvent paramInternalEvent)
  {
    if (paramInternalEvent == null)
    {
      logger.i("The Event provided was null");
      paramInternalEvent = null;
    }
    JSONObject localJSONObject;
    do
    {
      return paramInternalEvent;
      localJSONObject = paramInternalEvent.toJSONObject();
      if (localJSONObject.has("class")) {
        localJSONObject.remove("class");
      }
      paramInternalEvent = localJSONObject;
    } while (!localJSONObject.has("hashCode"));
    localJSONObject.remove("hashCode");
    return localJSONObject;
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.event.adapter.JSONEventAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */