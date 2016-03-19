package com.urbanairship;

public abstract interface Cancelable
{
  public abstract void cancel();
  
  public abstract boolean isCanceled();
  
  public abstract boolean isDone();
}

/* Location:
 * Qualified Name:     com.urbanairship.Cancelable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */