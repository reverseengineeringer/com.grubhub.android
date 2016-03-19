package com.urbanairship;

public abstract interface PendingResult<T>
{
  public abstract void cancel();
  
  public abstract boolean isCanceled();
  
  public abstract boolean isDone();
  
  public abstract void onResult(PendingResult.ResultCallback<T> paramResultCallback);
}

/* Location:
 * Qualified Name:     com.urbanairship.PendingResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */