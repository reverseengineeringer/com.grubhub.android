package com.urbanairship;

import android.app.Application;
import android.content.Context;

public abstract class Autopilot
  implements UAirship.OnReadyCallback
{
  public static final String AUTOPILOT_MANIFEST_KEY = "com.urbanairship.autopilot";
  private static final String TAG = "Urban Airship Autopilot";
  
  /* Error */
  public static void automaticTakeOff(Application paramApplication)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: invokestatic 38	com/urbanairship/UAirship:isFlying	()Z
    //   6: ifne +11 -> 17
    //   9: invokestatic 41	com/urbanairship/UAirship:isTakingOff	()Z
    //   12: istore_1
    //   13: iload_1
    //   14: ifeq +7 -> 21
    //   17: ldc 2
    //   19: monitorexit
    //   20: return
    //   21: aload_0
    //   22: invokevirtual 47	android/app/Application:getPackageManager	()Landroid/content/pm/PackageManager;
    //   25: aload_0
    //   26: invokevirtual 51	android/app/Application:getPackageName	()Ljava/lang/String;
    //   29: sipush 128
    //   32: invokevirtual 57	android/content/pm/PackageManager:getApplicationInfo	(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    //   35: getfield 63	android/content/pm/ApplicationInfo:metaData	Landroid/os/Bundle;
    //   38: ldc 10
    //   40: invokevirtual 69	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   43: astore_2
    //   44: aload_2
    //   45: ifnonnull +88 -> 133
    //   48: ldc 13
    //   50: ldc 71
    //   52: invokestatic 77	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   55: pop
    //   56: goto -39 -> 17
    //   59: astore_0
    //   60: ldc 2
    //   62: monitorexit
    //   63: aload_0
    //   64: athrow
    //   65: astore_2
    //   66: ldc 13
    //   68: new 79	java/lang/StringBuilder
    //   71: dup
    //   72: invokespecial 80	java/lang/StringBuilder:<init>	()V
    //   75: ldc 82
    //   77: invokevirtual 86	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   80: aload_2
    //   81: invokevirtual 89	android/content/pm/PackageManager$NameNotFoundException:getMessage	()Ljava/lang/String;
    //   84: invokevirtual 86	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   87: invokevirtual 92	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   90: invokestatic 77	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   93: pop
    //   94: aconst_null
    //   95: astore_2
    //   96: goto -52 -> 44
    //   99: astore_2
    //   100: ldc 13
    //   102: new 79	java/lang/StringBuilder
    //   105: dup
    //   106: invokespecial 80	java/lang/StringBuilder:<init>	()V
    //   109: ldc 94
    //   111: invokevirtual 86	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   114: aload_2
    //   115: invokevirtual 95	java/lang/NullPointerException:getMessage	()Ljava/lang/String;
    //   118: invokevirtual 86	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   121: invokevirtual 92	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   124: invokestatic 77	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   127: pop
    //   128: aconst_null
    //   129: astore_2
    //   130: goto -86 -> 44
    //   133: aload_2
    //   134: invokestatic 101	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   137: astore_2
    //   138: aload_2
    //   139: invokevirtual 105	java/lang/Class:newInstance	()Ljava/lang/Object;
    //   142: checkcast 2	com/urbanairship/Autopilot
    //   145: astore_2
    //   146: aload_2
    //   147: ifnonnull +142 -> 289
    //   150: ldc 13
    //   152: ldc 107
    //   154: invokestatic 77	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   157: pop
    //   158: goto -141 -> 17
    //   161: astore_0
    //   162: ldc 13
    //   164: new 79	java/lang/StringBuilder
    //   167: dup
    //   168: invokespecial 80	java/lang/StringBuilder:<init>	()V
    //   171: ldc 109
    //   173: invokevirtual 86	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   176: aload_0
    //   177: invokevirtual 110	java/lang/ClassNotFoundException:getMessage	()Ljava/lang/String;
    //   180: invokevirtual 86	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   183: invokevirtual 92	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   186: invokestatic 77	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   189: pop
    //   190: goto -173 -> 17
    //   193: astore_0
    //   194: ldc 13
    //   196: new 79	java/lang/StringBuilder
    //   199: dup
    //   200: invokespecial 80	java/lang/StringBuilder:<init>	()V
    //   203: ldc 112
    //   205: invokevirtual 86	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   208: aload_0
    //   209: invokevirtual 113	java/lang/IllegalAccessException:getMessage	()Ljava/lang/String;
    //   212: invokevirtual 86	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   215: invokevirtual 92	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   218: invokestatic 77	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   221: pop
    //   222: goto -205 -> 17
    //   225: astore_0
    //   226: ldc 13
    //   228: new 79	java/lang/StringBuilder
    //   231: dup
    //   232: invokespecial 80	java/lang/StringBuilder:<init>	()V
    //   235: ldc 115
    //   237: invokevirtual 86	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   240: aload_0
    //   241: invokevirtual 116	java/lang/InstantiationException:getMessage	()Ljava/lang/String;
    //   244: invokevirtual 86	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   247: invokevirtual 92	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   250: invokestatic 77	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   253: pop
    //   254: goto -237 -> 17
    //   257: astore_0
    //   258: ldc 13
    //   260: new 79	java/lang/StringBuilder
    //   263: dup
    //   264: invokespecial 80	java/lang/StringBuilder:<init>	()V
    //   267: ldc 118
    //   269: invokevirtual 86	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   272: aload_0
    //   273: invokevirtual 119	java/lang/ClassCastException:getMessage	()Ljava/lang/String;
    //   276: invokevirtual 86	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   279: invokevirtual 92	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   282: invokestatic 77	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   285: pop
    //   286: goto -269 -> 17
    //   289: aload_2
    //   290: aload_0
    //   291: invokevirtual 123	com/urbanairship/Autopilot:createAirshipConfigOptions	(Landroid/content/Context;)Lcom/urbanairship/AirshipConfigOptions;
    //   294: astore_3
    //   295: invokestatic 38	com/urbanairship/UAirship:isFlying	()Z
    //   298: ifne +9 -> 307
    //   301: invokestatic 41	com/urbanairship/UAirship:isTakingOff	()Z
    //   304: ifeq +11 -> 315
    //   307: ldc 13
    //   309: ldc 125
    //   311: invokestatic 77	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   314: pop
    //   315: aload_0
    //   316: aload_3
    //   317: aload_2
    //   318: invokestatic 129	com/urbanairship/UAirship:takeOff	(Landroid/app/Application;Lcom/urbanairship/AirshipConfigOptions;Lcom/urbanairship/UAirship$OnReadyCallback;)V
    //   321: goto -304 -> 17
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	324	0	paramApplication	Application
    //   12	2	1	bool	boolean
    //   43	2	2	str	String
    //   65	16	2	localNameNotFoundException	android.content.pm.PackageManager.NameNotFoundException
    //   95	1	2	localObject1	Object
    //   99	16	2	localNullPointerException	NullPointerException
    //   129	189	2	localObject2	Object
    //   294	23	3	localAirshipConfigOptions	AirshipConfigOptions
    // Exception table:
    //   from	to	target	type
    //   3	13	59	finally
    //   21	44	59	finally
    //   48	56	59	finally
    //   66	94	59	finally
    //   100	128	59	finally
    //   133	138	59	finally
    //   138	146	59	finally
    //   150	158	59	finally
    //   162	190	59	finally
    //   194	222	59	finally
    //   226	254	59	finally
    //   258	286	59	finally
    //   289	307	59	finally
    //   307	315	59	finally
    //   315	321	59	finally
    //   21	44	65	android/content/pm/PackageManager$NameNotFoundException
    //   21	44	99	java/lang/NullPointerException
    //   133	138	161	java/lang/ClassNotFoundException
    //   138	146	193	java/lang/IllegalAccessException
    //   138	146	225	java/lang/InstantiationException
    //   138	146	257	java/lang/ClassCastException
  }
  
  public static void automaticTakeOff(Context paramContext)
  {
    automaticTakeOff((Application)paramContext.getApplicationContext());
  }
  
  public AirshipConfigOptions createAirshipConfigOptions(Context paramContext)
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.Autopilot
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */