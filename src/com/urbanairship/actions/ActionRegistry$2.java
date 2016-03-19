package com.urbanairship.actions;

import com.android.internal.util.Predicate;

class ActionRegistry$2
  implements Predicate<ActionArguments>
{
  ActionRegistry$2(ActionRegistry paramActionRegistry) {}
  
  public boolean apply(ActionArguments paramActionArguments)
  {
    return !Situation.PUSH_RECEIVED.equals(paramActionArguments.getSituation());
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.actions.ActionRegistry.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */