package com.amazon.insights.core;

import android.content.Context;
import com.amazon.insights.InsightsCredentials;
import com.amazon.insights.InsightsProcessingService;
import com.amazon.insights.UserProfile;
import com.amazon.insights.core.configuration.Configuration;
import com.amazon.insights.core.configuration.HttpCachingConfiguration;
import com.amazon.insights.core.http.ClientInfoInterceptor;
import com.amazon.insights.core.http.DefaultHttpClient;
import com.amazon.insights.core.http.HttpClient;
import com.amazon.insights.core.http.LogInterceptor;
import com.amazon.insights.core.http.SDKInfoInterceptor;
import com.amazon.insights.core.http.SignatureInterceptor;
import com.amazon.insights.core.idresolver.Id;
import com.amazon.insights.core.idresolver.SharedPrefsUniqueIdService;
import com.amazon.insights.core.idresolver.UniqueIdService;
import com.amazon.insights.core.system.AndroidSystem;
import com.amazon.insights.core.system.System;
import com.amazon.insights.core.util.SDKInfo;
import com.amazon.insights.delivery.DefaultDeliveryClient;
import com.amazon.insights.delivery.DeliveryClient;
import com.amazon.insights.profile.DefaultUserProfile;
import java.util.Map;

public class DefaultInsightsContext
  implements InsightsContext
{
  private final Configuration configuration;
  private final InsightsCredentials credentials;
  private final DeliveryClient deliveryClient;
  private final HttpClient httpClient;
  private final SDKInfo sdkInfo;
  private final System system;
  private Id uniqueId;
  private final UniqueIdService uniqueIdService;
  private final UserProfile userProfile;
  
  public DefaultInsightsContext(InsightsCredentials paramInsightsCredentials, Context paramContext, UserProfile paramUserProfile, SDKInfo paramSDKInfo, boolean paramBoolean, Map<String, String> paramMap)
  {
    credentials = paramInsightsCredentials;
    userProfile = paramUserProfile;
    sdkInfo = paramSDKInfo;
    system = new AndroidSystem(paramContext, paramInsightsCredentials);
    uniqueIdService = SharedPrefsUniqueIdService.newInstance();
    uniqueId = uniqueIdService.getUniqueId(this);
    httpClient = new DefaultHttpClient();
    httpClient.addInterceptor(new SDKInfoInterceptor(paramSDKInfo));
    httpClient.addInterceptor(new ClientInfoInterceptor(paramContext));
    httpClient.addInterceptor(new SignatureInterceptor(paramInsightsCredentials.getPrivateKey()));
    httpClient.addInterceptor(new LogInterceptor());
    configuration = HttpCachingConfiguration.newInstance(this, paramMap);
    deliveryClient = DefaultDeliveryClient.newInstance(this, paramBoolean);
    InsightsProcessingService.cancelPendingIntent(paramContext, "SubmitMeasurements");
    InsightsProcessingService.cancelPendingIntent(paramContext, "SyncConfiguration");
  }
  
  public static InsightsContext newInstance(InsightsCredentials paramInsightsCredentials, Context paramContext, SDKInfo paramSDKInfo, boolean paramBoolean, Map<String, String> paramMap)
  {
    return new DefaultInsightsContext(paramInsightsCredentials, paramContext, new DefaultUserProfile(), paramSDKInfo, paramBoolean, paramMap);
  }
  
  public Configuration getConfiguration()
  {
    return configuration;
  }
  
  public InsightsCredentials getCredentials()
  {
    return credentials;
  }
  
  public DeliveryClient getDeliveryClient()
  {
    return deliveryClient;
  }
  
  public HttpClient getHttpClient()
  {
    return httpClient;
  }
  
  public SDKInfo getSDKInfo()
  {
    return sdkInfo;
  }
  
  public System getSystem()
  {
    return system;
  }
  
  public Id getUniqueId()
  {
    return uniqueId;
  }
  
  public UserProfile getUserProfile()
  {
    return userProfile;
  }
  
  public void synchronize()
  {
    uniqueId = uniqueIdService.getUniqueId(this);
    configuration.refresh();
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.core.DefaultInsightsContext
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */