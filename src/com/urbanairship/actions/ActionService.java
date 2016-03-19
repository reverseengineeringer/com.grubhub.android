package com.urbanairship.actions;

import android.app.Application;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import com.urbanairship.Autopilot;
import com.urbanairship.Logger;
import com.urbanairship.json.JsonException;
import com.urbanairship.json.JsonMap;
import com.urbanairship.json.JsonValue;
import com.urbanairship.push.PushMessage;
import com.urbanairship.util.UAStringUtil;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class ActionService
  extends Service
{
  public static final String ACTION_RUN_ACTIONS = "com.urbanairship.actionservice.ACTION_RUN_ACTIONS";
  public static final String EXTRA_ACTIONS_BUNDLE = "com.urbanairship.actionservice.EXTRA_ACTIONS";
  @Deprecated
  public static final String EXTRA_ACTIONS_PAYLOAD = "com.urbanairship.actionservice.EXTRA_ACTIONS_PAYLOAD";
  public static final String EXTRA_METADATA = "com.urbanairship.actionservice.EXTRA_METADATA";
  @Deprecated
  public static final String EXTRA_PUSH_BUNDLE = "com.urbanairship.actionservice.EXTRA_PUSH_BUNDLE";
  public static final String EXTRA_SITUATION = "com.urbanairship.actionservice.EXTRA_SITUATION";
  private final ActionRunRequestFactory actionRunRequestFactory;
  private int lastStartId = 0;
  private int runningActions = 0;
  
  public ActionService()
  {
    this(new ActionRunRequestFactory());
  }
  
  ActionService(ActionRunRequestFactory paramActionRunRequestFactory)
  {
    actionRunRequestFactory = paramActionRunRequestFactory;
  }
  
  private static Bundle createActionsBundle(String paramString)
  {
    localBundle = new Bundle();
    if (UAStringUtil.isEmpty(paramString)) {
      return localBundle;
    }
    try
    {
      Object localObject = JsonValue.parseString(paramString).getMap();
      if (localObject != null)
      {
        localObject = ((JsonMap)localObject).iterator();
        while (((Iterator)localObject).hasNext())
        {
          Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
          localBundle.putParcelable((String)localEntry.getKey(), new ActionValue((JsonValue)localEntry.getValue()));
        }
      }
      return localBundle;
    }
    catch (JsonException localJsonException)
    {
      Logger.error("Unable to parse action payload: " + paramString);
    }
  }
  
  private void onRunActions(Intent paramIntent)
  {
    Bundle localBundle1 = paramIntent.getBundleExtra("com.urbanairship.actionservice.EXTRA_ACTIONS");
    if (localBundle1 == null) {
      localBundle1 = new Bundle();
    }
    for (;;)
    {
      Situation localSituation = (Situation)paramIntent.getSerializableExtra("com.urbanairship.actionservice.EXTRA_SITUATION");
      Bundle localBundle2 = paramIntent.getBundleExtra("com.urbanairship.actionservice.EXTRA_METADATA");
      if (localBundle2 == null) {
        localBundle2 = new Bundle();
      }
      for (;;)
      {
        localBundle1.putAll(createActionsBundle(paramIntent.getStringExtra("com.urbanairship.actionservice.EXTRA_ACTIONS_PAYLOAD")));
        paramIntent = (Bundle)paramIntent.getParcelableExtra("com.urbanairship.actionservice.EXTRA_PUSH_BUNDLE");
        if (paramIntent != null) {
          localBundle2.putParcelable("com.urbanairship.PUSH_MESSAGE", new PushMessage(paramIntent));
        }
        if (localBundle1.isEmpty()) {
          Logger.debug("ActionService - No actions to run.");
        }
        for (;;)
        {
          return;
          paramIntent = localBundle1.keySet().iterator();
          while (paramIntent.hasNext())
          {
            String str = (String)paramIntent.next();
            runningActions += 1;
            actionRunRequestFactory.createActionRequest(str).setMetadata(localBundle2).setValue((ActionValue)localBundle1.getParcelable(str)).setSituation(localSituation).run(new ActionCompletionCallback()
            {
              public void onFinish(ActionArguments paramAnonymousActionArguments, ActionResult paramAnonymousActionResult)
              {
                ActionService.access$010(ActionService.this);
                if (runningActions == 0) {
                  stopSelf(lastStartId);
                }
              }
            });
          }
        }
      }
    }
  }
  
  public static void runActions(Context paramContext, String paramString, Situation paramSituation, Bundle paramBundle)
  {
    paramString = createActionsBundle(paramString);
    if (paramString.isEmpty()) {
      return;
    }
    Intent localIntent = new Intent("com.urbanairship.actionservice.ACTION_RUN_ACTIONS").setClass(paramContext, ActionService.class).putExtra("com.urbanairship.actionservice.EXTRA_ACTIONS", paramString);
    paramString = paramSituation;
    if (paramSituation == null) {
      paramString = Situation.MANUAL_INVOCATION;
    }
    paramString = localIntent.putExtra("com.urbanairship.actionservice.EXTRA_SITUATION", paramString);
    if (paramBundle != null) {
      paramString.putExtra("com.urbanairship.actionservice.EXTRA_METADATA", paramBundle);
    }
    paramContext.startService(paramString);
  }
  
  public static void runActions(Context paramContext, Map<String, ActionValue> paramMap, Situation paramSituation, Bundle paramBundle)
  {
    if (paramMap.isEmpty()) {
      return;
    }
    Object localObject = new Bundle();
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      ((Bundle)localObject).putParcelable((String)localEntry.getKey(), (Parcelable)localEntry.getValue());
    }
    localObject = new Intent("com.urbanairship.actionservice.ACTION_RUN_ACTIONS").setClass(paramContext, ActionService.class).putExtra("com.urbanairship.actionservice.EXTRA_ACTIONS", (Bundle)localObject);
    paramMap = paramSituation;
    if (paramSituation == null) {
      paramMap = Situation.MANUAL_INVOCATION;
    }
    paramMap = ((Intent)localObject).putExtra("com.urbanairship.actionservice.EXTRA_SITUATION", paramMap);
    if (paramBundle != null) {
      paramMap.putExtra("com.urbanairship.actionservice.EXTRA_METADATA", paramBundle);
    }
    paramContext.startService(paramMap);
  }
  
  @Deprecated
  public static void runActionsPayload(Context paramContext, String paramString, Situation paramSituation)
  {
    runActions(paramContext, paramString, paramSituation, null);
  }
  
  @Deprecated
  public static void runActionsPayload(Context paramContext, String paramString, Situation paramSituation, PushMessage paramPushMessage)
  {
    Bundle localBundle = new Bundle();
    if (paramPushMessage != null) {
      localBundle.putParcelable("com.urbanairship.PUSH_MESSAGE", paramPushMessage);
    }
    runActions(paramContext, paramString, paramSituation, localBundle);
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }
  
  public void onCreate()
  {
    super.onCreate();
    Autopilot.automaticTakeOff(getApplicationContext());
  }
  
  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    Autopilot.automaticTakeOff((Application)getApplicationContext());
    lastStartId = paramInt2;
    if ((paramIntent != null) && ("com.urbanairship.actionservice.ACTION_RUN_ACTIONS".equals(paramIntent.getAction())))
    {
      Logger.verbose("ActionService - Received intent: " + paramIntent.getAction() + " startId: " + paramInt2);
      onRunActions(paramIntent);
    }
    if (runningActions == 0) {
      stopSelf(paramInt2);
    }
    return 2;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.actions.ActionService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */