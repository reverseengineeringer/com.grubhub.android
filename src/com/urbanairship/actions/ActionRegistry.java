package com.urbanairship.actions;

import com.android.internal.util.Predicate;
import com.urbanairship.ApplicationMetrics;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import com.urbanairship.actions.tags.AddTagsAction;
import com.urbanairship.actions.tags.RemoveTagsAction;
import com.urbanairship.util.UAStringUtil;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class ActionRegistry
{
  private static final long LANDING_PAGE_CACHE_OPEN_TIME_LIMIT_MS = 604800000L;
  private final Map<String, ActionRegistry.Entry> actionMap = new HashMap();
  
  public Set<ActionRegistry.Entry> getEntries()
  {
    synchronized (actionMap)
    {
      HashSet localHashSet = new HashSet(actionMap.values());
      return localHashSet;
    }
  }
  
  public ActionRegistry.Entry getEntry(String paramString)
  {
    if (UAStringUtil.isEmpty(paramString)) {
      return null;
    }
    synchronized (actionMap)
    {
      paramString = (ActionRegistry.Entry)actionMap.get(paramString);
      return paramString;
    }
  }
  
  public ActionRegistry.Entry registerAction(Action paramAction, String... paramVarArgs)
  {
    int j = 0;
    if (paramAction == null)
    {
      Logger.error("Unable to register null action");
      return null;
    }
    if ((paramVarArgs == null) || (paramVarArgs.length == 0))
    {
      Logger.error("A name is required to register an action");
      return null;
    }
    int k = paramVarArgs.length;
    int i = 0;
    while (i < k)
    {
      if (UAStringUtil.isEmpty(paramVarArgs[i]))
      {
        Logger.error("Unable to register action because one or more of the names was null or empty.");
        return null;
      }
      i += 1;
    }
    for (;;)
    {
      synchronized (actionMap)
      {
        paramAction = new ActionRegistry.Entry(paramAction, paramVarArgs, null);
        k = paramVarArgs.length;
        i = j;
        if (i < k)
        {
          String str = paramVarArgs[i];
          if (UAStringUtil.isEmpty(str)) {
            break label169;
          }
          ActionRegistry.Entry localEntry = (ActionRegistry.Entry)actionMap.remove(str);
          if (localEntry != null) {
            ActionRegistry.Entry.access$100(localEntry, str);
          }
          actionMap.put(str, paramAction);
        }
      }
      return paramAction;
      label169:
      i += 1;
    }
  }
  
  public void registerDefaultActions()
  {
    registerAction(new ShareAction(), new String[] { "share_action", "^s" });
    registerAction(new OpenExternalUrlAction(), new String[] { "open_external_url_action", "^u" });
    registerAction(new DeepLinkAction(), new String[] { "deep_link_action", "^d" });
    registerAction(new LandingPageAction(), new String[] { "landing_page_action", "^p" }).setPredicate(new Predicate()
    {
      public boolean apply(ActionArguments paramAnonymousActionArguments)
      {
        long l;
        if (Situation.PUSH_RECEIVED.equals(paramAnonymousActionArguments.getSituation())) {
          l = UAirship.shared().getApplicationMetrics().getLastOpenTimeMillis();
        }
        return System.currentTimeMillis() - l <= 604800000L;
      }
    });
    Predicate local2 = new Predicate()
    {
      public boolean apply(ActionArguments paramAnonymousActionArguments)
      {
        return !Situation.PUSH_RECEIVED.equals(paramAnonymousActionArguments.getSituation());
      }
    };
    registerAction(new AddTagsAction(), new String[] { "add_tags_action", "^+t" }).setPredicate(local2);
    registerAction(new RemoveTagsAction(), new String[] { "remove_tags_action", "^-t" }).setPredicate(local2);
    registerAction(new AddCustomEventAction(), new String[] { "add_custom_event_action" }).setPredicate(new Predicate()
    {
      public boolean apply(ActionArguments paramAnonymousActionArguments)
      {
        return (Situation.MANUAL_INVOCATION == paramAnonymousActionArguments.getSituation()) || (Situation.WEB_VIEW_INVOCATION == paramAnonymousActionArguments.getSituation());
      }
    });
    registerAction(new OpenRichPushInboxAction(), new String[] { "open_mc_action", "^mc" });
    registerAction(new OverlayRichPushMessageAction(), new String[] { "open_mc_overlay_action", "^mco" });
    registerAction(new ClipboardAction(), new String[] { "clipboard_action", "^c" });
  }
  
  public void unregisterAction(String paramString)
  {
    if (UAStringUtil.isEmpty(paramString)) {
      return;
    }
    synchronized (actionMap)
    {
      paramString = getEntry(paramString);
      if (paramString == null) {
        return;
      }
    }
    paramString = paramString.getNames().iterator();
    while (paramString.hasNext())
    {
      String str = (String)paramString.next();
      actionMap.remove(str);
    }
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.actions.ActionRegistry
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */