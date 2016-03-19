package com.urbanairship.analytics;

import com.urbanairship.http.Response;
import com.urbanairship.util.UAMathUtil;
import java.util.List;
import java.util.Map;

class EventResponse
{
  private final Response response;
  
  public EventResponse(Response paramResponse)
  {
    response = paramResponse;
  }
  
  int getMaxBatchSize()
  {
    if (response.getResponseHeaders() != null)
    {
      List localList = (List)response.getResponseHeaders().get("X-UA-Max-Batch");
      if ((localList != null) && (localList.size() > 0)) {
        return UAMathUtil.constrain(Integer.parseInt((String)localList.get(0)), 1024, 512000);
      }
    }
    return 1024;
  }
  
  int getMaxTotalSize()
  {
    if (response.getResponseHeaders() != null)
    {
      List localList = (List)response.getResponseHeaders().get("X-UA-Max-Total");
      if ((localList != null) && (localList.size() > 0)) {
        return UAMathUtil.constrain(Integer.parseInt((String)localList.get(0)), 10240, 5242880);
      }
    }
    return 10240;
  }
  
  int getMaxWait()
  {
    if (response.getResponseHeaders() != null)
    {
      List localList = (List)response.getResponseHeaders().get("X-UA-Max-Wait");
      if ((localList != null) && (localList.size() > 0)) {
        return UAMathUtil.constrain(Integer.parseInt((String)localList.get(0)), 604800000, 1209600000);
      }
    }
    return 604800000;
  }
  
  int getMinBatchInterval()
  {
    if (response.getResponseHeaders() != null)
    {
      List localList = (List)response.getResponseHeaders().get("X-UA-Min-Batch-Interval");
      if ((localList != null) && (localList.size() > 0)) {
        return UAMathUtil.constrain(Integer.parseInt((String)localList.get(0)), 60000, 604800000);
      }
    }
    return 60000;
  }
  
  public int getStatus()
  {
    return response.getStatus();
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.analytics.EventResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */