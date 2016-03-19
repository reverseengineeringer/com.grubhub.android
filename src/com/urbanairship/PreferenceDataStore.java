package com.urbanairship;

import android.content.Context;
import android.database.Cursor;
import com.urbanairship.json.JsonException;
import com.urbanairship.json.JsonSerializable;
import com.urbanairship.json.JsonValue;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

public final class PreferenceDataStore
{
  private static final String WHERE_CLAUSE_KEY = "_id = ?";
  Executor executor = Executors.newSingleThreadExecutor();
  private final List<PreferenceDataStore.PreferenceChangeListener> listeners = new ArrayList();
  private final Map<String, PreferenceDataStore.Preference> preferences = new HashMap();
  private final UrbanAirshipResolver resolver;
  
  PreferenceDataStore(Context paramContext)
  {
    this(new UrbanAirshipResolver(paramContext));
  }
  
  PreferenceDataStore(UrbanAirshipResolver paramUrbanAirshipResolver)
  {
    resolver = paramUrbanAirshipResolver;
  }
  
  private PreferenceDataStore.Preference getPreference(String paramString)
  {
    synchronized (preferences)
    {
      if (preferences.containsKey(paramString))
      {
        paramString = (PreferenceDataStore.Preference)preferences.get(paramString);
        return paramString;
      }
      PreferenceDataStore.Preference localPreference = new PreferenceDataStore.Preference(this, paramString, null);
      preferences.put(paramString, localPreference);
      paramString = localPreference;
    }
  }
  
  private void onPreferenceChanged(String paramString)
  {
    synchronized (listeners)
    {
      Iterator localIterator = listeners.iterator();
      if (localIterator.hasNext()) {
        ((PreferenceDataStore.PreferenceChangeListener)localIterator.next()).onPreferenceChange(paramString);
      }
    }
  }
  
  public void addListener(PreferenceDataStore.PreferenceChangeListener paramPreferenceChangeListener)
  {
    synchronized (listeners)
    {
      listeners.add(paramPreferenceChangeListener);
      return;
    }
  }
  
  public boolean getBoolean(String paramString, boolean paramBoolean)
  {
    paramString = getPreference(paramString).get();
    if (paramString == null) {
      return paramBoolean;
    }
    return Boolean.valueOf(paramString).booleanValue();
  }
  
  public int getInt(String paramString, int paramInt)
  {
    paramString = getPreference(paramString).get();
    if (paramString == null) {
      return paramInt;
    }
    try
    {
      int i = Integer.parseInt(paramString);
      return i;
    }
    catch (NumberFormatException paramString) {}
    return paramInt;
  }
  
  public JsonValue getJsonValue(String paramString)
  {
    try
    {
      JsonValue localJsonValue = JsonValue.parseString(getPreference(paramString).get());
      return localJsonValue;
    }
    catch (JsonException localJsonException)
    {
      Logger.debug("Unable to parse preference value: " + paramString, localJsonException);
    }
    return JsonValue.NULL;
  }
  
  public long getLong(String paramString, long paramLong)
  {
    paramString = getPreference(paramString).get();
    if (paramString == null) {
      return paramLong;
    }
    try
    {
      long l = Long.parseLong(paramString);
      return l;
    }
    catch (NumberFormatException paramString) {}
    return paramLong;
  }
  
  public String getString(String paramString1, String paramString2)
  {
    paramString1 = getPreference(paramString1).get();
    if (paramString1 == null) {
      return paramString2;
    }
    return paramString1;
  }
  
  void loadAll()
  {
    Cursor localCursor = resolver.query(UrbanAirshipProvider.getPreferencesContentUri(), null, null, null, null);
    if (localCursor == null) {
      return;
    }
    int i = localCursor.getColumnIndex("_id");
    int j = localCursor.getColumnIndex("value");
    while (localCursor.moveToNext())
    {
      String str1 = localCursor.getString(i);
      String str2 = localCursor.getString(j);
      preferences.put(str1, new PreferenceDataStore.Preference(this, str1, str2));
    }
    localCursor.close();
  }
  
  public void put(String paramString, int paramInt)
  {
    getPreference(paramString).put(String.valueOf(paramInt));
  }
  
  public void put(String paramString, long paramLong)
  {
    getPreference(paramString).put(String.valueOf(paramLong));
  }
  
  public void put(String paramString, JsonSerializable paramJsonSerializable)
  {
    if (paramJsonSerializable == null)
    {
      remove(paramString);
      return;
    }
    put(paramString, paramJsonSerializable.toJsonValue());
  }
  
  public void put(String paramString, JsonValue paramJsonValue)
  {
    if (paramJsonValue == null)
    {
      remove(paramString);
      return;
    }
    getPreference(paramString).put(paramJsonValue.toString());
  }
  
  public void put(String paramString1, String paramString2)
  {
    getPreference(paramString1).put(paramString2);
  }
  
  public void put(String paramString, boolean paramBoolean)
  {
    getPreference(paramString).put(String.valueOf(paramBoolean));
  }
  
  public boolean putSync(String paramString1, String paramString2)
  {
    if (paramString2 == null) {}
    for (paramString2 = null;; paramString2 = String.valueOf(paramString2)) {
      return getPreference(paramString1).putSync(paramString2);
    }
  }
  
  public void remove(String paramString)
  {
    getPreference(paramString).put(null);
  }
  
  public void removeListener(PreferenceDataStore.PreferenceChangeListener paramPreferenceChangeListener)
  {
    synchronized (listeners)
    {
      listeners.remove(paramPreferenceChangeListener);
      return;
    }
  }
  
  public boolean removeSync(String paramString)
  {
    return putSync(paramString, null);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.PreferenceDataStore
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */