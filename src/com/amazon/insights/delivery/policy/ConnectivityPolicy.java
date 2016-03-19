package com.amazon.insights.delivery.policy;

import com.amazon.insights.core.InsightsContext;
import com.amazon.insights.core.configuration.Configuration;
import com.amazon.insights.core.system.Connectivity;
import com.amazon.insights.core.system.System;

public class ConnectivityPolicy
  implements DeliveryPolicy
{
  private static final boolean ALLOW_WAN_DEFAULT = true;
  private static final String ALLOW_WAN_KEY = "allowWANEventDelivery";
  private final Connectivity connectivity;
  private final InsightsContext context;
  private final boolean isWanAllowed;
  
  public ConnectivityPolicy(InsightsContext paramInsightsContext, boolean paramBoolean)
  {
    context = paramInsightsContext;
    connectivity = paramInsightsContext.getSystem().getConnectivity();
    isWanAllowed = paramBoolean;
  }
  
  public void handleDeliveryAttempt(boolean paramBoolean) {}
  
  public boolean isAllowed()
  {
    boolean bool2 = false;
    if ((context.getConfiguration().optBoolean("allowWANEventDelivery", Boolean.valueOf(true)).booleanValue()) && (isWanAllowed)) {}
    for (int i = 1;; i = 0)
    {
      boolean bool1 = bool2;
      if (connectivity.isConnected()) {
        if ((!connectivity.hasWifi()) && (!connectivity.hasWired()))
        {
          bool1 = bool2;
          if (connectivity.hasWAN())
          {
            bool1 = bool2;
            if (i == 0) {}
          }
        }
        else
        {
          bool1 = true;
        }
      }
      return bool1;
    }
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.delivery.policy.ConnectivityPolicy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */