package com.amazon.insights.core.system;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.amazon.insights.InsightsCredentials;

public class AndroidPreferences
  implements Preferences
{
  private final SharedPreferences preferences;
  
  public AndroidPreferences(Context paramContext, InsightsCredentials paramInsightsCredentials)
  {
    preferences = paramContext.getSharedPreferences(paramInsightsCredentials.getApplicationKey(), 0);
  }
  
  public boolean getBoolean(String paramString, boolean paramBoolean)
  {
    return preferences.getBoolean(paramString, paramBoolean);
  }
  
  public float getFloat(String paramString, float paramFloat)
  {
    return preferences.getFloat(paramString, paramFloat);
  }
  
  public int getInt(String paramString, int paramInt)
  {
    return preferences.getInt(paramString, paramInt);
  }
  
  public long getLong(String paramString, long paramLong)
  {
    return preferences.getLong(paramString, paramLong);
  }
  
  public String getString(String paramString1, String paramString2)
  {
    return preferences.getString(paramString1, paramString2);
  }
  
  public void putBoolean(String paramString, boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = preferences.edit();
    localEditor.putBoolean(paramString, paramBoolean);
    localEditor.commit();
  }
  
  public void putFloat(String paramString, float paramFloat)
  {
    SharedPreferences.Editor localEditor = preferences.edit();
    localEditor.putFloat(paramString, paramFloat);
    localEditor.commit();
  }
  
  public void putInt(String paramString, int paramInt)
  {
    SharedPreferences.Editor localEditor = preferences.edit();
    localEditor.putInt(paramString, paramInt);
    localEditor.commit();
  }
  
  public void putLong(String paramString, long paramLong)
  {
    SharedPreferences.Editor localEditor = preferences.edit();
    localEditor.putLong(paramString, paramLong);
    localEditor.commit();
  }
  
  public void putString(String paramString1, String paramString2)
  {
    SharedPreferences.Editor localEditor = preferences.edit();
    localEditor.putString(paramString1, paramString2);
    localEditor.commit();
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.core.system.AndroidPreferences
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */