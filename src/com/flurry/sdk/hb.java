package com.flurry.sdk;

import android.content.Context;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.google.android.gms.a.a.a;
import com.google.android.gms.a.a.b;
import com.google.android.gms.common.e;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

public class hb
{
  private static final String a = hb.class.getSimpleName();
  private static hb b;
  private final Set<String> c = v();
  private final Map<hj, byte[]> d = new HashMap();
  private final hw<ja> e = new hw()
  {
    public void a(ja paramAnonymousja)
    {
      switch (hb.4.a[c.ordinal()])
      {
      }
      do
      {
        return;
      } while (!c());
      hn.a().b(new jp()
      {
        public void a()
        {
          hb.a(hb.this);
        }
      });
    }
  };
  private hb.a f = hb.a.a;
  private b g;
  private String h;
  private byte[] i;
  
  private hb()
  {
    hx.a().a("com.flurry.android.sdk.FlurrySessionEvent", e);
    hn.a().b(new jp()
    {
      public void a()
      {
        hb.b(hb.this);
      }
    });
  }
  
  public static hb a()
  {
    try
    {
      if (b == null) {
        b = new hb();
      }
      hb localhb = b;
      return localhb;
    }
    finally {}
  }
  
  private String a(DataInput paramDataInput)
    throws IOException
  {
    if (1 != paramDataInput.readInt()) {
      return null;
    }
    return paramDataInput.readUTF();
  }
  
  private void a(String paramString, DataOutput paramDataOutput)
    throws IOException
  {
    paramDataOutput.writeInt(1);
    paramDataOutput.writeUTF(paramString);
  }
  
  /* Error */
  private void a(String paramString, File paramFile)
  {
    // Byte code:
    //   0: new 125	java/io/DataOutputStream
    //   3: dup
    //   4: new 127	java/io/FileOutputStream
    //   7: dup
    //   8: aload_2
    //   9: invokespecial 130	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   12: invokespecial 133	java/io/DataOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   15: astore_3
    //   16: aload_3
    //   17: astore_2
    //   18: aload_0
    //   19: aload_1
    //   20: aload_3
    //   21: invokespecial 135	com/flurry/sdk/hb:a	(Ljava/lang/String;Ljava/io/DataOutput;)V
    //   24: aload_3
    //   25: invokestatic 140	com/flurry/sdk/jn:a	(Ljava/io/Closeable;)V
    //   28: return
    //   29: astore 4
    //   31: aconst_null
    //   32: astore_1
    //   33: aload_1
    //   34: astore_2
    //   35: bipush 6
    //   37: getstatic 44	com/flurry/sdk/hb:a	Ljava/lang/String;
    //   40: ldc -114
    //   42: aload 4
    //   44: invokestatic 147	com/flurry/sdk/ib:a	(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   47: aload_1
    //   48: invokestatic 140	com/flurry/sdk/jn:a	(Ljava/io/Closeable;)V
    //   51: return
    //   52: astore_1
    //   53: aconst_null
    //   54: astore_2
    //   55: aload_2
    //   56: invokestatic 140	com/flurry/sdk/jn:a	(Ljava/io/Closeable;)V
    //   59: aload_1
    //   60: athrow
    //   61: astore_1
    //   62: goto -7 -> 55
    //   65: astore 4
    //   67: aload_3
    //   68: astore_1
    //   69: goto -36 -> 33
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	72	0	this	hb
    //   0	72	1	paramString	String
    //   0	72	2	paramFile	File
    //   15	53	3	localDataOutputStream	java.io.DataOutputStream
    //   29	14	4	localThrowable1	Throwable
    //   65	1	4	localThrowable2	Throwable
    // Exception table:
    //   from	to	target	type
    //   0	16	29	java/lang/Throwable
    //   0	16	52	finally
    //   18	24	61	finally
    //   35	47	61	finally
    //   18	24	65	java/lang/Throwable
  }
  
  private boolean a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    while (c(paramString.toLowerCase(Locale.US))) {
      return false;
    }
    return true;
  }
  
  private String b(DataInput paramDataInput)
    throws IOException
  {
    if (46586 != paramDataInput.readUnsignedShort()) {}
    while (2 != paramDataInput.readUnsignedShort()) {
      return null;
    }
    paramDataInput.readUTF();
    return paramDataInput.readUTF();
  }
  
  public static void b()
  {
    b = null;
  }
  
  private void b(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    File localFile;
    do
    {
      return;
      localFile = hn.a().c().getFileStreamPath(u());
    } while (!jm.a(localFile));
    a(paramString, localFile);
  }
  
  private boolean c(String paramString)
  {
    return c.contains(paramString);
  }
  
  private void i()
  {
    for (;;)
    {
      if (!hb.a.f.equals(f))
      {
        switch (4.b[f.ordinal()])
        {
        }
        for (;;)
        {
          try
          {
            switch (4.b[f.ordinal()])
            {
            case 2: 
              j();
            }
          }
          catch (Exception localException)
          {
            ib.a(4, a, "Exception during id fetch:" + f + ", " + localException);
          }
          break;
          f = hb.a.b;
          continue;
          f = hb.a.c;
          continue;
          f = hb.a.d;
          continue;
          f = hb.a.e;
          continue;
          f = hb.a.f;
        }
        k();
        continue;
        l();
        continue;
        x();
      }
      else
      {
        hc localhc = new hc();
        hx.a().a(localhc);
        return;
      }
    }
  }
  
  private void j()
  {
    
    if (!m()) {}
    do
    {
      return;
      g = n();
    } while (!c());
    x();
    hd localhd = new hd();
    hx.a().a(localhd);
  }
  
  private void k()
  {
    jn.b();
    h = o();
  }
  
  private void l()
  {
    if (hn.a().c().checkCallingOrSelfPermission("android.permission.READ_PHONE_STATE") != 0) {
      return;
    }
    w();
  }
  
  private boolean m()
  {
    try
    {
      int j = e.a(hn.a().c());
      if (j == 0) {
        return true;
      }
      ib.e(a, "Google Play Services not available - connection result: " + j);
      return false;
    }
    catch (NoClassDefFoundError localNoClassDefFoundError)
    {
      ib.b(a, "There is a problem with the Google Play Services library, which is required for Android Advertising ID support. The Google Play Services library should be integrated in any app shipping in the Play Store that uses analytics or advertising.");
      return false;
    }
    catch (Exception localException)
    {
      ib.b(a, "GOOGLE PLAY SERVICES EXCEPTION: " + localException.getMessage());
      ib.b(a, "There is a problem with the Google Play Services library, which is required for Android Advertising ID support. The Google Play Services library should be integrated in any app shipping in the Play Store that uses analytics or advertising.");
    }
    return false;
  }
  
  private b n()
  {
    try
    {
      b localb = a.b(hn.a().c());
      return localb;
    }
    catch (Exception localException)
    {
      ib.b(a, "GOOGLE PLAY SERVICES ERROR: " + localException.getMessage());
      ib.b(a, "There is a problem with the Google Play Services library, which is required for Android Advertising ID support. The Google Play Services library should be integrated in any app shipping in the Play Store that uses analytics or advertising.");
    }
    return null;
  }
  
  private String o()
  {
    String str = p();
    if (!TextUtils.isEmpty(str)) {
      return str;
    }
    return q();
  }
  
  private String p()
  {
    String str = Settings.Secure.getString(hn.a().c().getContentResolver(), "android_id");
    if (!a(str)) {
      return null;
    }
    return "AND" + str;
  }
  
  private String q()
  {
    String str2 = s();
    String str1 = str2;
    if (TextUtils.isEmpty(str2))
    {
      str2 = t();
      str1 = str2;
      if (TextUtils.isEmpty(str2)) {
        str1 = r();
      }
      b(str1);
    }
    return str1;
  }
  
  private String r()
  {
    long l1 = Double.doubleToLongBits(Math.random());
    long l2 = System.nanoTime();
    long l3 = jn.i(jk.c(hn.a().c()));
    return "ID" + Long.toString(l1 + (l2 + l3 * 37L) * 37L, 16);
  }
  
  /* Error */
  private String s()
  {
    // Byte code:
    //   0: invokestatic 85	com/flurry/sdk/hn:a	()Lcom/flurry/sdk/hn;
    //   3: invokevirtual 177	com/flurry/sdk/hn:c	()Landroid/content/Context;
    //   6: aload_0
    //   7: invokespecial 180	com/flurry/sdk/hb:u	()Ljava/lang/String;
    //   10: invokevirtual 186	android/content/Context:getFileStreamPath	(Ljava/lang/String;)Ljava/io/File;
    //   13: astore_1
    //   14: aload_1
    //   15: ifnull +10 -> 25
    //   18: aload_1
    //   19: invokevirtual 389	java/io/File:exists	()Z
    //   22: ifne +5 -> 27
    //   25: aconst_null
    //   26: areturn
    //   27: new 391	java/io/DataInputStream
    //   30: dup
    //   31: new 393	java/io/FileInputStream
    //   34: dup
    //   35: aload_1
    //   36: invokespecial 394	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   39: invokespecial 397	java/io/DataInputStream:<init>	(Ljava/io/InputStream;)V
    //   42: astore_2
    //   43: aload_2
    //   44: astore_1
    //   45: aload_0
    //   46: aload_2
    //   47: invokespecial 399	com/flurry/sdk/hb:a	(Ljava/io/DataInput;)Ljava/lang/String;
    //   50: astore_3
    //   51: aload_2
    //   52: invokestatic 140	com/flurry/sdk/jn:a	(Ljava/io/Closeable;)V
    //   55: aload_3
    //   56: areturn
    //   57: astore_3
    //   58: aconst_null
    //   59: astore_2
    //   60: aload_2
    //   61: astore_1
    //   62: bipush 6
    //   64: getstatic 44	com/flurry/sdk/hb:a	Ljava/lang/String;
    //   67: ldc_w 401
    //   70: aload_3
    //   71: invokestatic 147	com/flurry/sdk/ib:a	(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   74: aload_2
    //   75: invokestatic 140	com/flurry/sdk/jn:a	(Ljava/io/Closeable;)V
    //   78: aconst_null
    //   79: areturn
    //   80: astore_1
    //   81: aconst_null
    //   82: astore_3
    //   83: aload_1
    //   84: astore_2
    //   85: aload_3
    //   86: invokestatic 140	com/flurry/sdk/jn:a	(Ljava/io/Closeable;)V
    //   89: aload_2
    //   90: athrow
    //   91: astore_2
    //   92: aload_1
    //   93: astore_3
    //   94: goto -9 -> 85
    //   97: astore_3
    //   98: goto -38 -> 60
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	101	0	this	hb
    //   13	49	1	localObject1	Object
    //   80	13	1	localObject2	Object
    //   42	48	2	localObject3	Object
    //   91	1	2	localObject4	Object
    //   50	6	3	str	String
    //   57	14	3	localThrowable1	Throwable
    //   82	12	3	localObject5	Object
    //   97	1	3	localThrowable2	Throwable
    // Exception table:
    //   from	to	target	type
    //   27	43	57	java/lang/Throwable
    //   27	43	80	finally
    //   45	51	91	finally
    //   62	74	91	finally
    //   45	51	97	java/lang/Throwable
  }
  
  /* Error */
  private String t()
  {
    // Byte code:
    //   0: invokestatic 85	com/flurry/sdk/hn:a	()Lcom/flurry/sdk/hn;
    //   3: invokevirtual 177	com/flurry/sdk/hn:c	()Landroid/content/Context;
    //   6: invokevirtual 405	android/content/Context:getFilesDir	()Ljava/io/File;
    //   9: astore_1
    //   10: aload_1
    //   11: ifnonnull +5 -> 16
    //   14: aconst_null
    //   15: areturn
    //   16: aload_1
    //   17: new 12	com/flurry/sdk/hb$3
    //   20: dup
    //   21: aload_0
    //   22: invokespecial 406	com/flurry/sdk/hb$3:<init>	(Lcom/flurry/sdk/hb;)V
    //   25: invokevirtual 410	java/io/File:list	(Ljava/io/FilenameFilter;)[Ljava/lang/String;
    //   28: astore_1
    //   29: aload_1
    //   30: ifnull -16 -> 14
    //   33: aload_1
    //   34: arraylength
    //   35: ifeq -21 -> 14
    //   38: aload_1
    //   39: iconst_0
    //   40: aaload
    //   41: astore_1
    //   42: invokestatic 85	com/flurry/sdk/hn:a	()Lcom/flurry/sdk/hn;
    //   45: invokevirtual 177	com/flurry/sdk/hn:c	()Landroid/content/Context;
    //   48: aload_1
    //   49: invokevirtual 186	android/content/Context:getFileStreamPath	(Ljava/lang/String;)Ljava/io/File;
    //   52: astore_1
    //   53: aload_1
    //   54: ifnull -40 -> 14
    //   57: aload_1
    //   58: invokevirtual 389	java/io/File:exists	()Z
    //   61: ifeq -47 -> 14
    //   64: new 391	java/io/DataInputStream
    //   67: dup
    //   68: new 393	java/io/FileInputStream
    //   71: dup
    //   72: aload_1
    //   73: invokespecial 394	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   76: invokespecial 397	java/io/DataInputStream:<init>	(Ljava/io/InputStream;)V
    //   79: astore_2
    //   80: aload_2
    //   81: astore_1
    //   82: aload_0
    //   83: aload_2
    //   84: invokespecial 412	com/flurry/sdk/hb:b	(Ljava/io/DataInput;)Ljava/lang/String;
    //   87: astore_3
    //   88: aload_2
    //   89: invokestatic 140	com/flurry/sdk/jn:a	(Ljava/io/Closeable;)V
    //   92: aload_3
    //   93: areturn
    //   94: astore_3
    //   95: aconst_null
    //   96: astore_2
    //   97: aload_2
    //   98: astore_1
    //   99: bipush 6
    //   101: getstatic 44	com/flurry/sdk/hb:a	Ljava/lang/String;
    //   104: ldc_w 401
    //   107: aload_3
    //   108: invokestatic 147	com/flurry/sdk/ib:a	(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   111: aload_2
    //   112: invokestatic 140	com/flurry/sdk/jn:a	(Ljava/io/Closeable;)V
    //   115: aconst_null
    //   116: areturn
    //   117: astore_1
    //   118: aconst_null
    //   119: astore_3
    //   120: aload_1
    //   121: astore_2
    //   122: aload_3
    //   123: invokestatic 140	com/flurry/sdk/jn:a	(Ljava/io/Closeable;)V
    //   126: aload_2
    //   127: athrow
    //   128: astore_2
    //   129: aload_1
    //   130: astore_3
    //   131: goto -9 -> 122
    //   134: astore_3
    //   135: goto -38 -> 97
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	138	0	this	hb
    //   9	90	1	localObject1	Object
    //   117	13	1	localObject2	Object
    //   79	48	2	localObject3	Object
    //   128	1	2	localObject4	Object
    //   87	6	3	str	String
    //   94	14	3	localThrowable1	Throwable
    //   119	12	3	localObject5	Object
    //   134	1	3	localThrowable2	Throwable
    // Exception table:
    //   from	to	target	type
    //   64	80	94	java/lang/Throwable
    //   64	80	117	finally
    //   82	88	128	finally
    //   99	111	128	finally
    //   82	88	134	java/lang/Throwable
  }
  
  private String u()
  {
    return ".flurryb.";
  }
  
  private Set<String> v()
  {
    HashSet localHashSet = new HashSet();
    localHashSet.add("null");
    localHashSet.add("9774d56d682e549c");
    localHashSet.add("dead00beef");
    return Collections.unmodifiableSet(localHashSet);
  }
  
  private void w()
  {
    Object localObject = (TelephonyManager)hn.a().c().getSystemService("phone");
    if (localObject == null) {}
    do
    {
      return;
      localObject = ((TelephonyManager)localObject).getDeviceId();
    } while ((localObject == null) || (((String)localObject).trim().length() <= 0));
    try
    {
      localObject = jn.f((String)localObject);
      if ((localObject != null) && (localObject.length == 20))
      {
        i = ((byte[])localObject);
        return;
      }
    }
    catch (Exception localException)
    {
      ib.a(6, a, "Exception in generateHashedImei()");
      return;
    }
    ib.a(6, a, "sha1 is not " + 20 + " bytes long: " + Arrays.toString(localException));
  }
  
  private void x()
  {
    Object localObject = d();
    if (localObject != null)
    {
      ib.a(3, a, "Fetched advertising id");
      d.put(hj.c, jn.e((String)localObject));
    }
    localObject = f();
    if (localObject != null)
    {
      ib.a(3, a, "Fetched device id");
      d.put(hj.a, jn.e((String)localObject));
    }
    localObject = g();
    if (localObject != null)
    {
      ib.a(3, a, "Fetched hashed IMEI");
      d.put(hj.b, localObject);
    }
  }
  
  public boolean c()
  {
    return hb.a.f.equals(f);
  }
  
  public String d()
  {
    if (g == null) {
      return null;
    }
    return g.a();
  }
  
  public boolean e()
  {
    if (g == null) {}
    while (!g.b()) {
      return true;
    }
    return false;
  }
  
  public String f()
  {
    return h;
  }
  
  public byte[] g()
  {
    return i;
  }
  
  public Map<hj, byte[]> h()
  {
    return Collections.unmodifiableMap(d);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.hb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */