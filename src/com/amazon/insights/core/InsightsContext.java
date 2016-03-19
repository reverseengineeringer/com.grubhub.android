package com.amazon.insights.core;

import com.amazon.insights.InsightsCredentials;
import com.amazon.insights.UserProfile;
import com.amazon.insights.core.configuration.Configuration;
import com.amazon.insights.core.http.HttpClient;
import com.amazon.insights.core.idresolver.Id;
import com.amazon.insights.core.system.System;
import com.amazon.insights.core.util.SDKInfo;
import com.amazon.insights.delivery.DeliveryClient;

public abstract interface InsightsContext
{
  public abstract Configuration getConfiguration();
  
  public abstract InsightsCredentials getCredentials();
  
  public abstract DeliveryClient getDeliveryClient();
  
  public abstract HttpClient getHttpClient();
  
  public abstract SDKInfo getSDKInfo();
  
  public abstract System getSystem();
  
  public abstract Id getUniqueId();
  
  public abstract UserProfile getUserProfile();
  
  public abstract void synchronize();
}

/* Location:
 * Qualified Name:     com.amazon.insights.core.InsightsContext
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */