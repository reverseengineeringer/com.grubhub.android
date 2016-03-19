package com.amazon.insights;

import android.app.AlarmManager;
import android.app.IntentService;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.amazon.insights.core.util.StringUtil;

public class InsightsProcessingService
  extends IntentService
{
  public static final String ACTION_SUBMIT_MEASUREMENTS = "SubmitMeasurements";
  public static final String ACTION_SYNC_CONFIGURATION = "SyncConfiguration";
  private static final String AVAILABILITY_SERVICE_WORKER = "AvailabilityServiceWorker";
  
  public InsightsProcessingService()
  {
    super("AvailabilityServiceWorker");
  }
  
  public static void cancelPendingIntent(Context paramContext, String paramString)
  {
    if (paramContext != null)
    {
      paramString = getPendingIntent(paramContext, paramString, null);
      paramContext = (AlarmManager)paramContext.getSystemService("alarm");
      if ((paramContext != null) && (paramString != null)) {
        paramContext.cancel(paramString);
      }
    }
  }
  
  private static PendingIntent getPendingIntent(Context paramContext, String paramString, Bundle paramBundle)
  {
    if (paramContext == null) {
      return null;
    }
    if (StringUtil.isNullOrEmpty(paramString)) {
      throw new RuntimeException("'intentAction' cannot be null");
    }
    paramString = new Intent(paramString);
    paramString.setClass(paramContext.getApplicationContext(), InsightsProcessingService.class);
    if (paramBundle != null) {
      paramString.putExtras(paramBundle);
    }
    return PendingIntent.getService(paramContext.getApplicationContext(), 0, paramString, 0);
  }
  
  public void onCreate()
  {
    super.onCreate();
  }
  
  protected void onHandleIntent(Intent paramIntent)
  {
    cancelPendingIntent(getApplicationContext(), "SubmitMeasurements");
    cancelPendingIntent(getApplicationContext(), "SyncConfiguration");
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.InsightsProcessingService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */