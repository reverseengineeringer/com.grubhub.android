package com.amazon.insights.core.system;

public abstract interface Preferences
{
  public abstract boolean getBoolean(String paramString, boolean paramBoolean);
  
  public abstract float getFloat(String paramString, float paramFloat);
  
  public abstract int getInt(String paramString, int paramInt);
  
  public abstract long getLong(String paramString, long paramLong);
  
  public abstract String getString(String paramString1, String paramString2);
  
  public abstract void putBoolean(String paramString, boolean paramBoolean);
  
  public abstract void putFloat(String paramString, float paramFloat);
  
  public abstract void putInt(String paramString, int paramInt);
  
  public abstract void putLong(String paramString, long paramLong);
  
  public abstract void putString(String paramString1, String paramString2);
}

/* Location:
 * Qualified Name:     com.amazon.insights.core.system.Preferences
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */