package com.urbanairship.push;

import com.urbanairship.http.Response;
import com.urbanairship.util.UAStringUtil;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

class ChannelResponse
{
  private final Response response;
  
  public ChannelResponse(Response paramResponse)
  {
    response = paramResponse;
  }
  
  String getChannelId()
  {
    if (UAStringUtil.isEmpty(response.getResponseBody())) {
      return null;
    }
    try
    {
      String str = new JSONObject(response.getResponseBody()).getString("channel_id");
      return str;
    }
    catch (JSONException localJSONException) {}
    return null;
  }
  
  String getChannelLocation()
  {
    if (response.getResponseHeaders() != null)
    {
      List localList = (List)response.getResponseHeaders().get("Location");
      if ((localList != null) && (localList.size() > 0)) {
        return (String)localList.get(0);
      }
    }
    return null;
  }
  
  public int getStatus()
  {
    return response.getStatus();
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.ChannelResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */