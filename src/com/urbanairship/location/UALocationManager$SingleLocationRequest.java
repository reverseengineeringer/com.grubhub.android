package com.urbanairship.location;

import android.util.SparseArray;

class UALocationManager$SingleLocationRequest
  extends PendingLocationResult
{
  private final LocationRequestOptions options;
  private final int requestId;
  
  UALocationManager$SingleLocationRequest(UALocationManager paramUALocationManager, int paramInt, LocationRequestOptions paramLocationRequestOptions)
  {
    requestId = paramInt;
    options = paramLocationRequestOptions;
  }
  
  protected void onCancel()
  {
    if (!isDone()) {
      UALocationManager.access$1100(this$0, 6, requestId, null);
    }
    synchronized (UALocationManager.access$900(this$0))
    {
      UALocationManager.access$900(this$0).remove(requestId);
      return;
    }
  }
  
  /* Error */
  void sendLocationRequest()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual 27	com/urbanairship/location/UALocationManager$SingleLocationRequest:isDone	()Z
    //   6: istore_1
    //   7: iload_1
    //   8: ifeq +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: new 46	android/os/Bundle
    //   17: dup
    //   18: invokespecial 47	android/os/Bundle:<init>	()V
    //   21: astore_2
    //   22: aload_2
    //   23: ldc 49
    //   25: aload_0
    //   26: getfield 21	com/urbanairship/location/UALocationManager$SingleLocationRequest:options	Lcom/urbanairship/location/LocationRequestOptions;
    //   29: invokevirtual 53	android/os/Bundle:putParcelable	(Ljava/lang/String;Landroid/os/Parcelable;)V
    //   32: aload_0
    //   33: getfield 14	com/urbanairship/location/UALocationManager$SingleLocationRequest:this$0	Lcom/urbanairship/location/UALocationManager;
    //   36: iconst_5
    //   37: aload_0
    //   38: getfield 19	com/urbanairship/location/UALocationManager$SingleLocationRequest:requestId	I
    //   41: aload_2
    //   42: invokestatic 33	com/urbanairship/location/UALocationManager:access$1100	(Lcom/urbanairship/location/UALocationManager;IILandroid/os/Bundle;)Z
    //   45: pop
    //   46: goto -35 -> 11
    //   49: astore_2
    //   50: aload_0
    //   51: monitorexit
    //   52: aload_2
    //   53: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	54	0	this	SingleLocationRequest
    //   6	2	1	bool	boolean
    //   21	21	2	localBundle	android.os.Bundle
    //   49	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	49	finally
    //   14	46	49	finally
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.location.UALocationManager.SingleLocationRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */