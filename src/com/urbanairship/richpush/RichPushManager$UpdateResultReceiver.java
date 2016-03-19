package com.urbanairship.richpush;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.ResultReceiver;

abstract class RichPushManager$UpdateResultReceiver
  extends ResultReceiver
{
  public RichPushManager$UpdateResultReceiver()
  {
    super(new Handler(Looper.getMainLooper()));
  }
  
  protected void onReceiveResult(int paramInt, Bundle paramBundle)
  {
    if (paramInt == 0) {}
    for (boolean bool = true;; bool = false)
    {
      onUpdate(bool);
      return;
    }
  }
  
  public abstract void onUpdate(boolean paramBoolean);
}

/* Location:
 * Qualified Name:     com.urbanairship.richpush.RichPushManager.UpdateResultReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */