package com.urbanairship.actions;

public final class ActionResult
{
  private final Exception exception;
  private final ActionResult.Status status;
  private final ActionValue value;
  
  ActionResult(ActionValue paramActionValue, Exception paramException, ActionResult.Status paramStatus)
  {
    ActionValue localActionValue = paramActionValue;
    if (paramActionValue == null) {
      localActionValue = new ActionValue();
    }
    value = localActionValue;
    exception = paramException;
    if (paramStatus != null) {}
    for (;;)
    {
      status = paramStatus;
      return;
      paramStatus = ActionResult.Status.COMPLETED;
    }
  }
  
  public static ActionResult newEmptyResult()
  {
    return new ActionResult(null, null, ActionResult.Status.COMPLETED);
  }
  
  static ActionResult newEmptyResultWithStatus(ActionResult.Status paramStatus)
  {
    return new ActionResult(null, null, paramStatus);
  }
  
  public static ActionResult newErrorResult(Exception paramException)
  {
    return new ActionResult(null, paramException, ActionResult.Status.EXECUTION_ERROR);
  }
  
  public static ActionResult newResult(ActionValue paramActionValue)
  {
    return new ActionResult(paramActionValue, null, ActionResult.Status.COMPLETED);
  }
  
  public Exception getException()
  {
    return exception;
  }
  
  public ActionResult.Status getStatus()
  {
    return status;
  }
  
  public ActionValue getValue()
  {
    return value;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.actions.ActionResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */