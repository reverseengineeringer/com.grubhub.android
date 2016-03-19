package com.taplytics.sdk;

import java.util.Map;

public abstract interface TaplyticsCodeExperimentListener
{
  public abstract void baselineVariation(Map<String, Object> paramMap);
  
  public abstract void experimentUpdated();
  
  public abstract void experimentVariation(String paramString, Map<String, Object> paramMap);
}

/* Location:
 * Qualified Name:     com.taplytics.sdk.TaplyticsCodeExperimentListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */