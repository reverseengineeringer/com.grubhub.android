package com.taplytics.sdk;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.Drawable;
import com.taplytics.bc;
import com.taplytics.bd;
import com.taplytics.be;
import com.taplytics.bf;
import com.taplytics.bg;
import com.taplytics.bh;
import com.taplytics.bi;
import com.taplytics.bj;
import com.taplytics.bk;
import com.taplytics.bl;
import com.taplytics.bm;
import com.taplytics.bn;
import com.taplytics.bo;
import com.taplytics.bp;
import com.taplytics.bq;
import com.taplytics.br;
import com.taplytics.bs;
import com.taplytics.bt;
import com.taplytics.bu;
import com.taplytics.bv;
import com.taplytics.bx;
import com.taplytics.by;
import com.taplytics.bz;
import com.taplytics.ca;
import com.taplytics.cb;
import com.taplytics.fy;
import com.taplytics.gq;
import java.util.Map;
import org.json.JSONObject;

public class Taplytics
{
  public static final String TaplyticsOptionSourceAdobe = "Adobe";
  public static final String TaplyticsOptionSourceAmplitude = "Amplitude";
  public static final String TaplyticsOptionSourceFlurry = "Flurry";
  public static final String TaplyticsOptionSourceGoogleAnalytics = "GA";
  public static final String TaplyticsOptionSourceLocalytics = "Localytics";
  public static final String TaplyticsOptionSourceMixpanel = "Mixpanel";
  
  public static void addPushNotificationListener(TaplyticsPushNotificationListener paramTaplyticsPushNotificationListener)
  {
    fy.e().a(new by(paramTaplyticsPushNotificationListener));
  }
  
  public static void delayLoad(int paramInt1, int paramInt2, TaplyticsDelayLoadListener paramTaplyticsDelayLoadListener)
  {
    fy.e().a(new bk(paramTaplyticsDelayLoadListener, paramInt1, paramInt2));
  }
  
  public static void delayLoad(int paramInt, TaplyticsDelayLoadListener paramTaplyticsDelayLoadListener)
  {
    fy.e().a(new bj(paramTaplyticsDelayLoadListener, paramInt));
  }
  
  public static void delayLoad(Activity paramActivity, Drawable paramDrawable, int paramInt)
  {
    fy.e().a(new bh(paramActivity, paramDrawable, paramInt));
  }
  
  public static void delayLoad(Activity paramActivity, Drawable paramDrawable, int paramInt1, int paramInt2)
  {
    fy.e().a(new bi(paramActivity, paramDrawable, paramInt1, paramInt2));
  }
  
  public static void deviceLink(String paramString)
  {
    fy.e().a(new bf(paramString));
  }
  
  public static void getRunningExperimentsAndVariations(TaplyticsRunningExperimentsListener paramTaplyticsRunningExperimentsListener)
  {
    fy.e().a(new bx(paramTaplyticsRunningExperimentsListener));
  }
  
  public static void logEvent(String paramString)
  {
    logEvent(paramString, null, null);
  }
  
  public static void logEvent(String paramString, Number paramNumber)
  {
    logEvent(paramString, paramNumber, null);
  }
  
  public static void logEvent(String paramString, Number paramNumber, JSONObject paramJSONObject)
  {
    fy.e().a(new bd(paramString, paramNumber, paramJSONObject));
  }
  
  public static void logGAEvent(Object paramObject1, Object paramObject2)
  {
    fy.e().a(new bl(paramObject1, paramObject2));
  }
  
  public static void logRevenue(String paramString, Number paramNumber)
  {
    logRevenue(paramString, paramNumber, null);
  }
  
  public static void logRevenue(String paramString, Number paramNumber, JSONObject paramJSONObject)
  {
    fy.e().a(new be(paramString, paramNumber, paramJSONObject));
  }
  
  public static void overlayOff()
  {
    gq.h().v();
  }
  
  public static void overlayOn()
  {
    gq.h().w();
  }
  
  public static void removePushNotificationListener(TaplyticsPushNotificationListener paramTaplyticsPushNotificationListener)
  {
    fy.e().a(new bz(paramTaplyticsPushNotificationListener));
  }
  
  public static void removePushNotificationOpenedListener()
  {
    fy.e().a(new bp());
  }
  
  public static void resetAppUser(TaplyticsResetUserListener paramTaplyticsResetUserListener)
  {
    fy.e().a(new bg(paramTaplyticsResetUserListener));
  }
  
  public static void runCodeBlock(String paramString, CodeBlockListener paramCodeBlockListener)
  {
    fy.e().a(new bc(paramString, paramCodeBlockListener));
  }
  
  public static void runCodeBlockSync(String paramString, CodeBlockListener paramCodeBlockListener)
  {
    fy.e().a(new bn(paramString, paramCodeBlockListener));
  }
  
  public static void runCodeExperiment(String paramString, TaplyticsCodeExperimentListener paramTaplyticsCodeExperimentListener)
  {
    fy.e().a(new bu(paramString, paramTaplyticsCodeExperimentListener));
  }
  
  public static void runCodeExperimentSync(String paramString, TaplyticsCodeExperimentListener paramTaplyticsCodeExperimentListener)
  {
    fy.e().a(new bv(paramString, paramTaplyticsCodeExperimentListener));
  }
  
  public static void setPushNotificationIntentListener(TaplyticsPushNotificationIntentListener paramTaplyticsPushNotificationIntentListener)
  {
    fy.e().a(new ca(paramTaplyticsPushNotificationIntentListener));
  }
  
  public static void setPushNotificationOpenedListener(TaplyticsPushOpenedListener paramTaplyticsPushOpenedListener)
  {
    fy.e().a(new bo(paramTaplyticsPushOpenedListener));
  }
  
  public static void setPushSubscriptionEnabled(boolean paramBoolean, TaplyticsPushSubscriptionChangedListener paramTaplyticsPushSubscriptionChangedListener)
  {
    fy.e().a(new bt(paramBoolean, paramTaplyticsPushSubscriptionChangedListener));
  }
  
  public static void setTaplyticsExperimentsUpatedListener(a parama)
  {
    fy.e().a(new bs(parama));
  }
  
  public static void setTaplyticsPushTokenListener(TaplyticsPushTokenListener paramTaplyticsPushTokenListener)
  {
    fy.e().a(new bm(paramTaplyticsPushTokenListener));
  }
  
  public static void setUserAttributes(JSONObject paramJSONObject)
  {
    fy.e().a(new cb(paramJSONObject));
  }
  
  public static void showMenu()
  {
    fy.e().a(new bq());
  }
  
  public static void startFlurrySession()
  {
    fy.e().a(new br());
  }
  
  public static void startTaplytics(Context paramContext, String paramString)
  {
    fy.e().a(paramContext, paramString, null, null);
  }
  
  public static void startTaplytics(Context paramContext, String paramString, Map<String, Object> paramMap)
  {
    fy.e().a(paramContext, paramString, paramMap, null);
  }
  
  public static void startTaplytics(Context paramContext, String paramString, Map<String, Object> paramMap, TaplyticsExperimentsLoadedListener paramTaplyticsExperimentsLoadedListener)
  {
    fy.e().a(paramContext, paramString, paramMap, paramTaplyticsExperimentsLoadedListener);
  }
}

/* Location:
 * Qualified Name:     com.taplytics.sdk.Taplytics
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */