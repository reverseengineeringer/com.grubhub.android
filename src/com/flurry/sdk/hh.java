package com.flurry.sdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

public class hh
  extends BroadcastReceiver
{
  private static hh c;
  boolean a;
  boolean b;
  private boolean d = false;
  
  private hh()
  {
    Context localContext = hn.a().c();
    if (localContext.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0) {
      bool = true;
    }
    d = bool;
    b = a(localContext);
    if (d) {
      e();
    }
  }
  
  public static hh a()
  {
    try
    {
      if (c == null) {
        c = new hh();
      }
      hh localhh = c;
      return localhh;
    }
    finally {}
  }
  
  private boolean a(Context paramContext)
  {
    if ((!d) || (paramContext == null)) {}
    do
    {
      return true;
      paramContext = g().getActiveNetworkInfo();
    } while ((paramContext != null) && (paramContext.isConnected()));
    return false;
  }
  
  public static void b()
  {
    try
    {
      if (c != null) {
        c.f();
      }
      c = null;
      return;
    }
    finally {}
  }
  
  /* Error */
  private void e()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 66	com/flurry/sdk/hh:a	Z
    //   6: istore_1
    //   7: iload_1
    //   8: ifeq +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: invokestatic 21	com/flurry/sdk/hn:a	()Lcom/flurry/sdk/hn;
    //   17: invokevirtual 24	com/flurry/sdk/hn:c	()Landroid/content/Context;
    //   20: astore_2
    //   21: aload_0
    //   22: aload_0
    //   23: aload_2
    //   24: invokespecial 35	com/flurry/sdk/hh:a	(Landroid/content/Context;)Z
    //   27: putfield 37	com/flurry/sdk/hh:b	Z
    //   30: aload_2
    //   31: aload_0
    //   32: new 68	android/content/IntentFilter
    //   35: dup
    //   36: ldc 70
    //   38: invokespecial 73	android/content/IntentFilter:<init>	(Ljava/lang/String;)V
    //   41: invokevirtual 77	android/content/Context:registerReceiver	(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    //   44: pop
    //   45: aload_0
    //   46: iconst_1
    //   47: putfield 66	com/flurry/sdk/hh:a	Z
    //   50: goto -39 -> 11
    //   53: astore_2
    //   54: aload_0
    //   55: monitorexit
    //   56: aload_2
    //   57: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	58	0	this	hh
    //   6	2	1	bool	boolean
    //   20	11	2	localContext	Context
    //   53	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	53	finally
    //   14	50	53	finally
  }
  
  /* Error */
  private void f()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 66	com/flurry/sdk/hh:a	Z
    //   6: istore_1
    //   7: iload_1
    //   8: ifne +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: invokestatic 21	com/flurry/sdk/hn:a	()Lcom/flurry/sdk/hn;
    //   17: invokevirtual 24	com/flurry/sdk/hn:c	()Landroid/content/Context;
    //   20: aload_0
    //   21: invokevirtual 81	android/content/Context:unregisterReceiver	(Landroid/content/BroadcastReceiver;)V
    //   24: aload_0
    //   25: iconst_0
    //   26: putfield 66	com/flurry/sdk/hh:a	Z
    //   29: goto -18 -> 11
    //   32: astore_2
    //   33: aload_0
    //   34: monitorexit
    //   35: aload_2
    //   36: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	37	0	this	hh
    //   6	2	1	bool	boolean
    //   32	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	32	finally
    //   14	29	32	finally
  }
  
  private ConnectivityManager g()
  {
    return (ConnectivityManager)hn.a().c().getSystemService("connectivity");
  }
  
  public boolean c()
  {
    return b;
  }
  
  public hh.a d()
  {
    if (!d) {
      return hh.a.a;
    }
    NetworkInfo localNetworkInfo = g().getActiveNetworkInfo();
    if ((localNetworkInfo == null) || (!localNetworkInfo.isConnected())) {
      return hh.a.a;
    }
    switch (localNetworkInfo.getType())
    {
    case 6: 
    case 7: 
    default: 
      if (localNetworkInfo.isConnected()) {
        return hh.a.b;
      }
      break;
    case 1: 
      return hh.a.c;
    case 0: 
    case 2: 
    case 3: 
    case 4: 
    case 5: 
      return hh.a.d;
    case 8: 
      return hh.a.a;
    }
    return hh.a.a;
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    boolean bool = a(paramContext);
    if (b != bool)
    {
      b = bool;
      paramContext = new hg();
      a = bool;
      b = d();
      paramContext.b();
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.hh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */