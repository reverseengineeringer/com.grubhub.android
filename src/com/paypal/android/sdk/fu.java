package com.paypal.android.sdk;

public final class fu
{
  private static final String a = fu.class.getSimpleName();
  private static bf b;
  
  /* Error */
  public static final String a(java.util.concurrent.ExecutorService paramExecutorService, android.content.Context paramContext, ck paramck, String paramString)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 25	com/paypal/android/sdk/fu:b	Lcom/paypal/android/sdk/bf;
    //   6: astore 4
    //   8: aload 4
    //   10: ifnonnull +100 -> 110
    //   13: invokestatic 32	com/paypal/android/sdk/bf:a	()Lcom/paypal/android/sdk/bf;
    //   16: astore 4
    //   18: aload 4
    //   20: putstatic 25	com/paypal/android/sdk/fu:b	Lcom/paypal/android/sdk/bf;
    //   23: aload 4
    //   25: aload_1
    //   26: aload_2
    //   27: invokevirtual 37	com/paypal/android/sdk/ck:e	()Ljava/lang/String;
    //   30: getstatic 42	com/paypal/android/sdk/ab:b	Lcom/paypal/android/sdk/ab;
    //   33: aload_3
    //   34: aconst_null
    //   35: iconst_0
    //   36: aconst_null
    //   37: aconst_null
    //   38: invokevirtual 45	com/paypal/android/sdk/bf:a	(Landroid/content/Context;Ljava/lang/String;Lcom/paypal/android/sdk/ab;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   41: astore_1
    //   42: aload_0
    //   43: new 47	com/paypal/android/sdk/fv
    //   46: dup
    //   47: invokespecial 48	com/paypal/android/sdk/fv:<init>	()V
    //   50: invokeinterface 54 2 0
    //   55: pop
    //   56: new 56	java/lang/StringBuilder
    //   59: dup
    //   60: ldc 58
    //   62: invokespecial 61	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   65: invokestatic 64	com/paypal/android/sdk/bf:d	()Ljava/lang/String;
    //   68: invokevirtual 68	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   71: pop
    //   72: aload_1
    //   73: astore_0
    //   74: ldc 2
    //   76: monitorexit
    //   77: aload_0
    //   78: areturn
    //   79: astore_0
    //   80: ldc 70
    //   82: new 56	java/lang/StringBuilder
    //   85: dup
    //   86: ldc 72
    //   88: invokespecial 61	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   91: aload_0
    //   92: invokevirtual 75	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   95: invokevirtual 68	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   98: invokevirtual 78	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   101: invokestatic 83	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   104: pop
    //   105: aconst_null
    //   106: astore_0
    //   107: goto -33 -> 74
    //   110: getstatic 25	com/paypal/android/sdk/fu:b	Lcom/paypal/android/sdk/bf;
    //   113: invokevirtual 86	com/paypal/android/sdk/bf:g	()Ljava/lang/String;
    //   116: astore_0
    //   117: new 56	java/lang/StringBuilder
    //   120: dup
    //   121: ldc 88
    //   123: invokespecial 61	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   126: aload_0
    //   127: invokevirtual 68	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   130: pop
    //   131: goto -57 -> 74
    //   134: astore_0
    //   135: ldc 2
    //   137: monitorexit
    //   138: aload_0
    //   139: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	140	0	paramExecutorService	java.util.concurrent.ExecutorService
    //   0	140	1	paramContext	android.content.Context
    //   0	140	2	paramck	ck
    //   0	140	3	paramString	String
    //   6	18	4	localbf	bf
    // Exception table:
    //   from	to	target	type
    //   13	72	79	java/lang/Throwable
    //   3	8	134	finally
    //   13	72	134	finally
    //   80	105	134	finally
    //   110	131	134	finally
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.fu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */