package com.amazon.insights.abtest.cache;

import com.amazon.insights.core.InsightsContext;

public class VariationCaches
{
  public static VariationCache tryGetFileVariationCache(InsightsContext paramInsightsContext)
  {
    return new FileVariationCache(paramInsightsContext);
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.abtest.cache.VariationCaches
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */