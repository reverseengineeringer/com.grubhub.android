package com.urbanairship.actions;

import android.os.Bundle;

public final class ActionArguments
{
  public static final String PUSH_MESSAGE_METADATA = "com.urbanairship.PUSH_MESSAGE";
  public static final String REGISTRY_ACTION_NAME_METADATA = "com.urbanairship.REGISTRY_ACTION_NAME";
  public static final String RICH_PUSH_ID_METADATA = "com.urbanairship.RICH_PUSH_ID_METADATA";
  private final Bundle metadata;
  private final Situation situation;
  private final ActionValue value;
  
  public ActionArguments(Situation paramSituation, ActionValue paramActionValue, Bundle paramBundle)
  {
    Situation localSituation = paramSituation;
    if (paramSituation == null) {
      localSituation = Situation.MANUAL_INVOCATION;
    }
    situation = localSituation;
    paramSituation = paramActionValue;
    if (paramActionValue == null) {
      paramSituation = new ActionValue();
    }
    value = paramSituation;
    if (paramBundle == null) {}
    for (paramSituation = new Bundle();; paramSituation = new Bundle(paramBundle))
    {
      metadata = paramSituation;
      return;
    }
  }
  
  public Bundle getMetadata()
  {
    return metadata;
  }
  
  public Situation getSituation()
  {
    return situation;
  }
  
  public ActionValue getValue()
  {
    return value;
  }
  
  public String toString()
  {
    return "ActionArguments { situation: " + situation + ", value: " + value + ", metadata: " + metadata + " }";
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.actions.ActionArguments
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */