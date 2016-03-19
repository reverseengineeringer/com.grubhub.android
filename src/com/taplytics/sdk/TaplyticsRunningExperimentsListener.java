package com.taplytics.sdk;

import java.util.Map;

public abstract interface TaplyticsRunningExperimentsListener
{
  public abstract void runningExperimentsAndVariation(Map<String, String> paramMap);
}

/* Location:
 * Qualified Name:     com.taplytics.sdk.TaplyticsRunningExperimentsListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */