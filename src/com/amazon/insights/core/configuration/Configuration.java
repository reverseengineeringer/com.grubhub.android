package com.amazon.insights.core.configuration;

public abstract interface Configuration
{
  public abstract Boolean getBoolean(String paramString);
  
  public abstract Double getDouble(String paramString);
  
  public abstract Integer getInt(String paramString);
  
  public abstract Long getLong(String paramString);
  
  public abstract Short getShort(String paramString);
  
  public abstract String getString(String paramString);
  
  public abstract Boolean optBoolean(String paramString, Boolean paramBoolean);
  
  public abstract Double optDouble(String paramString, Double paramDouble);
  
  public abstract Integer optInt(String paramString, Integer paramInteger);
  
  public abstract Long optLong(String paramString, Long paramLong);
  
  public abstract Short optShort(String paramString, Short paramShort);
  
  public abstract String optString(String paramString1, String paramString2);
  
  public abstract void refresh();
}

/* Location:
 * Qualified Name:     com.amazon.insights.core.configuration.Configuration
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */