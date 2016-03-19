package com.google.android.gms.analytics.internal;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.a.a.b;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.Locale;

public class a
  extends t
{
  public static boolean a;
  private b b;
  private final n c;
  private String d;
  private boolean e = false;
  private Object f = new Object();
  
  a(v paramv)
  {
    super(paramv);
    c = new n(paramv.d());
  }
  
  private static String a(String paramString)
  {
    MessageDigest localMessageDigest = p.b("MD5");
    if (localMessageDigest == null) {
      return null;
    }
    return String.format(Locale.US, "%032X", new Object[] { new BigInteger(1, localMessageDigest.digest(paramString.getBytes())) });
  }
  
  private boolean a(b paramb1, b paramb2)
  {
    Object localObject1 = null;
    if (paramb2 == null) {}
    for (paramb2 = null; TextUtils.isEmpty(paramb2); paramb2 = paramb2.a()) {
      return true;
    }
    String str = zzhV().a();
    boolean bool;
    for (;;)
    {
      synchronized (f)
      {
        if (!e)
        {
          d = d();
          e = true;
          paramb1 = a(paramb2 + str);
          if (!TextUtils.isEmpty(paramb1)) {
            break;
          }
          return false;
        }
      }
      if (TextUtils.isEmpty(d))
      {
        if (paramb1 == null) {}
        for (paramb1 = (b)localObject1; paramb1 == null; paramb1 = paramb1.a())
        {
          bool = b(paramb2 + str);
          return bool;
        }
        d = a(paramb1 + str);
      }
    }
    if (paramb1.equals(d)) {
      return true;
    }
    if (!TextUtils.isEmpty(d))
    {
      zzaT("Resetting the client id because Advertising Id changed.");
      paramb1 = zzhV().b();
      zza("New client Id", paramb1);
    }
    for (;;)
    {
      bool = b(paramb2 + paramb1);
      return bool;
      paramb1 = str;
    }
  }
  
  private boolean b(String paramString)
  {
    try
    {
      paramString = a(paramString);
      zzaT("Storing hashed adid.");
      FileOutputStream localFileOutputStream = getContext().openFileOutput("gaClientIdData", 0);
      localFileOutputStream.write(paramString.getBytes());
      localFileOutputStream.close();
      d = paramString;
      return true;
    }
    catch (IOException paramString)
    {
      zze("Error creating hash file", paramString);
    }
    return false;
  }
  
  /* Error */
  private b e()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 40	com/google/android/gms/analytics/internal/a:c	Lcom/google/android/gms/analytics/internal/n;
    //   6: ldc2_w 166
    //   9: invokevirtual 170	com/google/android/gms/analytics/internal/n:a	(J)Z
    //   12: ifeq +32 -> 44
    //   15: aload_0
    //   16: getfield 40	com/google/android/gms/analytics/internal/a:c	Lcom/google/android/gms/analytics/internal/n;
    //   19: invokevirtual 172	com/google/android/gms/analytics/internal/n:a	()V
    //   22: aload_0
    //   23: invokevirtual 174	com/google/android/gms/analytics/internal/a:c	()Lcom/google/android/gms/a/a/b;
    //   26: astore_1
    //   27: aload_0
    //   28: aload_0
    //   29: getfield 176	com/google/android/gms/analytics/internal/a:b	Lcom/google/android/gms/a/a/b;
    //   32: aload_1
    //   33: invokespecial 178	com/google/android/gms/analytics/internal/a:a	(Lcom/google/android/gms/a/a/b;Lcom/google/android/gms/a/a/b;)Z
    //   36: ifeq +17 -> 53
    //   39: aload_0
    //   40: aload_1
    //   41: putfield 176	com/google/android/gms/analytics/internal/a:b	Lcom/google/android/gms/a/a/b;
    //   44: aload_0
    //   45: getfield 176	com/google/android/gms/analytics/internal/a:b	Lcom/google/android/gms/a/a/b;
    //   48: astore_1
    //   49: aload_0
    //   50: monitorexit
    //   51: aload_1
    //   52: areturn
    //   53: aload_0
    //   54: ldc -76
    //   56: invokevirtual 183	com/google/android/gms/analytics/internal/a:zzaX	(Ljava/lang/String;)V
    //   59: aload_0
    //   60: new 87	com/google/android/gms/a/a/b
    //   63: dup
    //   64: ldc -71
    //   66: iconst_0
    //   67: invokespecial 188	com/google/android/gms/a/a/b:<init>	(Ljava/lang/String;Z)V
    //   70: putfield 176	com/google/android/gms/analytics/internal/a:b	Lcom/google/android/gms/a/a/b;
    //   73: goto -29 -> 44
    //   76: astore_1
    //   77: aload_0
    //   78: monitorexit
    //   79: aload_1
    //   80: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	81	0	this	a
    //   26	26	1	localb	b
    //   76	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	44	76	finally
    //   44	49	76	finally
    //   53	73	76	finally
  }
  
  public boolean a()
  {
    boolean bool2 = false;
    zzia();
    b localb = e();
    boolean bool1 = bool2;
    if (localb != null)
    {
      bool1 = bool2;
      if (!localb.b()) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public String b()
  {
    zzia();
    Object localObject = e();
    if (localObject != null) {}
    for (localObject = ((b)localObject).a();; localObject = null)
    {
      if (TextUtils.isEmpty((CharSequence)localObject)) {
        return null;
      }
      return (String)localObject;
    }
  }
  
  protected b c()
  {
    Object localObject = null;
    try
    {
      b localb = com.google.android.gms.a.a.a.b(getContext());
      localObject = localb;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      zzaW("IllegalStateException getting Ad Id Info. If you would like to see Audience reports, please ensure that you have added '<meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />' to your application manifest file. See http://goo.gl/naFqQk for details.");
      return null;
    }
    catch (Throwable localThrowable)
    {
      while (a) {}
      a = true;
      zzd("Error getting advertiser id", localThrowable);
    }
    return (b)localObject;
    return null;
  }
  
  protected String d()
  {
    Object localObject1 = null;
    try
    {
      FileInputStream localFileInputStream = getContext().openFileInput("gaClientIdData");
      Object localObject2 = new byte[''];
      int i = localFileInputStream.read((byte[])localObject2, 0, 128);
      if (localFileInputStream.available() > 0)
      {
        zzaW("Hash file seems corrupted, deleting it.");
        localFileInputStream.close();
        getContext().deleteFile("gaClientIdData");
        return null;
      }
      if (i <= 0)
      {
        zzaT("Hash file is empty.");
        localFileInputStream.close();
        return null;
      }
      localObject2 = new String((byte[])localObject2, 0, i);
      IOException localIOException2;
      return null;
    }
    catch (IOException localIOException1)
    {
      try
      {
        localFileInputStream.close();
        return (String)localObject2;
      }
      catch (IOException localIOException3)
      {
        for (;;)
        {
          localObject1 = localIOException1;
          localIOException2 = localIOException3;
        }
      }
      catch (FileNotFoundException localFileNotFoundException1)
      {
        return localIOException2;
      }
      localIOException1 = localIOException1;
      zzd("Error reading Hash file, deleting it", localIOException1);
      getContext().deleteFile("gaClientIdData");
      return (String)localObject1;
    }
    catch (FileNotFoundException localFileNotFoundException2) {}
  }
  
  protected void zzhn() {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */