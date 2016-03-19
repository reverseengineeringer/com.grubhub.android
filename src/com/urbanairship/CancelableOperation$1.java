package com.urbanairship;

class CancelableOperation$1
  implements Runnable
{
  CancelableOperation$1(CancelableOperation paramCancelableOperation) {}
  
  public void run()
  {
    synchronized (this$0)
    {
      if (this$0.isDone()) {
        return;
      }
      this$0.onRun();
      CancelableOperation.access$002(this$0, true);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.CancelableOperation.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */