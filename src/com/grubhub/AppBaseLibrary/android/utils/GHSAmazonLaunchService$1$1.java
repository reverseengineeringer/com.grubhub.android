package com.grubhub.AppBaseLibrary.android.utils;

import com.amazon.insights.error.InsightsError;
import java.util.HashMap;

class GHSAmazonLaunchService$1$1
  extends HashMap<String, String>
{
  GHSAmazonLaunchService$1$1(GHSAmazonLaunchService.1 param1, InsightsError paramInsightsError)
  {
    put("ErrorMsg", a.getMessage());
    put("ErrorType", a.getClass().getSimpleName());
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.utils.GHSAmazonLaunchService.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */