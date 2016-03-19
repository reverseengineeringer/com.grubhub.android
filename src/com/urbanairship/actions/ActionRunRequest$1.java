package com.urbanairship.actions;

import android.os.Handler;

class ActionRunRequest$1
  implements Runnable
{
  ActionRunRequest$1(ActionRunRequest paramActionRunRequest, ActionArguments paramActionArguments, ActionCompletionCallback paramActionCompletionCallback, Handler paramHandler) {}
  
  public void run()
  {
    final ActionResult localActionResult = ActionRunRequest.access$000(this$0, val$arguments);
    if (val$callback == null) {
      return;
    }
    val$handler.post(new Runnable()
    {
      public void run()
      {
        val$callback.onFinish(val$arguments, localActionResult);
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.actions.ActionRunRequest.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */