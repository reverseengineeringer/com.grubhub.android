package com.amazon.insights.impl;

import com.amazon.insights.InsightsCallback;
import com.amazon.insights.InsightsHandler;
import com.amazon.insights.VariationSet;
import com.amazon.insights.error.InsightsError;

class DisabledAmazonInsights$1$1
  implements InsightsHandler<VariationSet>
{
  DisabledAmazonInsights$1$1(DisabledAmazonInsights.1 param1) {}
  
  public void setCallback(InsightsCallback<VariationSet> paramInsightsCallback)
  {
    paramInsightsCallback.onError(new InsightsError()
    {
      public String getMessage()
      {
        return "The Amazon Insights SDK was not initialized";
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.impl.DisabledAmazonInsights.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */