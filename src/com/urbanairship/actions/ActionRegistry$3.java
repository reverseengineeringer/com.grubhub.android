package com.urbanairship.actions;

import com.android.internal.util.Predicate;

class ActionRegistry$3
  implements Predicate<ActionArguments>
{
  ActionRegistry$3(ActionRegistry paramActionRegistry) {}
  
  public boolean apply(ActionArguments paramActionArguments)
  {
    return (Situation.MANUAL_INVOCATION == paramActionArguments.getSituation()) || (Situation.WEB_VIEW_INVOCATION == paramActionArguments.getSituation());
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.actions.ActionRegistry.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */