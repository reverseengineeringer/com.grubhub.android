package com.urbanairship.actions;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;

class Action$1
  extends ResultReceiver
{
  Action$1(Action paramAction, Handler paramHandler, Action.ActivityResult paramActivityResult)
  {
    super(paramHandler);
  }
  
  public void onReceiveResult(int paramInt, Bundle arg2)
  {
    Action.ActivityResult.access$000(val$result, paramInt, (Intent)???.getParcelable("com.urbanairship.actions.actionactivity.RESULT_INTENT_EXTRA"));
    synchronized (val$result)
    {
      val$result.notify();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.actions.Action.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */