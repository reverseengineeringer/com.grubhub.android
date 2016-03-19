package com.urbanairship.actions;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.android.internal.util.Predicate;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

public class ActionRunRequest
{
  static Executor executor = ;
  private Action action;
  private String actionName;
  private ActionValue actionValue;
  private Bundle metadata;
  private ActionRegistry registry;
  private Situation situation;
  
  ActionRunRequest(Action paramAction)
  {
    action = paramAction;
  }
  
  ActionRunRequest(String paramString, ActionRegistry paramActionRegistry)
  {
    actionName = paramString;
    registry = paramActionRegistry;
  }
  
  private ActionArguments createActionArguments()
  {
    if (metadata == null) {}
    for (Bundle localBundle = new Bundle();; localBundle = new Bundle(metadata))
    {
      if (actionName != null) {
        localBundle.putString("com.urbanairship.REGISTRY_ACTION_NAME", actionName);
      }
      return new ActionArguments(situation, actionValue, localBundle);
    }
  }
  
  public static ActionRunRequest createRequest(Action paramAction)
  {
    if (paramAction == null) {
      throw new IllegalArgumentException("Unable to run null action");
    }
    return new ActionRunRequest(paramAction);
  }
  
  public static ActionRunRequest createRequest(String paramString)
  {
    return new ActionRunRequest(paramString, null);
  }
  
  public static ActionRunRequest createRequest(String paramString, ActionRegistry paramActionRegistry)
  {
    return new ActionRunRequest(paramString, paramActionRegistry);
  }
  
  private ActionRegistry.Entry lookUpAction(String paramString)
  {
    if (registry != null) {
      return registry.getEntry(paramString);
    }
    return UAirship.shared().getActionRegistry().getEntry(paramString);
  }
  
  private ActionResult runSync(ActionArguments paramActionArguments)
  {
    if (actionName != null)
    {
      ActionRegistry.Entry localEntry = lookUpAction(actionName);
      if (localEntry == null) {
        return ActionResult.newEmptyResultWithStatus(ActionResult.Status.ACTION_NOT_FOUND);
      }
      if ((localEntry.getPredicate() != null) && (!localEntry.getPredicate().apply(paramActionArguments)))
      {
        Logger.info("Action " + actionName + " will not be run. Registry predicate rejected the arguments: " + paramActionArguments);
        return ActionResult.newEmptyResultWithStatus(ActionResult.Status.REJECTED_ARGUMENTS);
      }
      return localEntry.getActionForSituation(situation).run(paramActionArguments);
    }
    if (action != null) {
      return action.run(paramActionArguments);
    }
    return ActionResult.newEmptyResultWithStatus(ActionResult.Status.ACTION_NOT_FOUND);
  }
  
  public void run()
  {
    run(null, null);
  }
  
  public void run(ActionCompletionCallback paramActionCompletionCallback)
  {
    run(paramActionCompletionCallback, null);
  }
  
  public void run(final ActionCompletionCallback paramActionCompletionCallback, final Looper paramLooper)
  {
    if (paramLooper == null)
    {
      paramLooper = Looper.myLooper();
      if (paramLooper == null) {}
    }
    for (;;)
    {
      final ActionArguments localActionArguments = createActionArguments();
      paramLooper = new Handler(paramLooper);
      executor.execute(new Runnable()
      {
        public void run()
        {
          final ActionResult localActionResult = ActionRunRequest.this.runSync(localActionArguments);
          if (paramActionCompletionCallback == null) {
            return;
          }
          paramLooper.post(new Runnable()
          {
            public void run()
            {
              val$callback.onFinish(val$arguments, localActionResult);
            }
          });
        }
      });
      return;
      paramLooper = Looper.getMainLooper();
    }
  }
  
  public ActionResult runSync()
  {
    return runSync(createActionArguments());
  }
  
  public ActionRunRequest setMetadata(Bundle paramBundle)
  {
    metadata = paramBundle;
    return this;
  }
  
  public ActionRunRequest setSituation(Situation paramSituation)
  {
    situation = paramSituation;
    return this;
  }
  
  public ActionRunRequest setValue(ActionValue paramActionValue)
  {
    actionValue = paramActionValue;
    return this;
  }
  
  public ActionRunRequest setValue(Object paramObject)
  {
    try
    {
      actionValue = ActionValue.wrap(paramObject);
      return this;
    }
    catch (ActionValueException localActionValueException)
    {
      throw new IllegalArgumentException("Unable to wrap object: " + paramObject + " as an ActionValue.", localActionValueException);
    }
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.actions.ActionRunRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */