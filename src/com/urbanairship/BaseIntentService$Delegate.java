package com.urbanairship;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;

public abstract class BaseIntentService$Delegate
{
  private final Context context;
  private final PreferenceDataStore dataStore;
  
  public BaseIntentService$Delegate(Context paramContext, PreferenceDataStore paramPreferenceDataStore)
  {
    context = paramContext;
    dataStore = paramPreferenceDataStore;
  }
  
  protected Context getContext()
  {
    return context;
  }
  
  protected PreferenceDataStore getDataStore()
  {
    return dataStore;
  }
  
  protected long getInitialBackoff(Intent paramIntent)
  {
    return 10000L;
  }
  
  protected long getMaxBackOff(Intent paramIntent)
  {
    return 5120000L;
  }
  
  protected abstract void onHandleIntent(Intent paramIntent);
  
  public void retryIntent(Intent paramIntent)
  {
    Object localObject = new Intent(paramIntent);
    ((Intent)localObject).removeExtra("android.support.content.wakelockid");
    long l = ((Intent)localObject).getLongExtra("com.urbanairship.EXTRA_BACK_OFF_MS", 0L);
    if (l <= 0L) {}
    for (l = getInitialBackoff((Intent)localObject);; l = Math.min(l * 2L, getMaxBackOff((Intent)localObject)))
    {
      ((Intent)localObject).putExtra("com.urbanairship.EXTRA_BACK_OFF_MS", l);
      Logger.verbose("BaseIntentService - Scheduling intent " + ((Intent)localObject).getAction() + " in " + l + " milliseconds.");
      paramIntent = (AlarmManager)context.getSystemService("alarm");
      localObject = PendingIntent.getService(context, 0, (Intent)localObject, 134217728);
      paramIntent.set(3, l + SystemClock.elapsedRealtime(), (PendingIntent)localObject);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.BaseIntentService.Delegate
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */