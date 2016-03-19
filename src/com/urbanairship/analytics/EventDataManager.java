package com.urbanairship.analytics;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import com.urbanairship.util.DataManager;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

class EventDataManager
  extends DataManager
{
  private static final String DATABASE_NAME = "ua_analytics.db";
  private static final int DATABASE_VERSION = 1;
  
  EventDataManager()
  {
    super(UAirship.getApplicationContext(), "ua_analytics.db", 1);
  }
  
  private static String repeat(String paramString1, int paramInt, String paramString2)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    while (i < paramInt)
    {
      localStringBuilder.append(paramString1);
      if (i + 1 != paramInt) {
        localStringBuilder.append(paramString2);
      }
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  protected void bindValuesToSqliteStatement(SQLiteStatement paramSQLiteStatement, ContentValues paramContentValues)
  {
    bind(paramSQLiteStatement, 1, paramContentValues.getAsString("type"));
    bind(paramSQLiteStatement, 2, paramContentValues.getAsString("event_id"));
    bind(paramSQLiteStatement, 3, paramContentValues.getAsString("data"));
    bind(paramSQLiteStatement, 4, paramContentValues.getAsInteger("time").intValue());
    bind(paramSQLiteStatement, 5, paramContentValues.getAsString("session_id"));
    bind(paramSQLiteStatement, 6, paramContentValues.getAsInteger("event_size").intValue());
  }
  
  void deleteAllEvents()
  {
    delete("events", null, null);
  }
  
  boolean deleteEvent(String paramString)
  {
    return delete("events", "event_id = ?", new String[] { paramString }) > 0;
  }
  
  boolean deleteEventType(String paramString)
  {
    return delete("events", "type = ?", new String[] { paramString }) > 0;
  }
  
  boolean deleteEvents(Set<String> paramSet)
  {
    if ((paramSet == null) || (paramSet.size() == 0))
    {
      Logger.verbose("EventDataManager - Nothing to delete. Returning.");
      return false;
    }
    int i = paramSet.size();
    String str = repeat("?", i, ", ");
    return delete("events", "event_id IN ( " + str + " )", (String[])paramSet.toArray(new String[i])) > 0;
  }
  
  boolean deleteSession(String paramString)
  {
    int i = delete("events", "session_id = ?", new String[] { paramString });
    if (i > 0)
    {
      Logger.debug("EventDataManager - Deleted " + i + " rows with session ID " + paramString);
      return true;
    }
    return false;
  }
  
  int getDatabaseSize()
  {
    Integer localInteger = null;
    Cursor localCursor = query("events", new String[] { "SUM(event_size) as _size" }, null, null, null, null);
    if (localCursor == null)
    {
      Logger.error("EventDataManager - Unable to query events database.");
      return -1;
    }
    if (localCursor.moveToFirst())
    {
      localInteger = Integer.valueOf(localCursor.getInt(0));
      localCursor.close();
    }
    if (localInteger == null) {}
    for (int i = -1;; i = localInteger.intValue()) {
      return i;
    }
  }
  
  int getEventCount()
  {
    Integer localInteger = null;
    Cursor localCursor = query("events", new String[] { "COUNT(*) as _cnt" }, null, null, null, null);
    if (localCursor == null)
    {
      Logger.error("EventDataManager - Unable to query events database.");
      return -1;
    }
    if (localCursor.moveToFirst()) {
      localInteger = Integer.valueOf(localCursor.getInt(0));
    }
    localCursor.close();
    if (localInteger == null) {}
    for (int i = -1;; i = localInteger.intValue()) {
      return i;
    }
  }
  
  Map<String, String> getEvents(int paramInt)
  {
    HashMap localHashMap = new HashMap(paramInt);
    Object localObject = "0, " + paramInt;
    localObject = query("events", new String[] { "event_id", "data" }, null, null, "_id ASC", (String)localObject);
    if (localObject == null) {
      return localHashMap;
    }
    ((Cursor)localObject).moveToFirst();
    while (!((Cursor)localObject).isAfterLast())
    {
      localHashMap.put(((Cursor)localObject).getString(0), ((Cursor)localObject).getString(1));
      ((Cursor)localObject).moveToNext();
    }
    ((Cursor)localObject).close();
    return localHashMap;
  }
  
  protected SQLiteStatement getInsertStatement(String paramString, SQLiteDatabase paramSQLiteDatabase)
  {
    return paramSQLiteDatabase.compileStatement(buildInsertStatement(paramString, new String[] { "type", "event_id", "data", "time", "session_id", "event_size" }));
  }
  
  String getOldestSessionId()
  {
    String str = null;
    Cursor localCursor = query("events", new String[] { "session_id" }, null, null, "_id ASC", "0, 1");
    if (localCursor == null)
    {
      Logger.error("EventDataManager - Unable to query database.");
      return null;
    }
    if (localCursor.moveToFirst()) {
      str = localCursor.getString(0);
    }
    localCursor.close();
    return str;
  }
  
  long insertEvent(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("type", paramString1);
    localContentValues.put("event_id", paramString3);
    localContentValues.put("data", paramString2);
    localContentValues.put("time", paramString5);
    localContentValues.put("session_id", paramString4);
    localContentValues.put("event_size", Integer.valueOf(paramString2.length()));
    return insert("events", localContentValues);
  }
  
  protected void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS events (_id INTEGER PRIMARY KEY AUTOINCREMENT,type TEXT,event_id TEXT,time INTEGER,data TEXT,session_id TEXT,event_size INTEGER);");
  }
  
  protected void onDowngrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS events");
    onCreate(paramSQLiteDatabase);
  }
  
  protected void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    Logger.debug("EventDataManager - Upgrading analytics database from version " + paramInt1 + " to " + paramInt2 + ", which will destroy all old data");
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS events");
    onCreate(paramSQLiteDatabase);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.analytics.EventDataManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */