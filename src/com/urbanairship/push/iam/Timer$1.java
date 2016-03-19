package com.urbanairship.push.iam;

class Timer$1
  implements Runnable
{
  Timer$1(Timer paramTimer) {}
  
  public void run()
  {
    if (Timer.access$000(this$0))
    {
      this$0.stop();
      this$0.onFinish();
    }
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.iam.Timer.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */