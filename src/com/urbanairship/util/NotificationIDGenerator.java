package com.urbanairship.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;

public class NotificationIDGenerator
{
  private static final int MAX_RANGE = 50;
  private static final String NEXT_ID_KEY = "count";
  private static final String SHARED_PREFERENCES_FILE = "com.urbanairship.notificationidgenerator";
  private static int range = 40;
  private static int start = 1000;
  
  private static int getInt(String paramString, int paramInt)
  {
    return getPreferences().getInt(paramString, paramInt);
  }
  
  private static SharedPreferences getPreferences()
  {
    return UAirship.getApplicationContext().getSharedPreferences("com.urbanairship.notificationidgenerator", 0);
  }
  
  public static int getRange()
  {
    return range;
  }
  
  public static int getStart()
  {
    return start;
  }
  
  public static int nextID()
  {
    int i = getInt("count", start) + 1;
    if (i < start + range)
    {
      Logger.verbose("NotificationIDGenerator - Incrementing notification ID count");
      putInt("count", i);
    }
    for (;;)
    {
      Logger.verbose("NotificationIDGenerator - Notification ID: " + i);
      return i;
      Logger.verbose("NotificationIDGenerator - Resetting notification ID count");
      putInt("count", start);
    }
  }
  
  private static void putInt(String paramString, int paramInt)
  {
    SharedPreferences.Editor localEditor = getPreferences().edit();
    localEditor.putInt(paramString, paramInt);
    localEditor.commit();
  }
  
  public static void setRange(int paramInt)
  {
    int i = paramInt;
    if (paramInt > 50)
    {
      Logger.error("The maximum numer of notifications allowed is 50. Limiting alert id range to conform.");
      i = 50;
    }
    putInt("count", start);
    range = i;
  }
  
  public static void setStart(int paramInt)
  {
    putInt("count", paramInt);
    start = paramInt;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.util.NotificationIDGenerator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */