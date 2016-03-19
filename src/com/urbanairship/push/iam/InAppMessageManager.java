package com.urbanairship.push.iam;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.pm.ActivityInfo;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.urbanairship.BaseManager;
import com.urbanairship.Cancelable;
import com.urbanairship.LifeCycleCallbacks;
import com.urbanairship.Logger;
import com.urbanairship.PreferenceDataStore;
import com.urbanairship.R.animator;
import com.urbanairship.UAirship;
import com.urbanairship.UAirship.OnReadyCallback;
import com.urbanairship.analytics.Analytics;
import com.urbanairship.analytics.Event;
import com.urbanairship.json.JsonException;
import com.urbanairship.util.ManifestUtils;
import com.urbanairship.util.UAStringUtil;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class InAppMessageManager
  extends BaseManager
{
  private static final String AUTO_DISPLAY_ENABLED_KEY = "com.urbanairship.push.iam.AUTO_DISPLAY_ENABLED";
  private static final long BACKGROUND_DELAY_MS = 500L;
  private static final long DEFAULT_ACTIVITY_RESUME_DELAY_MS = 3000L;
  private static final String DISPLAY_ASAP_KEY = "com.urbanairship.push.iam.DISPLAY_ASAP";
  public static final String EXCLUDE_FROM_AUTO_SHOW = "com.urbanairship.push.iam.EXCLUDE_FROM_AUTO_SHOW";
  private static final String IN_APP_TAG = "com.urbanairship.in_app_fragment";
  private static final String KEY_PREFIX = "com.urbanairship.push.iam.";
  private static final String LAST_DISPLAYED_ID_KEY = "com.urbanairship.push.iam.LAST_DISPLAYED_ID";
  private static final String PENDING_IN_APP_MESSAGE_KEY = "com.urbanairship.push.iam.PENDING_IN_APP_MESSAGE";
  private static int activityCount = 0;
  private static Cancelable activityResumedOperation;
  private static boolean isForeground = false;
  private static LifeCycleCallbacks lifeCycleCallbacks;
  private WeakReference<Activity> activityReference;
  private long autoDisplayDelayMs;
  private boolean autoDisplayPendingMessage;
  private InAppMessageFragment currentFragment;
  private InAppMessage currentMessage;
  private final PreferenceDataStore dataStore;
  private final Runnable displayRunnable = new Runnable()
  {
    public void run()
    {
      if (((!autoDisplayPendingMessage) && (!isDisplayAsapEnabled())) || (!isAutoDisplayEnabled())) {}
      Activity localActivity;
      do
      {
        return;
        localActivity = InAppMessageManager.this.getCurrentActivity();
      } while ((localActivity == null) || (!showPendingMessage(localActivity)));
      InAppMessageManager.access$002(InAppMessageManager.this, false);
    }
  };
  private InAppMessageFragmentFactory fragmentFactory;
  private final InAppMessageFragment.Listener fragmentListener = new InAppMessageFragment.Listener()
  {
    public void onFinish(InAppMessageFragment paramAnonymousInAppMessageFragment)
    {
      Logger.verbose("InAppMessageManager - InAppMessageFragment finished: " + paramAnonymousInAppMessageFragment);
      InAppMessage localInAppMessage = paramAnonymousInAppMessageFragment.getMessage();
      paramAnonymousInAppMessageFragment = pendingMessageLock;
      if (localInAppMessage != null) {}
      try
      {
        if (localInAppMessage.equals(getPendingMessage())) {
          setPendingMessage(null);
        }
        if ((localInAppMessage != null) && (localInAppMessage.equals(currentMessage)))
        {
          InAppMessageManager.access$402(InAppMessageManager.this, null);
          if ((isDisplayAsapEnabled()) && (InAppMessageManager.this.getCurrentActivity() != null))
          {
            InAppMessageManager.access$002(InAppMessageManager.this, true);
            handler.removeCallbacks(displayRunnable);
            handler.postDelayed(displayRunnable, autoDisplayDelayMs);
          }
        }
        return;
      }
      finally {}
    }
    
    @TargetApi(11)
    public void onPause(InAppMessageFragment paramAnonymousInAppMessageFragment)
    {
      Logger.verbose("InAppMessageManager - InAppMessageFragment paused: " + paramAnonymousInAppMessageFragment);
      if (paramAnonymousInAppMessageFragment != currentFragment) {}
      do
      {
        return;
        InAppMessageManager.access$302(InAppMessageManager.this, null);
      } while ((paramAnonymousInAppMessageFragment.isDismissed()) || (!paramAnonymousInAppMessageFragment.getActivity().isFinishing()));
      Logger.verbose("InAppMessageManager - InAppMessageFragment's activity is finishing: " + paramAnonymousInAppMessageFragment);
      InAppMessageManager.access$002(InAppMessageManager.this, true);
    }
    
    public void onResume(InAppMessageFragment paramAnonymousInAppMessageFragment)
    {
      Logger.verbose("InAppMessageManager - InAppMessageFragment resumed: " + paramAnonymousInAppMessageFragment);
      if ((currentFragment != null) && (currentFragment != paramAnonymousInAppMessageFragment))
      {
        Logger.debug("InAppMessageManager - Dismissing " + paramAnonymousInAppMessageFragment + " because it is no longer the current fragment.");
        paramAnonymousInAppMessageFragment.dismiss(false);
        return;
      }
      if ((currentMessage == null) || (!currentMessage.equals(paramAnonymousInAppMessageFragment.getMessage())))
      {
        Logger.debug("InAppMessageManager - Dismissing " + paramAnonymousInAppMessageFragment + " because its message is no longer current.");
        paramAnonymousInAppMessageFragment.dismiss(false);
        return;
      }
      InAppMessageManager.access$302(InAppMessageManager.this, paramAnonymousInAppMessageFragment);
    }
  };
  private final Handler handler;
  private final List<InAppMessageManager.Listener> listeners = new ArrayList();
  private final Object pendingMessageLock = new Object();
  
  public InAppMessageManager(PreferenceDataStore paramPreferenceDataStore)
  {
    dataStore = paramPreferenceDataStore;
    autoDisplayDelayMs = 3000L;
    handler = new Handler(Looper.getMainLooper());
    autoDisplayPendingMessage = isDisplayAsapEnabled();
    if (Build.VERSION.SDK_INT >= 11) {
      fragmentFactory = new InAppMessageFragmentFactory()
      {
        public InAppMessageFragment createFragment(InAppMessage paramAnonymousInAppMessage)
        {
          return new InAppMessageFragment();
        }
      };
    }
  }
  
  private Activity getCurrentActivity()
  {
    if (activityReference == null) {
      return null;
    }
    return (Activity)activityReference.get();
  }
  
  @TargetApi(14)
  public static void registerLifeCycleCallbacks(Application paramApplication)
  {
    if (lifeCycleCallbacks == null)
    {
      lifeCycleCallbacks = new LifeCycleCallbacks(paramApplication)
      {
        public void onActivityPaused(Activity paramAnonymousActivity)
        {
          if ((InAppMessageManager.activityResumedOperation != null) && (!InAppMessageManager.activityResumedOperation.isDone()))
          {
            InAppMessageManager.activityResumedOperation.cancel();
            return;
          }
          UAirship.shared().getInAppMessageManager().onActivityPaused(paramAnonymousActivity);
        }
        
        public void onActivityResumed(Activity paramAnonymousActivity)
        {
          InAppMessageManager.access$1102(UAirship.shared(new UAirship.OnReadyCallback()
          {
            public void onAirshipReady(UAirship paramAnonymous2UAirship)
            {
              paramAnonymous2UAirship = (Activity)val$weakReference.get();
              if (paramAnonymous2UAirship != null) {
                UAirship.shared().getInAppMessageManager().onActivityResumed(paramAnonymous2UAirship);
              }
            }
          }));
        }
        
        public void onActivityStarted(Activity paramAnonymousActivity)
        {
          InAppMessageManager.access$908();
          if (!InAppMessageManager.isForeground)
          {
            InAppMessageManager.access$1002(true);
            if (UAirship.isFlying()) {
              UAirship.shared().getInAppMessageManager().onForeground();
            }
          }
          else
          {
            return;
          }
          UAirship.shared(new UAirship.OnReadyCallback()
          {
            public void onAirshipReady(UAirship paramAnonymous2UAirship)
            {
              UAirship.shared().getInAppMessageManager().onForeground();
            }
          });
        }
        
        public void onActivityStopped(Activity paramAnonymousActivity)
        {
          InAppMessageManager.access$910();
          if (InAppMessageManager.activityCount == 0) {
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable()
            {
              public void run()
              {
                if (InAppMessageManager.activityCount == 0) {
                  InAppMessageManager.access$1002(false);
                }
              }
            }, 500L);
          }
        }
      };
      lifeCycleCallbacks.register();
    }
  }
  
  @TargetApi(14)
  public static void unregisterLifeCycleCallbacks()
  {
    if (lifeCycleCallbacks != null) {
      lifeCycleCallbacks.unregister();
    }
  }
  
  public void addListener(InAppMessageManager.Listener paramListener)
  {
    synchronized (listeners)
    {
      listeners.add(paramListener);
      return;
    }
  }
  
  public long getAutoDisplayDelay()
  {
    return autoDisplayDelayMs;
  }
  
  public InAppMessage getCurrentMessage()
  {
    return currentMessage;
  }
  
  public InAppMessageFragmentFactory getFragmentFactory()
  {
    return fragmentFactory;
  }
  
  public InAppMessage getPendingMessage()
  {
    synchronized (pendingMessageLock)
    {
      String str = dataStore.getString("com.urbanairship.push.iam.PENDING_IN_APP_MESSAGE", null);
      if (str != null) {
        try
        {
          InAppMessage localInAppMessage = InAppMessage.parseJson(str);
          return localInAppMessage;
        }
        catch (JsonException localJsonException)
        {
          Logger.error("InAppMessageManager - Failed to read pending in-app message: " + str, localJsonException);
          setPendingMessage(null);
        }
      }
      return null;
    }
  }
  
  protected void init()
  {
    Object localObject = getPendingMessage();
    if ((localObject != null) && (((InAppMessage)localObject).isExpired()))
    {
      Logger.debug("InAppMessageManager - pending in-app message expired.");
      localObject = ResolutionEvent.createExpiredResolutionEvent((InAppMessage)localObject);
      UAirship.shared().getAnalytics().addEvent((Event)localObject);
      setPendingMessage(null);
    }
  }
  
  public boolean isAutoDisplayEnabled()
  {
    return dataStore.getBoolean("com.urbanairship.push.iam.AUTO_DISPLAY_ENABLED", true);
  }
  
  public boolean isDisplayAsapEnabled()
  {
    return dataStore.getBoolean("com.urbanairship.push.iam.DISPLAY_ASAP", false);
  }
  
  void onActivityPaused(Activity paramActivity)
  {
    Logger.verbose("InAppMessageManager - Activity paused: " + paramActivity);
    activityReference = null;
    handler.removeCallbacks(displayRunnable);
  }
  
  void onActivityResumed(Activity paramActivity)
  {
    Logger.verbose("InAppMessageManager - Activity resumed: " + paramActivity);
    ActivityInfo localActivityInfo = ManifestUtils.getActivityInfo(paramActivity.getClass());
    if ((localActivityInfo != null) && (metaData != null) && (metaData.getBoolean("com.urbanairship.push.iam.EXCLUDE_FROM_AUTO_SHOW", false))) {
      Logger.verbose("InAppMessageManager - Activity contains metadata to exclude it from auto showing an in-app message");
    }
    do
    {
      return;
      activityReference = new WeakReference(paramActivity);
      handler.removeCallbacks(displayRunnable);
    } while (!autoDisplayPendingMessage);
    handler.postDelayed(displayRunnable, autoDisplayDelayMs);
  }
  
  void onForeground()
  {
    Logger.verbose("InAppMessageManager - App foregrounded.");
    Object localObject = getPendingMessage();
    if (((currentMessage == null) && (localObject != null)) || ((localObject != null) && (!((InAppMessage)localObject).equals(currentMessage))))
    {
      if (currentMessage != null)
      {
        localObject = ResolutionEvent.createReplacedResolutionEvent(currentMessage, (InAppMessage)localObject);
        UAirship.shared().getAnalytics().addEvent((Event)localObject);
      }
      currentMessage = null;
      autoDisplayPendingMessage = true;
      handler.removeCallbacks(displayRunnable);
      handler.postDelayed(displayRunnable, autoDisplayDelayMs);
    }
  }
  
  public void removeListener(InAppMessageManager.Listener paramListener)
  {
    synchronized (listeners)
    {
      listeners.remove(paramListener);
      return;
    }
  }
  
  public void setAutoDisplayDelay(long paramLong)
  {
    autoDisplayDelayMs = paramLong;
  }
  
  public void setAutoDisplayEnabled(boolean paramBoolean)
  {
    dataStore.put("com.urbanairship.push.iam.AUTO_DISPLAY_ENABLED", paramBoolean);
  }
  
  public void setDisplayAsapEnabled(boolean paramBoolean)
  {
    dataStore.put("com.urbanairship.push.iam.DISPLAY_ASAP", paramBoolean);
    if (paramBoolean) {
      autoDisplayPendingMessage = true;
    }
  }
  
  public void setFragmentFactory(InAppMessageFragmentFactory paramInAppMessageFragmentFactory)
  {
    fragmentFactory = paramInAppMessageFragmentFactory;
  }
  
  public void setPendingMessage(final InAppMessage paramInAppMessage)
  {
    Object localObject = pendingMessageLock;
    if (paramInAppMessage == null) {}
    for (;;)
    {
      try
      {
        dataStore.remove("com.urbanairship.push.iam.PENDING_IN_APP_MESSAGE");
        return;
      }
      finally {}
      InAppMessage localInAppMessage = getPendingMessage();
      if (paramInAppMessage.equals(localInAppMessage)) {
        return;
      }
      handler.post(new Runnable()
      {
        public void run()
        {
          synchronized (listeners)
          {
            Iterator localIterator = listeners.iterator();
            if (localIterator.hasNext()) {
              ((InAppMessageManager.Listener)localIterator.next()).onPendingMessageAvailable(paramInAppMessage);
            }
          }
        }
      });
      dataStore.put("com.urbanairship.push.iam.PENDING_IN_APP_MESSAGE", paramInAppMessage);
      if ((currentMessage == null) && (localInAppMessage != null))
      {
        Logger.debug("InAppMessageManager - pending in-app message replaced.");
        paramInAppMessage = ResolutionEvent.createReplacedResolutionEvent(localInAppMessage, paramInAppMessage);
        UAirship.shared().getAnalytics().addEvent(paramInAppMessage);
      }
      if ((isDisplayAsapEnabled()) && (getCurrentActivity() != null))
      {
        autoDisplayPendingMessage = true;
        handler.removeCallbacks(displayRunnable);
        handler.post(displayRunnable);
      }
    }
  }
  
  @TargetApi(14)
  public boolean showPendingMessage(Activity paramActivity)
  {
    return showPendingMessage(paramActivity, 16908290);
  }
  
  @TargetApi(14)
  public boolean showPendingMessage(Activity paramActivity, int paramInt)
  {
    for (;;)
    {
      synchronized (pendingMessageLock)
      {
        InAppMessage localInAppMessage = getPendingMessage();
        if ((paramActivity == null) || (localInAppMessage == null)) {
          return false;
        }
        if (localInAppMessage.getPosition() == 1)
        {
          j = R.animator.ua_iam_slide_in_top;
          i = R.animator.ua_iam_slide_out_top;
          boolean bool = showPendingMessage(paramActivity, paramInt, j, i);
          return bool;
        }
      }
      int j = R.animator.ua_iam_slide_in_bottom;
      int i = R.animator.ua_iam_slide_out_bottom;
    }
  }
  
  @TargetApi(14)
  public boolean showPendingMessage(Activity paramActivity, int paramInt1, int paramInt2, int paramInt3)
  {
    InAppMessage localInAppMessage;
    synchronized (pendingMessageLock)
    {
      localInAppMessage = getPendingMessage();
      if ((localInAppMessage != null) && (localInAppMessage.isExpired()))
      {
        Logger.debug("InAppMessageManager - Unable to display pending in-app message. Message has expired.");
        paramActivity = ResolutionEvent.createExpiredResolutionEvent(localInAppMessage);
        UAirship.shared().getAnalytics().addEvent(paramActivity);
        setPendingMessage(null);
        return false;
      }
      if (paramActivity == null) {
        break label489;
      }
      if (localInAppMessage != null) {}
    }
    if (Build.VERSION.SDK_INT < 14)
    {
      Logger.error("InAppMessageManager - Unable to show in-app messages on Android versions older than API 14 (Ice Cream Sandwich).");
      return false;
    }
    if (paramActivity.isFinishing())
    {
      Logger.error("InAppMessageManager - Unable to display in-app messages for an activity that is finishing.");
      return false;
    }
    if (Looper.getMainLooper() != Looper.myLooper())
    {
      Logger.error("InAppMessageManager - Show message must be called on the main thread.");
      return false;
    }
    if (currentFragment != null)
    {
      Logger.debug("InAppMessageManager - An in-app message is already displayed.");
      return false;
    }
    if (!UAStringUtil.equals(localInAppMessage.getId(), dataStore.getString("com.urbanairship.push.iam.LAST_DISPLAYED_ID", null)))
    {
      Logger.debug("InAppMessageManager - Displaying pending message: " + localInAppMessage + " for first time.");
      ??? = new DisplayEvent(localInAppMessage);
      UAirship.shared().getAnalytics().addEvent((Event)???);
      dataStore.put("com.urbanairship.push.iam.LAST_DISPLAYED_ID", localInAppMessage.getId());
    }
    if ((currentMessage != null) && (currentMessage.equals(localInAppMessage)))
    {
      ??? = ResolutionEvent.createReplacedResolutionEvent(currentMessage, localInAppMessage);
      UAirship.shared().getAnalytics().addEvent((Event)???);
    }
    Logger.info("InAppMessageManager - Displaying in-app message.");
    try
    {
      ??? = getFragmentFactory();
      if (??? == null)
      {
        Logger.error("InAppMessageManager - InAppMessageFragmentFactory is null, unable to display an in-app message.");
        return false;
      }
      currentFragment = ((InAppMessageFragmentFactory)???).createFragment(localInAppMessage);
      if (currentFragment == null)
      {
        Logger.error("InAppMessageManager - InAppMessageFragmentFactory returned a null fragment, unable to display an in-app message.");
        return false;
      }
      ??? = InAppMessageFragment.createArgs(localInAppMessage, paramInt3);
      if (currentFragment.getArguments() != null) {
        ((Bundle)???).putAll(currentFragment.getArguments());
      }
      currentFragment.setArguments((Bundle)???);
      currentFragment.addListener(fragmentListener);
      currentFragment.setDismissOnRecreate(true);
      currentMessage = localInAppMessage;
      synchronized (listeners)
      {
        Iterator localIterator = listeners.iterator();
        if (localIterator.hasNext()) {
          ((InAppMessageManager.Listener)localIterator.next()).onDisplay(currentFragment, localInAppMessage);
        }
      }
    }
    catch (IllegalStateException paramActivity)
    {
      Logger.debug("InAppMessageManager - Failed to display in-app message.", paramActivity);
      return false;
    }
    paramActivity.getFragmentManager().beginTransaction().setCustomAnimations(paramInt2, 0).add(paramInt1, currentFragment, "com.urbanairship.in_app_fragment").commit();
    return true;
    label489:
    return false;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.iam.InAppMessageManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */