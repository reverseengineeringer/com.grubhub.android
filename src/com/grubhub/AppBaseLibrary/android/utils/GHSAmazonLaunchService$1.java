package com.grubhub.AppBaseLibrary.android.utils;

import com.amazon.insights.InsightsCallback;
import com.amazon.insights.VariationSet;
import com.amazon.insights.error.InsightsError;
import com.grubhub.AppBaseLibrary.android.utils.e.a.a;
import java.util.HashMap;

class GHSAmazonLaunchService$1
  extends InsightsCallback<VariationSet>
{
  GHSAmazonLaunchService$1(GHSAmazonLaunchService paramGHSAmazonLaunchService) {}
  
  public void a(VariationSet paramVariationSet)
  {
    GHSAmazonLaunchService.a(a, paramVariationSet);
    GHSAmazonLaunchService.b(a, paramVariationSet);
    GHSAmazonLaunchService.c(a, paramVariationSet);
    GHSAmazonLaunchService.d(a, paramVariationSet);
    GHSAmazonLaunchService.e(a, paramVariationSet);
    GHSAmazonLaunchService.f(a, paramVariationSet);
    GHSAmazonLaunchService.a(a);
  }
  
  public void onError(final InsightsError paramInsightsError)
  {
    a.a("AmazonABFailed", new HashMap() {});
    GHSAmazonLaunchService.a(a);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.utils.GHSAmazonLaunchService.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */