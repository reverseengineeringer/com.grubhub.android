package com.amazon.insights;

import com.amazon.insights.core.log.Logger;
import com.amazon.insights.error.InsightsError;

public abstract class InsightsCallback<T>
{
  private static final Logger logger = Logger.getLogger(InsightsCallback.class);
  
  public abstract void onComplete(T paramT);
  
  public void onError(InsightsError paramInsightsError)
  {
    logger.deve(paramInsightsError.getMessage());
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.InsightsCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */