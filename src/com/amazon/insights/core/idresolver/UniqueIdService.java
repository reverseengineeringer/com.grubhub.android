package com.amazon.insights.core.idresolver;

import com.amazon.insights.core.InsightsContext;

public abstract interface UniqueIdService
{
  public abstract Id getUniqueId(InsightsContext paramInsightsContext);
}

/* Location:
 * Qualified Name:     com.amazon.insights.core.idresolver.UniqueIdService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */