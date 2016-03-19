package com.urbanairship.actions;

class ActionService$1
  implements ActionCompletionCallback
{
  ActionService$1(ActionService paramActionService) {}
  
  public void onFinish(ActionArguments paramActionArguments, ActionResult paramActionResult)
  {
    ActionService.access$010(this$0);
    if (ActionService.access$000(this$0) == 0) {
      this$0.stopSelf(ActionService.access$100(this$0));
    }
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.actions.ActionService.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */