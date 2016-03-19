package com.urbanairship.actions;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import com.urbanairship.Logger;

public abstract class Action
{
  public boolean acceptsArguments(ActionArguments paramActionArguments)
  {
    return true;
  }
  
  public void onFinish(ActionArguments paramActionArguments, ActionResult paramActionResult) {}
  
  public void onStart(ActionArguments paramActionArguments) {}
  
  public abstract ActionResult perform(ActionArguments paramActionArguments);
  
  final ActionResult run(ActionArguments paramActionArguments)
  {
    try
    {
      if (!acceptsArguments(paramActionArguments))
      {
        Logger.debug("Action " + this + " is unable to accept arguments: " + paramActionArguments);
        return ActionResult.newEmptyResultWithStatus(ActionResult.Status.REJECTED_ARGUMENTS);
      }
      Logger.info("Running action: " + this + " arguments: " + paramActionArguments);
      onStart(paramActionArguments);
      ActionResult localActionResult2 = perform(paramActionArguments);
      ActionResult localActionResult1 = localActionResult2;
      if (localActionResult2 == null) {
        localActionResult1 = ActionResult.newEmptyResult();
      }
      onFinish(paramActionArguments, localActionResult1);
      return localActionResult1;
    }
    catch (Exception paramActionArguments)
    {
      Logger.error("Failed to run action " + this, paramActionArguments);
    }
    return ActionResult.newErrorResult(paramActionArguments);
  }
  
  /* Error */
  public final Action.ActivityResult startActivityForResult(Intent paramIntent)
  {
    // Byte code:
    //   0: new 93	com/urbanairship/actions/Action$ActivityResult
    //   3: dup
    //   4: invokespecial 94	com/urbanairship/actions/Action$ActivityResult:<init>	()V
    //   7: astore_2
    //   8: new 6	com/urbanairship/actions/Action$1
    //   11: dup
    //   12: aload_0
    //   13: new 96	android/os/Handler
    //   16: dup
    //   17: invokestatic 102	android/os/Looper:getMainLooper	()Landroid/os/Looper;
    //   20: invokespecial 105	android/os/Handler:<init>	(Landroid/os/Looper;)V
    //   23: aload_2
    //   24: invokespecial 108	com/urbanairship/actions/Action$1:<init>	(Lcom/urbanairship/actions/Action;Landroid/os/Handler;Lcom/urbanairship/actions/Action$ActivityResult;)V
    //   27: astore 4
    //   29: invokestatic 114	com/urbanairship/UAirship:getApplicationContext	()Landroid/content/Context;
    //   32: astore_3
    //   33: new 116	android/content/Intent
    //   36: dup
    //   37: aload_3
    //   38: ldc 118
    //   40: invokespecial 121	android/content/Intent:<init>	(Landroid/content/Context;Ljava/lang/Class;)V
    //   43: ldc 122
    //   45: invokevirtual 126	android/content/Intent:addFlags	(I)Landroid/content/Intent;
    //   48: invokestatic 129	com/urbanairship/UAirship:getPackageName	()Ljava/lang/String;
    //   51: invokevirtual 133	android/content/Intent:setPackage	(Ljava/lang/String;)Landroid/content/Intent;
    //   54: ldc -121
    //   56: aload_1
    //   57: invokevirtual 139	android/content/Intent:putExtra	(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    //   60: ldc -115
    //   62: aload 4
    //   64: invokevirtual 139	android/content/Intent:putExtra	(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    //   67: astore_1
    //   68: aload_2
    //   69: monitorenter
    //   70: aload_3
    //   71: aload_1
    //   72: invokevirtual 147	android/content/Context:startActivity	(Landroid/content/Intent;)V
    //   75: aload_2
    //   76: invokevirtual 150	java/lang/Object:wait	()V
    //   79: aload_2
    //   80: monitorexit
    //   81: aload_2
    //   82: areturn
    //   83: astore_1
    //   84: ldc -104
    //   86: aload_1
    //   87: invokestatic 83	com/urbanairship/Logger:error	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   90: new 93	com/urbanairship/actions/Action$ActivityResult
    //   93: dup
    //   94: invokespecial 94	com/urbanairship/actions/Action$ActivityResult:<init>	()V
    //   97: astore_1
    //   98: aload_2
    //   99: monitorexit
    //   100: aload_1
    //   101: areturn
    //   102: astore_1
    //   103: aload_2
    //   104: monitorexit
    //   105: aload_1
    //   106: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	107	0	this	Action
    //   0	107	1	paramIntent	Intent
    //   7	97	2	localActivityResult	Action.ActivityResult
    //   32	39	3	localContext	android.content.Context
    //   27	36	4	local1	1
    // Exception table:
    //   from	to	target	type
    //   75	79	83	java/lang/InterruptedException
    //   70	75	102	finally
    //   75	79	102	finally
    //   79	81	102	finally
    //   84	100	102	finally
    //   103	105	102	finally
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.actions.Action
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */