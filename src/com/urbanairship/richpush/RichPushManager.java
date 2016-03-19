package com.urbanairship.richpush;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.v4.content.o;
import com.urbanairship.BaseManager;
import com.urbanairship.Logger;
import com.urbanairship.PreferenceDataStore;
import com.urbanairship.UAirship;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

public class RichPushManager
  extends BaseManager
{
  public static final String RICH_PUSH_KEY = "_uamid";
  private BroadcastReceiver foregroundReceiver;
  private final RichPushInbox inbox;
  private final List<RichPushManager.Listener> listeners = new ArrayList();
  private final AtomicInteger refreshMessageRequestCount = new AtomicInteger();
  private final RichPushUser user;
  
  public RichPushManager(Context paramContext, PreferenceDataStore paramPreferenceDataStore)
  {
    this(new RichPushUser(paramPreferenceDataStore), new RichPushInbox(paramContext));
  }
  
  RichPushManager(RichPushUser paramRichPushUser, RichPushInbox paramRichPushInbox)
  {
    user = paramRichPushUser;
    inbox = paramRichPushInbox;
  }
  
  private List<RichPushManager.Listener> getListeners()
  {
    synchronized (listeners)
    {
      ArrayList localArrayList = new ArrayList(listeners);
      return localArrayList;
    }
  }
  
  public static boolean isRichPushMessage(Bundle paramBundle)
  {
    return paramBundle.containsKey("_uamid");
  }
  
  public static boolean isRichPushMessage(Map<String, String> paramMap)
  {
    return paramMap.containsKey("_uamid");
  }
  
  private void onMessagesUpdate(boolean paramBoolean)
  {
    Iterator localIterator = getListeners().iterator();
    while (localIterator.hasNext())
    {
      RichPushManager.Listener localListener = (RichPushManager.Listener)localIterator.next();
      try
      {
        localListener.onUpdateMessages(paramBoolean);
      }
      catch (Exception localException)
      {
        Logger.error("RichPushManager - Unable to complete onUpdateMessages() callback.", localException);
      }
    }
  }
  
  private void onUserUpdate(boolean paramBoolean)
  {
    Iterator localIterator = getListeners().iterator();
    while (localIterator.hasNext())
    {
      RichPushManager.Listener localListener = (RichPushManager.Listener)localIterator.next();
      try
      {
        localListener.onUpdateUser(paramBoolean);
      }
      catch (Exception localException)
      {
        Logger.error("RichPushManager - Unable to complete onUpdateUser() callback.", localException);
      }
    }
  }
  
  private void refreshMessages(boolean paramBoolean, final RichPushManager.RefreshMessagesCallback paramRefreshMessagesCallback)
  {
    if ((isRefreshingMessages()) && (!paramBoolean))
    {
      Logger.debug("Skipping refresh messages, messages are already refreshing. Callback will not be triggered.");
      return;
    }
    paramRefreshMessagesCallback = new RichPushManager.UpdateResultReceiver()
    {
      public void onUpdate(boolean paramAnonymousBoolean)
      {
        if (refreshMessageRequestCount.compareAndSet(val$requestNumber, 0)) {
          RichPushManager.this.onMessagesUpdate(paramAnonymousBoolean);
        }
        if (paramRefreshMessagesCallback != null) {
          paramRefreshMessagesCallback.onRefreshMessages(paramAnonymousBoolean);
        }
      }
    };
    Logger.debug("RichPushManager - Starting update service.");
    Context localContext = UAirship.getApplicationContext();
    localContext.startService(new Intent(localContext, RichPushUpdateService.class).setAction("com.urbanairship.richpush.MESSAGES_UPDATE").putExtra("com.urbanairship.richpush.RESULT_RECEIVER", paramRefreshMessagesCallback));
  }
  
  public void addListener(RichPushManager.Listener paramListener)
  {
    synchronized (listeners)
    {
      listeners.add(paramListener);
      return;
    }
  }
  
  public RichPushInbox getRichPushInbox()
  {
    try
    {
      RichPushInbox localRichPushInbox = inbox;
      return localRichPushInbox;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public RichPushUser getRichPushUser()
  {
    try
    {
      RichPushUser localRichPushUser = user;
      return localRichPushUser;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  protected void init()
  {
    inbox.refresh();
    updateUser(false);
    foregroundReceiver = new BroadcastReceiver()
    {
      public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
      {
        refreshMessages();
      }
    };
    o localo = o.a(UAirship.getApplicationContext());
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("com.urbanairship.analytics.APP_FOREGROUND");
    localo.a(foregroundReceiver, localIntentFilter);
    UAirship.getApplicationContext().registerReceiver(foregroundReceiver, localIntentFilter);
  }
  
  public boolean isRefreshingMessages()
  {
    return refreshMessageRequestCount.get() > 0;
  }
  
  public void refreshMessages()
  {
    refreshMessages(false);
  }
  
  public void refreshMessages(RichPushManager.RefreshMessagesCallback paramRefreshMessagesCallback)
  {
    refreshMessages(true, paramRefreshMessagesCallback);
  }
  
  public void refreshMessages(boolean paramBoolean)
  {
    refreshMessages(paramBoolean, null);
  }
  
  public void removeListener(RichPushManager.Listener paramListener)
  {
    synchronized (listeners)
    {
      listeners.remove(paramListener);
      return;
    }
  }
  
  protected void tearDown()
  {
    if (foregroundReceiver != null)
    {
      UAirship.getApplicationContext().unregisterReceiver(foregroundReceiver);
      foregroundReceiver = null;
    }
  }
  
  @Deprecated
  public void updateUser()
  {
    updateUser(true);
  }
  
  public void updateUser(boolean paramBoolean)
  {
    RichPushManager.UpdateResultReceiver local3 = new RichPushManager.UpdateResultReceiver()
    {
      public void onUpdate(boolean paramAnonymousBoolean)
      {
        RichPushManager.this.onUserUpdate(paramAnonymousBoolean);
      }
    };
    Logger.debug("RichPushManager - Starting update service.");
    Context localContext = UAirship.getApplicationContext();
    localContext.startService(new Intent(localContext, RichPushUpdateService.class).setAction("com.urbanairship.richpush.USER_UPDATE").putExtra("com.urbanairship.richpush.RESULT_RECEIVER", local3).putExtra("com.urbanairship.richpush.EXTRA_FORCEFULLY", paramBoolean));
  }
  
  @Deprecated
  public void updateUserIfNecessary()
  {
    updateUser(false);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.richpush.RichPushManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */