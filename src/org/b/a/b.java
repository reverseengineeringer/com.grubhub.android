package org.b.a;

public final class b
{
  private String a;
  private int b;
  private String c;
  
  /* Error */
  public static b a(android.content.Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: invokevirtual 23	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   6: astore_3
    //   7: aload_3
    //   8: aload_0
    //   9: invokevirtual 27	android/content/Context:getApplicationInfo	()Landroid/content/pm/ApplicationInfo;
    //   12: getfield 32	android/content/pm/ApplicationInfo:packageName	Ljava/lang/String;
    //   15: iconst_0
    //   16: invokevirtual 37	android/content/pm/PackageManager:getApplicationInfo	(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    //   19: astore_1
    //   20: aload_3
    //   21: aload_0
    //   22: invokevirtual 27	android/content/Context:getApplicationInfo	()Landroid/content/pm/ApplicationInfo;
    //   25: getfield 32	android/content/pm/ApplicationInfo:packageName	Ljava/lang/String;
    //   28: iconst_0
    //   29: invokevirtual 41	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   32: astore_0
    //   33: new 2	org/b/a/b
    //   36: dup
    //   37: invokespecial 42	org/b/a/b:<init>	()V
    //   40: astore_2
    //   41: aload_2
    //   42: aload_3
    //   43: aload_1
    //   44: invokevirtual 46	android/content/pm/PackageManager:getApplicationLabel	(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    //   47: invokeinterface 52 1 0
    //   52: putfield 54	org/b/a/b:a	Ljava/lang/String;
    //   55: aload_2
    //   56: aload_0
    //   57: getfield 59	android/content/pm/PackageInfo:versionCode	I
    //   60: putfield 61	org/b/a/b:b	I
    //   63: aload_2
    //   64: aload_0
    //   65: getfield 64	android/content/pm/PackageInfo:versionName	Ljava/lang/String;
    //   68: putfield 66	org/b/a/b:c	Ljava/lang/String;
    //   71: aload_2
    //   72: areturn
    //   73: astore_0
    //   74: aconst_null
    //   75: astore_1
    //   76: aload_2
    //   77: astore_0
    //   78: goto -45 -> 33
    //   81: astore_0
    //   82: aload_2
    //   83: astore_0
    //   84: goto -51 -> 33
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	87	0	paramContext	android.content.Context
    //   19	57	1	localApplicationInfo	android.content.pm.ApplicationInfo
    //   1	82	2	localb	b
    //   6	37	3	localPackageManager	android.content.pm.PackageManager
    // Exception table:
    //   from	to	target	type
    //   7	20	73	android/content/pm/PackageManager$NameNotFoundException
    //   20	33	81	android/content/pm/PackageManager$NameNotFoundException
  }
  
  public String a()
  {
    return a;
  }
  
  public int b()
  {
    return b;
  }
  
  public String c()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     org.b.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */