package com.amazon.insights.session;

import com.amazon.insights.InsightsCredentials;
import com.amazon.insights.core.InsightsContext;
import com.amazon.insights.core.idresolver.Id;
import com.amazon.insights.core.util.JSONBuilder;
import com.amazon.insights.core.util.JSONSerializable;
import com.amazon.insights.core.util.Preconditions;
import com.amazon.insights.core.util.StringUtil;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.Scanner;
import java.util.TimeZone;
import org.json.JSONException;
import org.json.JSONObject;

public class Session
  implements JSONSerializable
{
  private static final String JSON_SESSION_ID_ATTR = "session_id";
  private static final String JSON_START_TIME_ATTR = "start_time";
  private static final String JSON_STOP_TIME_ATTR = "stop_time";
  protected static final int SESSION_ID_APPKEY_LENGTH = 8;
  protected static final String SESSION_ID_DATE_FORMAT = "yyyyMMdd";
  protected static final char SESSION_ID_DELIMITER = '-';
  protected static final char SESSION_ID_PAD_CHAR = '_';
  protected static final String SESSION_ID_TIME_FORMAT = "HHmmssSSS";
  protected static final int SESSION_ID_UNIQID_LENGTH = 8;
  private final String sessionID;
  private final DateFormat sessionIdTimeFormat;
  private final long startTime;
  private Long stopTime = null;
  
  protected Session(InsightsContext paramInsightsContext)
  {
    Preconditions.checkNotNull(paramInsightsContext, "A valid InsightsContext must be provided!");
    sessionIdTimeFormat = new SimpleDateFormat("yyyyMMdd-HHmmssSSS", Locale.US);
    sessionIdTimeFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
    startTime = System.currentTimeMillis();
    stopTime = null;
    sessionID = generateSessionID(paramInsightsContext);
  }
  
  protected Session(String paramString1, String paramString2, String paramString3)
  {
    sessionIdTimeFormat = new SimpleDateFormat("yyyyMMdd-HHmmssSSS", Locale.US);
    sessionIdTimeFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
    startTime = new Scanner(paramString2).nextLong();
    stopTime = Long.valueOf(new Scanner(paramString3).nextLong());
    sessionID = paramString1;
    if (stopTime.longValue() == Long.MIN_VALUE) {
      stopTime = null;
    }
  }
  
  public static Session getSessionFromSerializedSession(String paramString)
  {
    if (StringUtil.isBlank(paramString)) {
      return null;
    }
    try
    {
      paramString = new JSONObject(paramString);
      paramString = new Session(paramString.getString("session_id"), paramString.getString("start_time"), paramString.getString("stop_time"));
      return paramString;
    }
    catch (JSONException paramString)
    {
      for (;;)
      {
        paramString.printStackTrace();
        paramString = null;
      }
    }
  }
  
  public static Session newInstance(InsightsContext paramInsightsContext)
  {
    return new Session(paramInsightsContext);
  }
  
  public String generateSessionID(InsightsContext paramInsightsContext)
  {
    String str1 = paramInsightsContext.getCredentials().getApplicationKey();
    paramInsightsContext = paramInsightsContext.getUniqueId().getValue();
    String str2 = sessionIdTimeFormat.format(Long.valueOf(startTime));
    return StringUtil.trimOrPadString(str1, 8, '_') + '-' + StringUtil.trimOrPadString(paramInsightsContext, 8, '_') + '-' + str2;
  }
  
  public Number getSessionDuration()
  {
    Long localLong2 = stopTime;
    Long localLong1 = localLong2;
    if (localLong2 == null) {
      localLong1 = Long.valueOf(System.currentTimeMillis());
    }
    if (localLong1.longValue() < startTime) {
      return Long.valueOf(0L);
    }
    return Long.valueOf(localLong1.longValue() - startTime);
  }
  
  public String getSessionID()
  {
    return sessionID;
  }
  
  public long getStartTime()
  {
    return startTime;
  }
  
  public Long getStopTime()
  {
    return stopTime;
  }
  
  public boolean isPaused()
  {
    return stopTime != null;
  }
  
  public void pause()
  {
    if (!isPaused()) {
      stopTime = Long.valueOf(System.currentTimeMillis());
    }
  }
  
  public void resume()
  {
    stopTime = null;
  }
  
  public JSONObject toJSONObject()
  {
    Object localObject2 = stopTime;
    Object localObject1 = localObject2;
    if (localObject2 == null) {
      localObject1 = Long.valueOf(Long.MIN_VALUE);
    }
    localObject2 = new JSONBuilder(this);
    ((JSONBuilder)localObject2).withAttribute("session_id", sessionID);
    ((JSONBuilder)localObject2).withAttribute("start_time", Long.valueOf(startTime));
    ((JSONBuilder)localObject2).withAttribute("stop_time", localObject1);
    return ((JSONBuilder)localObject2).toJSONObject();
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
 * Qualified Name:     com.amazon.insights.session.Session
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */