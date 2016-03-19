package com.amazon.insights.impl;

import com.amazon.insights.InsightsOptions;

public class DefaultInsightsOptions
  implements InsightsOptions
{
  private final boolean allowEventCollection;
  private final boolean allowWANDelivery;
  
  public DefaultInsightsOptions(boolean paramBoolean1, boolean paramBoolean2)
  {
    allowEventCollection = paramBoolean1;
    allowWANDelivery = paramBoolean2;
  }
  
  public boolean getAllowEventCollection()
  {
    return allowEventCollection;
  }
  
  public boolean getAllowWANDelivery()
  {
    return allowWANDelivery;
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.impl.DefaultInsightsOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */