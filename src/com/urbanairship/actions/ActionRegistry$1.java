package com.urbanairship.actions;

import com.android.internal.util.Predicate;
import com.urbanairship.ApplicationMetrics;
import com.urbanairship.UAirship;

class ActionRegistry$1
  implements Predicate<ActionArguments>
{
  ActionRegistry$1(ActionRegistry paramActionRegistry) {}
  
  public boolean apply(ActionArguments paramActionArguments)
  {
    long l;
    if (Situation.PUSH_RECEIVED.equals(paramActionArguments.getSituation())) {
      l = UAirship.shared().getApplicationMetrics().getLastOpenTimeMillis();
    }
    return System.currentTimeMillis() - l <= 604800000L;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.actions.ActionRegistry.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */