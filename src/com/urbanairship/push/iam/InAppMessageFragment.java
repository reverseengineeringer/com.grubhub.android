package com.urbanairship.push.iam;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import com.urbanairship.Logger;
import com.urbanairship.R.id;
import com.urbanairship.R.layout;
import com.urbanairship.UAirship;
import com.urbanairship.actions.ActionRunRequest;
import com.urbanairship.actions.ActionValue;
import com.urbanairship.actions.Situation;
import com.urbanairship.analytics.Analytics;
import com.urbanairship.push.PushManager;
import com.urbanairship.push.iam.view.Banner;
import com.urbanairship.push.iam.view.Banner.OnActionClickListener;
import com.urbanairship.push.iam.view.Banner.OnDismissClickListener;
import com.urbanairship.push.iam.view.SwipeDismissViewLayout;
import com.urbanairship.push.iam.view.SwipeDismissViewLayout.Listener;
import com.urbanairship.push.notifications.NotificationActionButton;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

@TargetApi(14)
public class InAppMessageFragment
  extends Fragment
{
  public static final long DEFAULT_DURATION = 15000L;
  private static final String DISMISSED = "dismissed";
  private static final String DISMISS_ANIMATION = "dismiss_animation";
  private static final String DISMISS_ON_RECREATE = "dismiss_on_recreate";
  private static final String MESSAGE = "message";
  private static Boolean isCardViewAvailable;
  private boolean dismissOnRecreate;
  private boolean isDismissed;
  private final List<InAppMessageFragment.Listener> listeners = new ArrayList();
  private InAppMessage message;
  private Timer timer;
  
  private static boolean checkCardViewDependencyAvailable()
  {
    if (isCardViewAvailable == null) {}
    try
    {
      Class.forName("android.support.v7.widget.CardView");
      isCardViewAvailable = Boolean.valueOf(true);
      return isCardViewAvailable.booleanValue();
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      for (;;)
      {
        isCardViewAvailable = Boolean.valueOf(false);
      }
    }
  }
  
  public static Bundle createArgs(InAppMessage paramInAppMessage, int paramInt)
  {
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("message", paramInAppMessage);
    localBundle.putInt("dismiss_animation", paramInt);
    return localBundle;
  }
  
  private void runActions(Map<String, ActionValue> paramMap, Situation paramSituation)
  {
    if (paramMap == null) {}
    for (;;)
    {
      return;
      paramMap = paramMap.entrySet().iterator();
      while (paramMap.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)paramMap.next();
        ActionRunRequest.createRequest((String)localEntry.getKey()).setValue((ActionValue)localEntry.getValue()).setSituation(paramSituation).run();
      }
    }
  }
  
  public final void addListener(InAppMessageFragment.Listener paramListener)
  {
    synchronized (listeners)
    {
      listeners.add(paramListener);
      return;
    }
  }
  
  public void dismiss(boolean paramBoolean)
  {
    timer.stop();
    if (isDismissed) {}
    do
    {
      return;
      synchronized (listeners)
      {
        Iterator localIterator = new ArrayList(listeners).iterator();
        if (localIterator.hasNext()) {
          ((InAppMessageFragment.Listener)localIterator.next()).onFinish(this);
        }
      }
      isDismissed = true;
    } while (getActivity() == null);
    ??? = getActivity().getFragmentManager().beginTransaction();
    if (paramBoolean) {}
    for (int i = getArguments().getInt("dismiss_animation", 0);; i = 0)
    {
      ((FragmentTransaction)???).setCustomAnimations(0, i).remove(this).commit();
      return;
    }
  }
  
  public int getDismissAnimation()
  {
    return getArguments().getInt("dismiss_animation", 0);
  }
  
  public InAppMessage getMessage()
  {
    return message;
  }
  
  public boolean isDismissed()
  {
    return isDismissed;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setRetainInstance(true);
    message = ((InAppMessage)getArguments().getParcelable("message"));
    if (message == null)
    {
      dismiss(false);
      return;
    }
    boolean bool;
    if ((paramBundle != null) && (paramBundle.getBoolean("dismissed", false)))
    {
      bool = true;
      label55:
      isDismissed = bool;
      if (message.getDuration() != null) {
        break label121;
      }
    }
    label121:
    for (long l = 15000L;; l = message.getDuration().longValue())
    {
      timer = new Timer(l)
      {
        protected void onFinish()
        {
          dismiss(true);
          ResolutionEvent localResolutionEvent = ResolutionEvent.createTimedOutResolutionEvent(message, timer.getRunTime());
          UAirship.shared().getAnalytics().addEvent(localResolutionEvent);
        }
      };
      if ((paramBundle == null) || (paramBundle.getBoolean("dismiss_on_recreate", false) == dismissOnRecreate)) {
        break;
      }
      Logger.debug("InAppMessageFragment - Dismissing on recreate.");
      dismiss(true);
      return;
      bool = false;
      break label55;
    }
  }
  
  @SuppressLint({"NewAPI"})
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    if ((message == null) || (message.getAlert() == null))
    {
      dismiss(false);
      return null;
    }
    int i;
    if (checkCardViewDependencyAvailable())
    {
      i = R.layout.ua_fragment_iam_card;
      paramLayoutInflater = (SwipeDismissViewLayout)paramLayoutInflater.inflate(i, paramViewGroup, false);
      paramViewGroup = (FrameLayout.LayoutParams)paramLayoutInflater.getLayoutParams();
      if (message.getPosition() != 1) {
        break label261;
      }
      i = 48;
      label70:
      gravity = i;
      paramLayoutInflater.setLayoutParams(paramViewGroup);
      paramLayoutInflater.setListener(new SwipeDismissViewLayout.Listener()
      {
        public void onDismissed(View paramAnonymousView)
        {
          dismiss(false);
          paramAnonymousView = ResolutionEvent.createUserDismissedResolutionEvent(message, timer.getRunTime());
          UAirship.shared().getAnalytics().addEvent(paramAnonymousView);
        }
        
        public void onDragStateChanged(View paramAnonymousView, int paramAnonymousInt)
        {
          switch (paramAnonymousInt)
          {
          default: 
            return;
          case 1: 
            timer.stop();
            return;
          }
          timer.start();
        }
      });
      paramViewGroup = (FrameLayout)paramLayoutInflater.findViewById(R.id.in_app_message);
      if (message.getClickActionValues().isEmpty()) {
        break label268;
      }
      paramViewGroup.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          dismiss(true);
          InAppMessageFragment.this.runActions(message.getClickActionValues(), Situation.FOREGROUND_NOTIFICATION_ACTION_BUTTON);
          paramAnonymousView = ResolutionEvent.createClickedResolutionEvent(message, timer.getRunTime());
          UAirship.shared().getAnalytics().addEvent(paramAnonymousView);
        }
      });
    }
    for (;;)
    {
      paramViewGroup = (Banner)paramViewGroup;
      paramViewGroup.setOnDismissClickListener(new Banner.OnDismissClickListener()
      {
        public void onDismissClick()
        {
          dismiss(true);
          ResolutionEvent localResolutionEvent = ResolutionEvent.createUserDismissedResolutionEvent(message, timer.getRunTime());
          UAirship.shared().getAnalytics().addEvent(localResolutionEvent);
        }
      });
      paramViewGroup.setOnActionClickListener(new Banner.OnActionClickListener()
      {
        public void onActionClick(NotificationActionButton paramAnonymousNotificationActionButton)
        {
          Logger.info("In-app message button clicked: " + paramAnonymousNotificationActionButton.getId());
          dismiss(true);
          if (paramAnonymousNotificationActionButton.isForegroundAction()) {}
          for (Situation localSituation = Situation.FOREGROUND_NOTIFICATION_ACTION_BUTTON;; localSituation = Situation.BACKGROUND_NOTIFICATION_ACTION_BUTTON)
          {
            InAppMessageFragment.this.runActions(message.getButtonActionValues(paramAnonymousNotificationActionButton.getId()), localSituation);
            paramAnonymousNotificationActionButton = ResolutionEvent.createButtonClickedResolutionEvent(getActivity(), message, paramAnonymousNotificationActionButton, timer.getRunTime());
            UAirship.shared().getAnalytics().addEvent(paramAnonymousNotificationActionButton);
            return;
          }
        }
      });
      if (message.getPrimaryColor() != null) {
        paramViewGroup.setPrimaryColor(message.getPrimaryColor().intValue());
      }
      if (message.getSecondaryColor() != null) {
        paramViewGroup.setSecondaryColor(message.getSecondaryColor().intValue());
      }
      paramViewGroup.setText(message.getAlert());
      paramViewGroup.setNotificationActionButtonGroup(UAirship.shared().getPushManager().getNotificationActionGroup(message.getButtonGroupId()));
      return paramLayoutInflater;
      i = R.layout.ua_fragment_iam;
      break;
      label261:
      i = 80;
      break label70;
      label268:
      paramViewGroup.setClickable(false);
      paramViewGroup.setForeground(null);
    }
  }
  
  public void onPause()
  {
    super.onPause();
    timer.stop();
    synchronized (listeners)
    {
      Iterator localIterator = new ArrayList(listeners).iterator();
      if (localIterator.hasNext()) {
        ((InAppMessageFragment.Listener)localIterator.next()).onPause(this);
      }
    }
  }
  
  public void onResume()
  {
    super.onResume();
    timer.start();
    synchronized (listeners)
    {
      Iterator localIterator = new ArrayList(listeners).iterator();
      if (localIterator.hasNext()) {
        ((InAppMessageFragment.Listener)localIterator.next()).onResume(this);
      }
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putBoolean("dismissed", isDismissed);
    paramBundle.putBoolean("dismiss_on_recreate", dismissOnRecreate);
  }
  
  public final void removeListener(InAppMessageFragment.Listener paramListener)
  {
    synchronized (listeners)
    {
      listeners.remove(paramListener);
      return;
    }
  }
  
  void setDismissOnRecreate(boolean paramBoolean)
  {
    dismissOnRecreate = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.iam.InAppMessageFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */