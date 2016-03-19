package com.amazon.insights.impl;

import com.amazon.insights.InsightsCredentials;

public class DefaultInsightsCredentials
  implements InsightsCredentials
{
  final String applicationKey;
  final String privateKey;
  
  public DefaultInsightsCredentials(String paramString1, String paramString2)
  {
    applicationKey = paramString1;
    privateKey = paramString2;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool = true;
    if (paramObject == null) {}
    do
    {
      return false;
      if (paramObject == this) {
        return true;
      }
    } while (!(paramObject instanceof InsightsCredentials));
    paramObject = (InsightsCredentials)paramObject;
    if ((getApplicationKey().equals(((InsightsCredentials)paramObject).getApplicationKey())) && (getPrivateKey().equals(((InsightsCredentials)paramObject).getPrivateKey()))) {}
    for (;;)
    {
      return bool;
      bool = false;
    }
  }
  
  public String getApplicationKey()
  {
    return applicationKey;
  }
  
  public String getPrivateKey()
  {
    return privateKey;
  }
  
  public int hashCode()
  {
    return (getApplicationKey() + getPrivateKey()).hashCode();
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.impl.DefaultInsightsCredentials
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */