package com.urbanairship.location;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import android.util.SparseArray;
import java.util.List;

class UALocationManager$4
  extends ResultReceiver
{
  UALocationManager$4(UALocationManager paramUALocationManager, Handler paramHandler)
  {
    super(paramHandler);
  }
  
  private void onUpdatesStarted()
  {
    synchronized (UALocationManager.access$400(this$0))
    {
      if (!UALocationManager.access$400(this$0).isEmpty())
      {
        if (UALocationManager.access$500(this$0)) {
          UALocationManager.access$600(this$0);
        }
      }
      else {
        return;
      }
      UALocationManager.access$700(this$0);
    }
  }
  
  private void onUpdatesStopped()
  {
    UALocationManager.access$800(this$0);
    synchronized (UALocationManager.access$900(this$0))
    {
      if (UALocationManager.access$900(this$0).size() == 0) {
        UALocationManager.access$1000(this$0);
      }
      return;
    }
  }
  
  protected void onReceiveResult(int paramInt, Bundle paramBundle)
  {
    if (paramInt == 1)
    {
      onUpdatesStarted();
      return;
    }
    onUpdatesStopped();
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.location.UALocationManager.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */