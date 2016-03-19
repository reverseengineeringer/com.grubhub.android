package com.facebook.internal;

import com.facebook.ad;
import com.facebook.m;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;
import java.util.PriorityQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONObject;

public final class s
{
  static final String a = s.class.getSimpleName();
  private static final AtomicLong b = new AtomicLong();
  private final String c;
  private final v d;
  private final File e;
  private boolean f;
  private boolean g;
  private final Object h;
  private AtomicLong i = new AtomicLong(0L);
  
  public s(String paramString, v paramv)
  {
    c = paramString;
    d = paramv;
    e = new File(m.m(), paramString);
    h = new Object();
    if ((e.mkdirs()) || (e.isDirectory())) {
      t.a(e);
    }
  }
  
  private void a(String paramString, File paramFile)
  {
    if (!paramFile.renameTo(new File(e, al.b(paramString)))) {
      paramFile.delete();
    }
    c();
  }
  
  private void c()
  {
    synchronized (h)
    {
      if (!f)
      {
        f = true;
        m.d().execute(new Runnable()
        {
          public void run()
          {
            s.b(s.this);
          }
        });
      }
      return;
    }
  }
  
  private void d()
  {
    synchronized (h)
    {
      f = false;
      g = true;
    }
    for (;;)
    {
      try
      {
        ab.a(ad.CACHE, a, "trim started");
        ??? = new PriorityQueue();
        l1 = 0L;
        long l3 = 0L;
        File[] arrayOfFile = e.listFiles(t.a());
        l2 = l3;
        l4 = l1;
        if (arrayOfFile == null) {
          continue;
        }
        int k = arrayOfFile.length;
        int j = 0;
        l2 = l3;
        l4 = l1;
        if (j >= k) {
          continue;
        }
        File localFile2 = arrayOfFile[j];
        w localw = new w(localFile2);
        ((PriorityQueue)???).add(localw);
        ab.a(ad.CACHE, a, "  trim considering time=" + Long.valueOf(localw.b()) + " name=" + localw.a().getName());
        l2 = localFile2.length();
        j += 1;
        l3 = 1L + l3;
        l1 = l2 + l1;
        continue;
        localObject2 = finally;
        throw ((Throwable)localObject2);
      }
      finally
      {
        long l1;
        long l2;
        synchronized (h)
        {
          long l4;
          File localFile1;
          g = false;
          h.notifyAll();
          throw ((Throwable)localObject4);
        }
      }
      if ((l4 <= d.a()) && (l1 <= d.b())) {
        continue;
      }
      localFile1 = ((w)((PriorityQueue)???).remove()).a();
      ab.a(ad.CACHE, a, "  trim removing " + localFile1.getName());
      l4 -= localFile1.length();
      localFile1.delete();
      l1 -= 1L;
    }
    synchronized (h)
    {
      g = false;
      h.notifyAll();
      return;
    }
  }
  
  public InputStream a(String paramString)
    throws IOException
  {
    return a(paramString, null);
  }
  
  public InputStream a(String paramString1, String paramString2)
    throws IOException
  {
    File localFile = new File(e, al.b(paramString1));
    try
    {
      Object localObject = new FileInputStream(localFile);
      localObject = new BufferedInputStream((InputStream)localObject, 8192);
      try
      {
        JSONObject localJSONObject = y.a((InputStream)localObject);
        if (localJSONObject == null) {
          return null;
        }
        String str = localJSONObject.optString("key");
        boolean bool;
        if (str != null)
        {
          bool = str.equals(paramString1);
          if (bool) {}
        }
        else
        {
          return null;
        }
        paramString1 = localJSONObject.optString("tag", null);
        if ((paramString2 != null) || (paramString1 == null))
        {
          if (paramString2 != null)
          {
            bool = paramString2.equals(paramString1);
            if (bool) {}
          }
        }
        else {
          return null;
        }
        long l = new Date().getTime();
        ab.a(ad.CACHE, a, "Setting lastModified to " + Long.valueOf(l) + " for " + localFile.getName());
        localFile.setLastModified(l);
        return (InputStream)localObject;
      }
      finally
      {
        ((BufferedInputStream)localObject).close();
      }
      return null;
    }
    catch (IOException paramString1) {}
  }
  
  public void a()
  {
    final File[] arrayOfFile = e.listFiles(t.a());
    i.set(System.currentTimeMillis());
    if (arrayOfFile != null) {
      m.d().execute(new Runnable()
      {
        public void run()
        {
          File[] arrayOfFile = arrayOfFile;
          int j = arrayOfFile.length;
          int i = 0;
          while (i < j)
          {
            arrayOfFile[i].delete();
            i += 1;
          }
        }
      });
    }
  }
  
  public OutputStream b(String paramString)
    throws IOException
  {
    return b(paramString, null);
  }
  
  /* Error */
  public OutputStream b(final String paramString1, String paramString2)
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 67	com/facebook/internal/s:e	Ljava/io/File;
    //   4: invokestatic 276	com/facebook/internal/t:b	(Ljava/io/File;)Ljava/io/File;
    //   7: astore_3
    //   8: aload_3
    //   9: invokevirtual 98	java/io/File:delete	()Z
    //   12: pop
    //   13: aload_3
    //   14: invokevirtual 279	java/io/File:createNewFile	()Z
    //   17: ifne +34 -> 51
    //   20: new 203	java/io/IOException
    //   23: dup
    //   24: new 152	java/lang/StringBuilder
    //   27: dup
    //   28: invokespecial 153	java/lang/StringBuilder:<init>	()V
    //   31: ldc_w 281
    //   34: invokevirtual 159	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   37: aload_3
    //   38: invokevirtual 284	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   41: invokevirtual 159	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   44: invokevirtual 181	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   47: invokespecial 287	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   50: athrow
    //   51: new 289	java/io/FileOutputStream
    //   54: dup
    //   55: aload_3
    //   56: invokespecial 290	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   59: astore 4
    //   61: new 292	java/io/BufferedOutputStream
    //   64: dup
    //   65: new 294	com/facebook/internal/u
    //   68: dup
    //   69: aload 4
    //   71: new 6	com/facebook/internal/s$1
    //   74: dup
    //   75: aload_0
    //   76: invokestatic 259	java/lang/System:currentTimeMillis	()J
    //   79: aload_3
    //   80: aload_1
    //   81: invokespecial 297	com/facebook/internal/s$1:<init>	(Lcom/facebook/internal/s;JLjava/io/File;Ljava/lang/String;)V
    //   84: invokespecial 300	com/facebook/internal/u:<init>	(Ljava/io/OutputStream;Lcom/facebook/internal/x;)V
    //   87: sipush 8192
    //   90: invokespecial 303	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;I)V
    //   93: astore_3
    //   94: new 227	org/json/JSONObject
    //   97: dup
    //   98: invokespecial 304	org/json/JSONObject:<init>	()V
    //   101: astore 4
    //   103: aload 4
    //   105: ldc -31
    //   107: aload_1
    //   108: invokevirtual 308	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   111: pop
    //   112: aload_2
    //   113: invokestatic 311	com/facebook/internal/al:a	(Ljava/lang/String;)Z
    //   116: ifne +12 -> 128
    //   119: aload 4
    //   121: ldc -19
    //   123: aload_2
    //   124: invokevirtual 308	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   127: pop
    //   128: aload_3
    //   129: aload 4
    //   131: invokestatic 314	com/facebook/internal/y:a	(Ljava/io/OutputStream;Lorg/json/JSONObject;)V
    //   134: aload_3
    //   135: areturn
    //   136: astore_1
    //   137: getstatic 125	com/facebook/ad:CACHE	Lcom/facebook/ad;
    //   140: iconst_5
    //   141: getstatic 35	com/facebook/internal/s:a	Ljava/lang/String;
    //   144: new 152	java/lang/StringBuilder
    //   147: dup
    //   148: invokespecial 153	java/lang/StringBuilder:<init>	()V
    //   151: ldc_w 316
    //   154: invokevirtual 159	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   157: aload_1
    //   158: invokevirtual 171	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   161: invokevirtual 181	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   164: invokestatic 319	com/facebook/internal/ab:a	(Lcom/facebook/ad;ILjava/lang/String;Ljava/lang/String;)V
    //   167: new 203	java/io/IOException
    //   170: dup
    //   171: aload_1
    //   172: invokevirtual 322	java/io/FileNotFoundException:getMessage	()Ljava/lang/String;
    //   175: invokespecial 287	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   178: athrow
    //   179: astore_1
    //   180: getstatic 125	com/facebook/ad:CACHE	Lcom/facebook/ad;
    //   183: iconst_5
    //   184: getstatic 35	com/facebook/internal/s:a	Ljava/lang/String;
    //   187: new 152	java/lang/StringBuilder
    //   190: dup
    //   191: invokespecial 153	java/lang/StringBuilder:<init>	()V
    //   194: ldc_w 324
    //   197: invokevirtual 159	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   200: aload_1
    //   201: invokevirtual 171	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   204: invokevirtual 181	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   207: invokestatic 319	com/facebook/internal/ab:a	(Lcom/facebook/ad;ILjava/lang/String;Ljava/lang/String;)V
    //   210: new 203	java/io/IOException
    //   213: dup
    //   214: aload_1
    //   215: invokevirtual 325	org/json/JSONException:getMessage	()Ljava/lang/String;
    //   218: invokespecial 287	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   221: athrow
    //   222: astore_1
    //   223: aload_3
    //   224: invokevirtual 326	java/io/BufferedOutputStream:close	()V
    //   227: aload_1
    //   228: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	229	0	this	s
    //   0	229	1	paramString1	String
    //   0	229	2	paramString2	String
    //   7	217	3	localObject1	Object
    //   59	71	4	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   51	61	136	java/io/FileNotFoundException
    //   94	128	179	org/json/JSONException
    //   128	134	179	org/json/JSONException
    //   94	128	222	finally
    //   128	134	222	finally
    //   180	222	222	finally
  }
  
  public String toString()
  {
    return "{FileLruCache: tag:" + c + " file:" + e.getName() + "}";
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */