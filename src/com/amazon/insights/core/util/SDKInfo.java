package com.amazon.insights.core.util;

public class SDKInfo
{
  private final String name;
  private final String version;
  
  public SDKInfo(String paramString1, String paramString2)
  {
    name = paramString1;
    version = paramString2;
  }
  
  public String getName()
  {
    return name;
  }
  
  public String getVersion()
  {
    return version;
  }
  
  public String toString()
  {
    return name + "-" + version;
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.core.util.SDKInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */