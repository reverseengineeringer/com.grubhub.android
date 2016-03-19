package com.grubhub.AppBaseLibrary.android.utils;

import android.app.IntentService;
import android.content.Intent;
import android.support.v4.content.o;
import com.amazon.insights.ABTestClient;
import com.amazon.insights.AmazonInsights;
import com.amazon.insights.InsightsCallback;
import com.amazon.insights.InsightsHandler;
import com.amazon.insights.Variation;
import com.amazon.insights.VariationSet;
import com.amazon.insights.error.InsightsError;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import java.util.HashMap;

public class GHSAmazonLaunchService
  extends IntentService
{
  private ABTestClient a;
  private final String b = "android_google_wallet_newPayments_project";
  private final String c = "androidShouldEnableGoogleWalletMaster";
  private final String d = "android_yummy_rummy_project";
  private final String e = "androidShouldEnableYummyRummy";
  private final String f = "android_Android_Pay_project";
  private final String g = "androidShowAndroidPayBranding";
  private final String h = "android_future_orders_project";
  private final String i = "androidShouldEnableFutureOrders";
  private final String j = "android_order_tracking_project";
  private final String k = "androidShouldEnableOrderTracking";
  private final String l = "android_urban_airship_project";
  private final String m = "androidShouldEnableUrbanAirship";
  private final String n = "AmazonABFailed";
  private final String o = "ErrorMsg";
  private final String p = "ErrorType";
  
  public GHSAmazonLaunchService()
  {
    super("GHSAmazonLaunchService");
  }
  
  public GHSAmazonLaunchService(String paramString)
  {
    super(paramString);
  }
  
  private void a()
  {
    if (!GHSApplication.m())
    {
      b();
      return;
    }
    a.getVariations(new String[] { "android_google_wallet_newPayments_project", "android_Android_Pay_project", "android_yummy_rummy_project", "android_future_orders_project", "android_order_tracking_project", "android_urban_airship_project" }).setCallback(new InsightsCallback()
    {
      public void a(VariationSet paramAnonymousVariationSet)
      {
        GHSAmazonLaunchService.a(GHSAmazonLaunchService.this, paramAnonymousVariationSet);
        GHSAmazonLaunchService.b(GHSAmazonLaunchService.this, paramAnonymousVariationSet);
        GHSAmazonLaunchService.c(GHSAmazonLaunchService.this, paramAnonymousVariationSet);
        GHSAmazonLaunchService.d(GHSAmazonLaunchService.this, paramAnonymousVariationSet);
        GHSAmazonLaunchService.e(GHSAmazonLaunchService.this, paramAnonymousVariationSet);
        GHSAmazonLaunchService.f(GHSAmazonLaunchService.this, paramAnonymousVariationSet);
        GHSAmazonLaunchService.a(GHSAmazonLaunchService.this);
      }
      
      public void onError(final InsightsError paramAnonymousInsightsError)
      {
        com.grubhub.AppBaseLibrary.android.utils.e.a.a.a("AmazonABFailed", new HashMap() {});
        GHSAmazonLaunchService.a(GHSAmazonLaunchService.this);
      }
    });
  }
  
  private void a(VariationSet paramVariationSet)
  {
    if (paramVariationSet == null) {
      return;
    }
    boolean bool = paramVariationSet.getVariation("android_Android_Pay_project").getVariableAsBoolean("androidShowAndroidPayBranding", false);
    GHSApplication.a().b().n(bool);
  }
  
  private void b()
  {
    Intent localIntent = new Intent("com.grubhub.AppBaseLibrary.android.utils.BROADCAST");
    o.a(this).a(localIntent);
  }
  
  private void b(VariationSet paramVariationSet)
  {
    if (paramVariationSet == null) {
      return;
    }
    boolean bool = paramVariationSet.getVariation("android_google_wallet_newPayments_project").getVariableAsBoolean("androidShouldEnableGoogleWalletMaster", false);
    GHSApplication.a().b().g(bool);
  }
  
  private void c(VariationSet paramVariationSet)
  {
    if (paramVariationSet == null) {
      return;
    }
    boolean bool = paramVariationSet.getVariation("android_yummy_rummy_project").getVariableAsBoolean("androidShouldEnableYummyRummy", false);
    GHSApplication.a().b().m(bool);
  }
  
  private void d(VariationSet paramVariationSet)
  {
    if (paramVariationSet == null) {
      return;
    }
    boolean bool = paramVariationSet.getVariation("android_future_orders_project").getVariableAsBoolean("androidShouldEnableFutureOrders", false);
    GHSApplication.a().b().d(bool);
  }
  
  private void e(VariationSet paramVariationSet)
  {
    if (paramVariationSet == null) {
      return;
    }
    boolean bool = paramVariationSet.getVariation("android_order_tracking_project").getVariableAsBoolean("androidShouldEnableOrderTracking", false);
    GHSApplication.a().b().c(bool);
  }
  
  private void f(VariationSet paramVariationSet)
  {
    if (paramVariationSet == null) {
      return;
    }
    boolean bool = paramVariationSet.getVariation("android_urban_airship_project").getVariableAsBoolean("androidShouldEnableUrbanAirship", false);
    GHSApplication.a().b().b(bool);
    com.grubhub.AppBaseLibrary.android.utils.urbanAirship.a.a().a(bool);
  }
  
  public void onCreate()
  {
    super.onCreate();
    a = a.a().getABTestClient();
  }
  
  protected void onHandleIntent(Intent paramIntent)
  {
    a();
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.utils.GHSAmazonLaunchService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */