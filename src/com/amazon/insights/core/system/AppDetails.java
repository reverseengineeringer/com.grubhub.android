package com.amazon.insights.core.system;

public abstract interface AppDetails
{
  public abstract String packageName();
  
  public abstract String[] signatures();
  
  public abstract String versionCode();
  
  public abstract String versionName();
}

/* Location:
 * Qualified Name:     com.amazon.insights.core.system.AppDetails
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */