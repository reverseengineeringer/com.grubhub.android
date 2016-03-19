package com.urbanairship.location;

import android.location.Location;
import com.urbanairship.PendingResult;
import com.urbanairship.PendingResult.ResultCallback;

abstract class PendingLocationResult
  implements PendingResult<Location>
{
  private boolean isCanceled;
  private Location result;
  private PendingResult.ResultCallback<Location> resultCallback;
  
  /* Error */
  public void cancel()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual 23	com/urbanairship/location/PendingLocationResult:isCanceled	()Z
    //   6: istore_1
    //   7: iload_1
    //   8: ifeq +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: invokevirtual 26	com/urbanairship/location/PendingLocationResult:onCancel	()V
    //   18: aload_0
    //   19: iconst_1
    //   20: putfield 28	com/urbanairship/location/PendingLocationResult:isCanceled	Z
    //   23: goto -12 -> 11
    //   26: astore_2
    //   27: aload_0
    //   28: monitorexit
    //   29: aload_2
    //   30: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	31	0	this	PendingLocationResult
    //   6	2	1	bool	boolean
    //   26	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	26	finally
    //   14	23	26	finally
  }
  
  public boolean isCanceled()
  {
    try
    {
      boolean bool = isCanceled;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  public boolean isDone()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 28	com/urbanairship/location/PendingLocationResult:isCanceled	Z
    //   6: ifne +12 -> 18
    //   9: aload_0
    //   10: getfield 31	com/urbanairship/location/PendingLocationResult:result	Landroid/location/Location;
    //   13: astore_2
    //   14: aload_2
    //   15: ifnull +9 -> 24
    //   18: iconst_1
    //   19: istore_1
    //   20: aload_0
    //   21: monitorexit
    //   22: iload_1
    //   23: ireturn
    //   24: iconst_0
    //   25: istore_1
    //   26: goto -6 -> 20
    //   29: astore_2
    //   30: aload_0
    //   31: monitorexit
    //   32: aload_2
    //   33: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	34	0	this	PendingLocationResult
    //   19	7	1	bool	boolean
    //   13	2	2	localLocation	Location
    //   29	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	14	29	finally
  }
  
  protected abstract void onCancel();
  
  /* Error */
  public void onResult(PendingResult.ResultCallback<Location> paramResultCallback)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 28	com/urbanairship/location/PendingLocationResult:isCanceled	Z
    //   6: ifne +12 -> 18
    //   9: aload_0
    //   10: getfield 35	com/urbanairship/location/PendingLocationResult:resultCallback	Lcom/urbanairship/PendingResult$ResultCallback;
    //   13: astore_2
    //   14: aload_2
    //   15: ifnull +6 -> 21
    //   18: aload_0
    //   19: monitorexit
    //   20: return
    //   21: aload_0
    //   22: aload_1
    //   23: putfield 35	com/urbanairship/location/PendingLocationResult:resultCallback	Lcom/urbanairship/PendingResult$ResultCallback;
    //   26: aload_0
    //   27: getfield 31	com/urbanairship/location/PendingLocationResult:result	Landroid/location/Location;
    //   30: ifnull -12 -> 18
    //   33: aload_0
    //   34: getfield 35	com/urbanairship/location/PendingLocationResult:resultCallback	Lcom/urbanairship/PendingResult$ResultCallback;
    //   37: aload_0
    //   38: getfield 31	com/urbanairship/location/PendingLocationResult:result	Landroid/location/Location;
    //   41: invokeinterface 40 2 0
    //   46: goto -28 -> 18
    //   49: astore_1
    //   50: aload_0
    //   51: monitorexit
    //   52: aload_1
    //   53: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	54	0	this	PendingLocationResult
    //   0	54	1	paramResultCallback	PendingResult.ResultCallback<Location>
    //   13	2	2	localResultCallback	PendingResult.ResultCallback
    // Exception table:
    //   from	to	target	type
    //   2	14	49	finally
    //   21	46	49	finally
  }
  
  /* Error */
  void setResult(Location paramLocation)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual 46	com/urbanairship/location/PendingLocationResult:isDone	()Z
    //   6: istore_2
    //   7: iload_2
    //   8: ifeq +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: aload_1
    //   16: putfield 31	com/urbanairship/location/PendingLocationResult:result	Landroid/location/Location;
    //   19: aload_0
    //   20: getfield 35	com/urbanairship/location/PendingLocationResult:resultCallback	Lcom/urbanairship/PendingResult$ResultCallback;
    //   23: ifnull -12 -> 11
    //   26: aload_0
    //   27: getfield 35	com/urbanairship/location/PendingLocationResult:resultCallback	Lcom/urbanairship/PendingResult$ResultCallback;
    //   30: aload_1
    //   31: invokeinterface 40 2 0
    //   36: goto -25 -> 11
    //   39: astore_1
    //   40: aload_0
    //   41: monitorexit
    //   42: aload_1
    //   43: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	44	0	this	PendingLocationResult
    //   0	44	1	paramLocation	Location
    //   6	2	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	39	finally
    //   14	36	39	finally
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.location.PendingLocationResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */