package com.crashlytics.android;

import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Environment;
import com.crashlytics.android.internal.ab;
import com.crashlytics.android.internal.ah;
import com.crashlytics.android.internal.ap;
import com.crashlytics.android.internal.aq;
import com.crashlytics.android.internal.q;
import com.crashlytics.android.internal.r;
import java.io.File;
import java.io.FileInputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.Writer;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;
import java.util.UUID;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Pattern;

final class v
  implements Thread.UncaughtExceptionHandler
{
  static final FilenameFilter a = new w();
  private static Comparator<File> b = new H();
  private static Comparator<File> c = new J();
  private static final Pattern d = Pattern.compile("([\\d|A-Z|a-z]{12}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{12}).+");
  private static final Map<String, String> e = Collections.singletonMap("X-CRASHLYTICS-SEND-FLAGS", "1");
  private static final d f = d.a("0");
  private final AtomicInteger g = new AtomicInteger(0);
  private final AtomicBoolean h = new AtomicBoolean(false);
  private final int i;
  private final Thread.UncaughtExceptionHandler j;
  private final File k;
  private final File l;
  private final AtomicBoolean m;
  private final String n;
  private final BroadcastReceiver o;
  private final BroadcastReceiver p;
  private final d q;
  private final d r;
  private final ExecutorService s;
  private ActivityManager.RunningAppProcessInfo t;
  private aq u;
  private boolean v;
  private Thread[] w;
  private List<StackTraceElement[]> x;
  private StackTraceElement[] y;
  
  static
  {
    new K();
  }
  
  public v(Thread.UncaughtExceptionHandler paramUncaughtExceptionHandler, CrashlyticsListener paramCrashlyticsListener, String paramString)
  {
    this(paramUncaughtExceptionHandler, paramCrashlyticsListener, ah.a("Crashlytics Exception Handler"), paramString);
  }
  
  private v(Thread.UncaughtExceptionHandler paramUncaughtExceptionHandler, CrashlyticsListener paramCrashlyticsListener, ExecutorService paramExecutorService, String paramString)
  {
    j = paramUncaughtExceptionHandler;
    s = paramExecutorService;
    m = new AtomicBoolean(false);
    k = com.crashlytics.android.internal.v.a().h();
    l = new File(k, "initialization_marker");
    n = String.format(Locale.US, "Crashlytics Android SDK/%s", new Object[] { Crashlytics.getInstance().getVersion() });
    i = 8;
    com.crashlytics.android.internal.v.a().b().a("Crashlytics", "Checking for previous crash marker.");
    paramUncaughtExceptionHandler = new File(com.crashlytics.android.internal.v.a().h(), "crash_marker");
    if (paramUncaughtExceptionHandler.exists())
    {
      paramUncaughtExceptionHandler.delete();
      if (paramCrashlyticsListener == null) {}
    }
    try
    {
      paramCrashlyticsListener.crashlyticsDidDetectCrashDuringPreviousExecution();
      q = d.a(Crashlytics.d());
      if (paramString == null)
      {
        paramUncaughtExceptionHandler = null;
        r = paramUncaughtExceptionHandler;
        p = new L(this);
        paramUncaughtExceptionHandler = new IntentFilter("android.intent.action.ACTION_POWER_CONNECTED");
        o = new M(this);
        paramCrashlyticsListener = new IntentFilter("android.intent.action.ACTION_POWER_DISCONNECTED");
        Crashlytics.getInstance().getContext().registerReceiver(p, paramUncaughtExceptionHandler);
        Crashlytics.getInstance().getContext().registerReceiver(o, paramCrashlyticsListener);
        h.set(true);
        return;
      }
    }
    catch (Exception paramUncaughtExceptionHandler)
    {
      for (;;)
      {
        com.crashlytics.android.internal.v.a().b().a("Crashlytics", "Exception thrown by CrashlyticsListener while notifying of previous crash.", paramUncaughtExceptionHandler);
        continue;
        paramUncaughtExceptionHandler = d.a(paramString.replace("-", ""));
      }
    }
  }
  
  private static int a(float paramFloat, int paramInt1, boolean paramBoolean, int paramInt2, long paramLong1, long paramLong2)
  {
    return h.b(1, paramFloat) + 0 + h.f(2, paramInt1) + h.b(3, paramBoolean) + h.d(4, paramInt2) + h.b(5, paramLong1) + h.b(6, paramLong2);
  }
  
  private int a(int paramInt1, d paramd1, d paramd2, int paramInt2, long paramLong1, long paramLong2, boolean paramBoolean, Map<ap, String> paramMap, int paramInt3, d paramd3, d paramd4)
  {
    int i1 = h.b(1, paramd1);
    int i2 = h.e(3, paramInt1);
    if (paramd2 == null) {}
    for (paramInt1 = 0;; paramInt1 = h.b(4, paramd2))
    {
      paramInt1 = paramInt1 + (i2 + (i1 + 0)) + h.d(5, paramInt2) + h.b(6, paramLong1) + h.b(7, paramLong2) + h.b(10, paramBoolean);
      if (paramMap == null) {
        break;
      }
      paramd1 = paramMap.entrySet().iterator();
      for (;;)
      {
        paramInt2 = paramInt1;
        if (!paramd1.hasNext()) {
          break;
        }
        paramd2 = (Map.Entry)paramd1.next();
        paramInt2 = a((ap)paramd2.getKey(), (String)paramd2.getValue());
        paramInt1 = paramInt2 + (h.a(11) + h.c(paramInt2)) + paramInt1;
      }
    }
    paramInt2 = paramInt1;
    i1 = h.d(12, paramInt3);
    if (paramd3 == null)
    {
      paramInt1 = 0;
      if (paramd4 != null) {
        break label202;
      }
    }
    label202:
    for (paramInt3 = 0;; paramInt3 = h.b(14, paramd4))
    {
      return paramInt3 + (paramInt2 + i1 + paramInt1);
      paramInt1 = h.b(13, paramd3);
      break;
    }
  }
  
  private static int a(ap paramap, String paramString)
  {
    return h.e(1, f) + h.b(2, d.a(paramString));
  }
  
  private static int a(StackTraceElement paramStackTraceElement, boolean paramBoolean)
  {
    int i1;
    int i2;
    if (paramStackTraceElement.isNativeMethod())
    {
      i1 = h.b(1, Math.max(paramStackTraceElement.getLineNumber(), 0)) + 0;
      i2 = i1 + h.b(2, d.a(paramStackTraceElement.getClassName() + "." + paramStackTraceElement.getMethodName()));
      i1 = i2;
      if (paramStackTraceElement.getFileName() != null) {
        i1 = i2 + h.b(3, d.a(paramStackTraceElement.getFileName()));
      }
      if ((paramStackTraceElement.isNativeMethod()) || (paramStackTraceElement.getLineNumber() <= 0)) {
        break label142;
      }
      i1 += h.b(4, paramStackTraceElement.getLineNumber());
    }
    label142:
    for (;;)
    {
      if (paramBoolean) {}
      for (i2 = 2;; i2 = 0)
      {
        return h.d(5, i2) + i1;
        i1 = h.b(1, 0L) + 0;
        break;
      }
    }
  }
  
  private static int a(String paramString1, String paramString2)
  {
    int i1 = h.b(1, d.a(paramString1));
    paramString1 = paramString2;
    if (paramString2 == null) {
      paramString1 = "";
    }
    return i1 + h.b(2, d.a(paramString1));
  }
  
  private int a(Thread paramThread, Throwable paramThrowable, Map<String, String> paramMap)
  {
    int i1 = b(paramThread, paramThrowable);
    i1 = i1 + (h.a(1) + h.c(i1)) + 0;
    if (paramMap != null)
    {
      paramThread = paramMap.entrySet().iterator();
      for (;;)
      {
        i2 = i1;
        if (!paramThread.hasNext()) {
          break;
        }
        paramThrowable = (Map.Entry)paramThread.next();
        i2 = a((String)paramThrowable.getKey(), (String)paramThrowable.getValue());
        i1 = i2 + (h.a(2) + h.c(i2)) + i1;
      }
    }
    int i2 = i1;
    i1 = i2;
    if (t != null) {
      if (t.importance == 100) {
        break label172;
      }
    }
    label172:
    for (boolean bool = true;; bool = false)
    {
      i1 = i2 + h.b(3, bool);
      return h.d(4, getInstancegetContextgetResourcesgetConfigurationorientation) + i1;
    }
  }
  
  private int a(Thread paramThread, StackTraceElement[] paramArrayOfStackTraceElement, int paramInt, boolean paramBoolean)
  {
    int i1 = h.b(1, d.a(paramThread.getName()));
    i1 = h.d(2, paramInt) + i1;
    int i2 = paramArrayOfStackTraceElement.length;
    paramInt = 0;
    while (paramInt < i2)
    {
      int i3 = a(paramArrayOfStackTraceElement[paramInt], paramBoolean);
      i1 += i3 + (h.a(3) + h.c(i3));
      paramInt += 1;
    }
    return i1;
  }
  
  private int a(Throwable paramThrowable, int paramInt)
  {
    int i3 = 0;
    int i2 = h.b(1, d.a(paramThrowable.getClass().getName())) + 0;
    Object localObject = paramThrowable.getLocalizedMessage();
    int i1 = i2;
    if (localObject != null) {
      i1 = i2 + h.b(3, d.a((String)localObject));
    }
    localObject = paramThrowable.getStackTrace();
    int i4 = localObject.length;
    i2 = 0;
    while (i2 < i4)
    {
      int i5 = a(localObject[i2], true);
      int i6 = h.a(4);
      int i7 = h.c(i5);
      i2 += 1;
      i1 = i5 + (i6 + i7) + i1;
    }
    localObject = paramThrowable.getCause();
    i2 = i1;
    if (localObject != null)
    {
      i2 = i3;
      paramThrowable = (Throwable)localObject;
      if (paramInt < 8)
      {
        paramInt = a((Throwable)localObject, paramInt + 1);
        i2 = i1 + (paramInt + (h.a(6) + h.c(paramInt)));
      }
    }
    else
    {
      return i2;
    }
    while (paramThrowable != null)
    {
      paramThrowable = paramThrowable.getCause();
      i2 += 1;
    }
    return i1 + h.d(7, i2);
  }
  
  private d a(aq paramaq)
  {
    if (paramaq == null) {
      return null;
    }
    int[] arrayOfInt = new int[1];
    arrayOfInt[0] = 0;
    byte[] arrayOfByte = new byte[paramaq.a()];
    try
    {
      paramaq.a(new y(this, arrayOfByte, arrayOfInt));
      return d.a(arrayOfByte, 0, arrayOfInt[0]);
    }
    catch (IOException paramaq)
    {
      for (;;)
      {
        com.crashlytics.android.internal.v.a().b().a("Crashlytics", "A problem occurred while reading the Crashlytics log file.", paramaq);
      }
    }
  }
  
  private <T> T a(Callable<T> paramCallable)
  {
    try
    {
      paramCallable = s.submit(paramCallable).get();
      return paramCallable;
    }
    catch (RejectedExecutionException paramCallable)
    {
      com.crashlytics.android.internal.v.a().b().a("Crashlytics", "Executor is shut down because we're handling a fatal crash.");
      return null;
    }
    catch (Exception paramCallable)
    {
      com.crashlytics.android.internal.v.a().b().a("Crashlytics", "Failed to execute task.", paramCallable);
    }
    return null;
  }
  
  private static String a(File paramFile)
  {
    return paramFile.getName().substring(0, 35);
  }
  
  private Future<?> a(Runnable paramRunnable)
  {
    try
    {
      paramRunnable = s.submit(new G(this, paramRunnable));
      return paramRunnable;
    }
    catch (RejectedExecutionException paramRunnable)
    {
      com.crashlytics.android.internal.v.a().b().a("Crashlytics", "Executor is shut down because we're handling a fatal crash.");
    }
    return null;
  }
  
  private static void a(f paramf)
  {
    if (paramf != null) {}
    try
    {
      paramf.a();
      return;
    }
    catch (IOException paramf)
    {
      com.crashlytics.android.internal.v.a().b().a("Crashlytics", "Error closing session file stream in the presence of an exception", paramf);
    }
  }
  
  private void a(h paramh, int paramInt, StackTraceElement paramStackTraceElement, boolean paramBoolean)
    throws Exception
  {
    int i1 = 4;
    paramh.g(paramInt, 2);
    paramh.b(a(paramStackTraceElement, paramBoolean));
    if (paramStackTraceElement.isNativeMethod())
    {
      paramh.a(1, Math.max(paramStackTraceElement.getLineNumber(), 0));
      paramh.a(2, d.a(paramStackTraceElement.getClassName() + "." + paramStackTraceElement.getMethodName()));
      if (paramStackTraceElement.getFileName() != null) {
        paramh.a(3, d.a(paramStackTraceElement.getFileName()));
      }
      if ((!paramStackTraceElement.isNativeMethod()) && (paramStackTraceElement.getLineNumber() > 0)) {
        paramh.a(4, paramStackTraceElement.getLineNumber());
      }
      if (!paramBoolean) {
        break label145;
      }
    }
    label145:
    for (paramInt = i1;; paramInt = 0)
    {
      paramh.a(5, paramInt);
      return;
      paramh.a(1, 0L);
      break;
    }
  }
  
  private static void a(h paramh, File paramFile)
    throws IOException
  {
    if (paramFile.exists())
    {
      byte[] arrayOfByte = new byte[(int)paramFile.length()];
      try
      {
        paramFile = new FileInputStream(paramFile);
        int i1 = 0;
        int i2;
        ab.a(paramFile, "Failed to close file input stream.");
      }
      finally
      {
        try
        {
          while (i1 < arrayOfByte.length)
          {
            i2 = paramFile.read(arrayOfByte, i1, arrayOfByte.length - i1);
            if (i2 < 0) {
              break;
            }
            i1 += i2;
          }
          ab.a(paramFile, "Failed to close file input stream.");
          paramh.a(arrayOfByte);
          return;
        }
        finally
        {
          for (;;) {}
        }
        paramh = finally;
        paramFile = null;
      }
      throw paramh;
    }
    com.crashlytics.android.internal.v.a().b().a("Crashlytics", "Tried to include a file that doesn't exist: " + paramFile.getName(), null);
  }
  
  private void a(h paramh, String paramString)
    throws IOException
  {
    String[] arrayOfString = new String[4];
    arrayOfString[0] = "SessionUser";
    arrayOfString[1] = "SessionApp";
    arrayOfString[2] = "SessionOS";
    arrayOfString[3] = "SessionDevice";
    int i2 = arrayOfString.length;
    int i1 = 0;
    if (i1 < i2)
    {
      String str = arrayOfString[i1];
      File[] arrayOfFile = a(new R(paramString + str));
      if (arrayOfFile.length == 0) {
        com.crashlytics.android.internal.v.a().b().a("Crashlytics", "Can't find " + str + " data for session ID " + paramString, null);
      }
      for (;;)
      {
        i1 += 1;
        break;
        com.crashlytics.android.internal.v.a().b().a("Crashlytics", "Collecting " + str + " data for session ID " + paramString);
        a(paramh, arrayOfFile[0]);
      }
    }
  }
  
  private void a(h paramh, Thread paramThread, Throwable paramThrowable)
    throws Exception
  {
    paramh.g(1, 2);
    paramh.b(b(paramThread, paramThrowable));
    a(paramh, paramThread, y, 4, true);
    int i2 = w.length;
    int i1 = 0;
    while (i1 < i2)
    {
      a(paramh, w[i1], (StackTraceElement[])x.get(i1), 0, false);
      i1 += 1;
    }
    a(paramh, paramThrowable, 1, 2);
    paramh.g(3, 2);
    paramh.b(s());
    paramh.a(1, f);
    paramh.a(2, f);
    paramh.a(3, 0L);
    paramh.g(4, 2);
    paramh.b(r());
    paramh.a(1, 0L);
    paramh.a(2, 0L);
    paramh.a(3, q);
    if (r != null) {
      paramh.a(4, r);
    }
  }
  
  private void a(h paramh, Thread paramThread, StackTraceElement[] paramArrayOfStackTraceElement, int paramInt, boolean paramBoolean)
    throws Exception
  {
    paramh.g(1, 2);
    paramh.b(a(paramThread, paramArrayOfStackTraceElement, paramInt, paramBoolean));
    paramh.a(1, d.a(paramThread.getName()));
    paramh.a(2, paramInt);
    int i1 = paramArrayOfStackTraceElement.length;
    paramInt = 0;
    while (paramInt < i1)
    {
      a(paramh, 3, paramArrayOfStackTraceElement[paramInt], paramBoolean);
      paramInt += 1;
    }
  }
  
  private void a(h paramh, Throwable paramThrowable, int paramInt1, int paramInt2)
    throws Exception
  {
    int i1 = 0;
    paramh.g(paramInt2, 2);
    paramh.b(a(paramThrowable, 1));
    paramh.a(1, d.a(paramThrowable.getClass().getName()));
    Object localObject = paramThrowable.getLocalizedMessage();
    if (localObject != null) {
      paramh.a(3, d.a((String)localObject));
    }
    localObject = paramThrowable.getStackTrace();
    int i2 = localObject.length;
    paramInt2 = 0;
    while (paramInt2 < i2)
    {
      a(paramh, 4, localObject[paramInt2], true);
      paramInt2 += 1;
    }
    localObject = paramThrowable.getCause();
    if (localObject != null)
    {
      paramInt2 = i1;
      paramThrowable = (Throwable)localObject;
      if (paramInt1 < 8) {
        a(paramh, (Throwable)localObject, paramInt1 + 1, 6);
      }
    }
    else
    {
      return;
    }
    while (paramThrowable != null)
    {
      paramThrowable = paramThrowable.getCause();
      paramInt2 += 1;
    }
    paramh.a(7, paramInt2);
  }
  
  private void a(h paramh, Map<String, String> paramMap)
    throws Exception
  {
    Iterator localIterator = paramMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      paramMap = (Map.Entry)localIterator.next();
      paramh.g(2, 2);
      paramh.b(a((String)paramMap.getKey(), (String)paramMap.getValue()));
      paramh.a(1, d.a((String)paramMap.getKey()));
      String str = (String)paramMap.getValue();
      paramMap = str;
      if (str == null) {
        paramMap = "";
      }
      paramh.a(2, d.a(paramMap));
    }
  }
  
  private void a(h paramh, File[] paramArrayOfFile, String paramString)
  {
    Arrays.sort(paramArrayOfFile, ab.a);
    int i2 = paramArrayOfFile.length;
    int i1 = 0;
    for (;;)
    {
      if (i1 < i2)
      {
        File localFile = paramArrayOfFile[i1];
        try
        {
          com.crashlytics.android.internal.v.a().b().a("Crashlytics", String.format(Locale.US, "Found Non Fatal for session ID %s in %s ", new Object[] { paramString, localFile.getName() }));
          a(paramh, localFile);
          i1 += 1;
        }
        catch (Exception localException)
        {
          for (;;)
          {
            com.crashlytics.android.internal.v.a().b().a("Crashlytics", "Error writting non-fatal to session.", localException);
          }
        }
      }
    }
  }
  
  static void a(aq paramaq, int paramInt, long paramLong, String paramString)
  {
    if (paramaq == null) {}
    for (;;)
    {
      return;
      if (paramString == null)
      {
        paramString = "null";
        String str = paramString;
        try
        {
          if (paramString.length() > 16384) {
            str = "..." + paramString.substring(paramString.length() - 16384);
          }
          paramString = str.replaceAll("\r", " ").replaceAll("\n", " ");
          paramaq.a(String.format(Locale.US, "%d %s%n", new Object[] { Long.valueOf(paramLong), paramString }).getBytes("UTF-8"));
          while ((!paramaq.b()) && (paramaq.a() > 65536)) {
            paramaq.c();
          }
        }
        catch (IOException paramaq)
        {
          com.crashlytics.android.internal.v.a().b().a("Crashlytics", "There was a problem writing to the Crashlytics log.", paramaq);
          return;
        }
      }
    }
  }
  
  private void a(String paramString)
  {
    paramString = a(new S(paramString));
    int i2 = paramString.length;
    int i1 = 0;
    while (i1 < i2)
    {
      paramString[i1].delete();
      i1 += 1;
    }
  }
  
  private void a(String paramString, int paramInt)
  {
    b.a(k, new R(paramString + "SessionEvent"), paramInt, c);
  }
  
  /* Error */
  private void a(Throwable paramThrowable, java.io.OutputStream paramOutputStream)
  {
    // Byte code:
    //   0: aload_2
    //   1: ifnull +26 -> 27
    //   4: new 695	java/io/PrintWriter
    //   7: dup
    //   8: aload_2
    //   9: invokespecial 698	java/io/PrintWriter:<init>	(Ljava/io/OutputStream;)V
    //   12: astore_3
    //   13: aload_3
    //   14: astore_2
    //   15: aload_1
    //   16: aload_3
    //   17: invokestatic 701	com/crashlytics/android/v:a	(Ljava/lang/Throwable;Ljava/io/Writer;)V
    //   20: aload_3
    //   21: ldc_w 703
    //   24: invokestatic 528	com/crashlytics/android/internal/ab:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   27: return
    //   28: astore 4
    //   30: aconst_null
    //   31: astore_1
    //   32: aload_1
    //   33: astore_2
    //   34: invokestatic 146	com/crashlytics/android/internal/v:a	()Lcom/crashlytics/android/internal/v;
    //   37: invokevirtual 191	com/crashlytics/android/internal/v:b	()Lcom/crashlytics/android/internal/q;
    //   40: ldc -63
    //   42: ldc_w 705
    //   45: aload 4
    //   47: invokeinterface 259 4 0
    //   52: aload_1
    //   53: ldc_w 703
    //   56: invokestatic 528	com/crashlytics/android/internal/ab:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   59: return
    //   60: astore_1
    //   61: aconst_null
    //   62: astore_2
    //   63: aload_2
    //   64: ldc_w 703
    //   67: invokestatic 528	com/crashlytics/android/internal/ab:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   70: aload_1
    //   71: athrow
    //   72: astore_1
    //   73: goto -10 -> 63
    //   76: astore 4
    //   78: aload_3
    //   79: astore_1
    //   80: goto -48 -> 32
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	83	0	this	v
    //   0	83	1	paramThrowable	Throwable
    //   0	83	2	paramOutputStream	java.io.OutputStream
    //   12	67	3	localPrintWriter	java.io.PrintWriter
    //   28	18	4	localException1	Exception
    //   76	1	4	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   4	13	28	java/lang/Exception
    //   4	13	60	finally
    //   15	20	72	finally
    //   34	52	72	finally
    //   15	20	76	java/lang/Exception
  }
  
  private static void a(Throwable paramThrowable, Writer paramWriter)
  {
    int i1 = 1;
    Throwable localThrowable = paramThrowable;
    if (localThrowable != null) {}
    for (;;)
    {
      try
      {
        paramThrowable = localThrowable.getLocalizedMessage();
        if (paramThrowable == null)
        {
          paramThrowable = null;
          break label175;
          paramWriter.write(str + localThrowable.getClass().getName() + ": " + paramThrowable + "\n");
          paramThrowable = localThrowable.getStackTrace();
          int i2 = paramThrowable.length;
          i1 = 0;
          if (i1 < i2)
          {
            str = paramThrowable[i1];
            paramWriter.write("\tat " + str.toString() + "\n");
            i1 += 1;
            continue;
          }
        }
        else
        {
          paramThrowable = paramThrowable.replaceAll("(\r\n|\n|\f)", " ");
          break label175;
        }
        localThrowable = localThrowable.getCause();
        i1 = 0;
      }
      catch (Exception paramThrowable)
      {
        com.crashlytics.android.internal.v.a().b().a("Crashlytics", "Could not write stack trace", paramThrowable);
      }
      return;
      label175:
      if (paramThrowable != null) {}
      for (;;)
      {
        if (i1 == 0) {
          break label198;
        }
        str = "";
        break;
        paramThrowable = "";
      }
      label198:
      String str = "Caused by: ";
    }
  }
  
  private void a(Date paramDate, h paramh, Thread paramThread, Throwable paramThrowable, String paramString, boolean paramBoolean)
    throws Exception
  {
    long l1 = paramDate.getTime() / 1000L;
    float f1 = ab.b(Crashlytics.getInstance().getContext());
    int i3 = ab.a(v);
    boolean bool = ab.c(Crashlytics.getInstance().getContext());
    int i4 = getInstancegetContextgetResourcesgetConfigurationorientation;
    long l2 = ab.c() - ab.a(Crashlytics.getInstance().getContext());
    long l3 = ab.b(Environment.getDataDirectory().getPath());
    t = ab.a(Crashlytics.d(), Crashlytics.getInstance().getContext());
    x = new LinkedList();
    y = paramThrowable.getStackTrace();
    int i1;
    if (paramBoolean)
    {
      paramDate = Thread.getAllStackTraces();
      w = new Thread[paramDate.size()];
      paramDate = paramDate.entrySet().iterator();
      i1 = 0;
      while (paramDate.hasNext())
      {
        localObject = (Map.Entry)paramDate.next();
        w[i1] = ((Thread)((Map.Entry)localObject).getKey());
        x.add(((Map.Entry)localObject).getValue());
        i1 += 1;
      }
    }
    w = new Thread[0];
    Object localObject = a(u);
    if (localObject == null) {
      com.crashlytics.android.internal.v.a().b().a("Crashlytics", "No log data to include with this event.");
    }
    ab.a(u, "There was a problem closing the Crashlytics log file.");
    u = null;
    if (!ab.a(Crashlytics.getInstance().getContext(), "com.crashlytics.CollectCustomKeys", true)) {
      paramDate = new TreeMap();
    }
    label680:
    label686:
    for (;;)
    {
      paramh.g(10, 2);
      i1 = h.b(1, l1);
      int i2 = h.b(2, d.a(paramString));
      int i5 = a(paramThread, paramThrowable, paramDate);
      int i6 = h.a(3);
      int i7 = h.c(i5);
      int i8 = a(f1, i3, bool, i4, l2, l3);
      i2 = i1 + 0 + i2 + (i5 + (i6 + i7)) + (i8 + (h.a(5) + h.c(i8)));
      i1 = i2;
      if (localObject != null)
      {
        i1 = h.b(1, (d)localObject);
        i1 = i2 + (i1 + (h.a(6) + h.c(i1)));
      }
      paramh.b(i1);
      paramh.a(1, l1);
      paramh.a(2, d.a(paramString));
      paramh.g(3, 2);
      paramh.b(a(paramThread, paramThrowable, paramDate));
      a(paramh, paramThread, paramThrowable);
      if ((paramDate != null) && (!paramDate.isEmpty())) {
        a(paramh, paramDate);
      }
      if (t != null) {
        if (t.importance == 100) {
          break label680;
        }
      }
      for (paramBoolean = true;; paramBoolean = false)
      {
        paramh.a(3, paramBoolean);
        paramh.a(4, getInstancegetContextgetResourcesgetConfigurationorientation);
        paramh.g(5, 2);
        paramh.b(a(f1, i3, bool, i4, l2, l3));
        paramh.a(1, f1);
        paramh.c(2, i3);
        paramh.a(3, bool);
        paramh.a(4, i4);
        paramh.a(5, l2);
        paramh.a(6, l3);
        if (localObject != null)
        {
          paramh.g(6, 2);
          paramh.b(h.b(1, (d)localObject));
          paramh.a(1, (d)localObject);
        }
        return;
        paramDate = Crashlytics.getInstance().a();
        if ((paramDate == null) || (paramDate.size() <= 1)) {
          break label686;
        }
        paramDate = new TreeMap(paramDate);
        break;
      }
    }
  }
  
  private File[] a(FilenameFilter paramFilenameFilter)
  {
    File[] arrayOfFile = k.listFiles(paramFilenameFilter);
    paramFilenameFilter = arrayOfFile;
    if (arrayOfFile == null) {
      paramFilenameFilter = new File[0];
    }
    return paramFilenameFilter;
  }
  
  private int b(Thread paramThread, Throwable paramThrowable)
  {
    int i1 = a(paramThread, y, 4, true);
    int i4 = h.a(1);
    int i5 = h.c(i1);
    int i3 = w.length;
    int i2 = 0;
    i1 = i1 + (i4 + i5) + 0;
    while (i2 < i3)
    {
      i4 = a(w[i2], (StackTraceElement[])x.get(i2), 0, false);
      i1 += i4 + (h.a(1) + h.c(i4));
      i2 += 1;
    }
    i2 = a(paramThrowable, 1);
    i3 = h.a(2);
    i4 = h.c(i2);
    i5 = s();
    int i6 = h.a(3);
    int i7 = h.c(i5);
    int i8 = r();
    return i2 + (i3 + i4) + i1 + (i5 + (i6 + i7)) + (i8 + (h.a(3) + h.c(i8)));
  }
  
  private static d b(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    return d.a(paramString);
  }
  
  private <T> Future<T> b(Callable<T> paramCallable)
  {
    try
    {
      paramCallable = s.submit(new I(this, paramCallable));
      return paramCallable;
    }
    catch (RejectedExecutionException paramCallable)
    {
      com.crashlytics.android.internal.v.a().b().a("Crashlytics", "Executor is shut down because we're handling a fatal crash.");
    }
    return null;
  }
  
  /* Error */
  private void c(String paramString)
    throws Exception
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 12
    //   3: aconst_null
    //   4: astore 10
    //   6: new 488	com/crashlytics/android/f
    //   9: dup
    //   10: invokestatic 146	com/crashlytics/android/internal/v:a	()Lcom/crashlytics/android/internal/v;
    //   13: invokevirtual 149	com/crashlytics/android/internal/v:h	()Ljava/io/File;
    //   16: new 350	java/lang/StringBuilder
    //   19: dup
    //   20: invokespecial 351	java/lang/StringBuilder:<init>	()V
    //   23: aload_1
    //   24: invokevirtual 358	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   27: ldc_w 543
    //   30: invokevirtual 358	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   33: invokevirtual 366	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   36: invokespecial 652	com/crashlytics/android/f:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   39: astore 11
    //   41: aload 11
    //   43: invokestatic 655	com/crashlytics/android/h:a	(Ljava/io/OutputStream;)Lcom/crashlytics/android/h;
    //   46: astore_1
    //   47: aload_1
    //   48: astore 10
    //   50: new 853	android/os/StatFs
    //   53: dup
    //   54: invokestatic 749	android/os/Environment:getDataDirectory	()Ljava/io/File;
    //   57: invokevirtual 752	java/io/File:getPath	()Ljava/lang/String;
    //   60: invokespecial 854	android/os/StatFs:<init>	(Ljava/lang/String;)V
    //   63: astore 14
    //   65: invokestatic 856	com/crashlytics/android/internal/ab:b	()I
    //   68: istore_2
    //   69: getstatic 861	android/os/Build:MODEL	Ljava/lang/String;
    //   72: invokestatic 863	com/crashlytics/android/v:b	(Ljava/lang/String;)Lcom/crashlytics/android/d;
    //   75: astore 13
    //   77: getstatic 866	android/os/Build:MANUFACTURER	Ljava/lang/String;
    //   80: invokestatic 863	com/crashlytics/android/v:b	(Ljava/lang/String;)Lcom/crashlytics/android/d;
    //   83: astore_1
    //   84: getstatic 869	android/os/Build:PRODUCT	Ljava/lang/String;
    //   87: invokestatic 863	com/crashlytics/android/v:b	(Ljava/lang/String;)Lcom/crashlytics/android/d;
    //   90: astore 12
    //   92: invokestatic 875	java/lang/Runtime:getRuntime	()Ljava/lang/Runtime;
    //   95: invokevirtual 878	java/lang/Runtime:availableProcessors	()I
    //   98: istore_3
    //   99: invokestatic 741	com/crashlytics/android/internal/ab:c	()J
    //   102: lstore 5
    //   104: aload 14
    //   106: invokevirtual 881	android/os/StatFs:getBlockCount	()I
    //   109: i2l
    //   110: aload 14
    //   112: invokevirtual 884	android/os/StatFs:getBlockSize	()I
    //   115: i2l
    //   116: lmul
    //   117: lstore 7
    //   119: invokestatic 886	com/crashlytics/android/internal/ab:d	()Z
    //   122: istore 9
    //   124: invokestatic 174	com/crashlytics/android/Crashlytics:getInstance	()Lcom/crashlytics/android/Crashlytics;
    //   127: invokevirtual 889	com/crashlytics/android/Crashlytics:b	()Lcom/crashlytics/android/internal/ao;
    //   130: astore 15
    //   132: aload 15
    //   134: invokevirtual 893	com/crashlytics/android/internal/ao:e	()Ljava/lang/String;
    //   137: invokestatic 104	com/crashlytics/android/d:a	(Ljava/lang/String;)Lcom/crashlytics/android/d;
    //   140: astore 14
    //   142: aload 15
    //   144: invokevirtual 895	com/crashlytics/android/internal/ao:f	()Ljava/util/Map;
    //   147: astore 15
    //   149: invokestatic 897	com/crashlytics/android/internal/ab:f	()I
    //   152: istore 4
    //   154: aload 10
    //   156: bipush 9
    //   158: iconst_2
    //   159: invokevirtual 496	com/crashlytics/android/h:g	(II)V
    //   162: aload 10
    //   164: aload_0
    //   165: iload_2
    //   166: aload 14
    //   168: aload 13
    //   170: iload_3
    //   171: lload 5
    //   173: lload 7
    //   175: iload 9
    //   177: aload 15
    //   179: iload 4
    //   181: aload_1
    //   182: aload 12
    //   184: invokespecial 899	com/crashlytics/android/v:a	(ILcom/crashlytics/android/d;Lcom/crashlytics/android/d;IJJZLjava/util/Map;ILcom/crashlytics/android/d;Lcom/crashlytics/android/d;)I
    //   187: invokevirtual 498	com/crashlytics/android/h:b	(I)V
    //   190: aload 10
    //   192: iconst_1
    //   193: aload 14
    //   195: invokevirtual 504	com/crashlytics/android/h:a	(ILcom/crashlytics/android/d;)V
    //   198: aload 10
    //   200: iconst_3
    //   201: iload_2
    //   202: invokevirtual 901	com/crashlytics/android/h:b	(II)V
    //   205: aload 10
    //   207: iconst_4
    //   208: aload 13
    //   210: invokevirtual 504	com/crashlytics/android/h:a	(ILcom/crashlytics/android/d;)V
    //   213: aload 10
    //   215: iconst_5
    //   216: iload_3
    //   217: invokevirtual 506	com/crashlytics/android/h:a	(II)V
    //   220: aload 10
    //   222: bipush 6
    //   224: lload 5
    //   226: invokevirtual 501	com/crashlytics/android/h:a	(IJ)V
    //   229: aload 10
    //   231: bipush 7
    //   233: lload 7
    //   235: invokevirtual 501	com/crashlytics/android/h:a	(IJ)V
    //   238: aload 10
    //   240: bipush 10
    //   242: iload 9
    //   244: invokevirtual 802	com/crashlytics/android/h:a	(IZ)V
    //   247: aload 15
    //   249: invokeinterface 296 1 0
    //   254: invokeinterface 302 1 0
    //   259: astore 13
    //   261: aload 13
    //   263: invokeinterface 307 1 0
    //   268: ifeq +137 -> 405
    //   271: aload 13
    //   273: invokeinterface 311 1 0
    //   278: checkcast 313	java/util/Map$Entry
    //   281: astore 14
    //   283: aload 10
    //   285: bipush 11
    //   287: iconst_2
    //   288: invokevirtual 496	com/crashlytics/android/h:g	(II)V
    //   291: aload 10
    //   293: aload 14
    //   295: invokeinterface 316 1 0
    //   300: checkcast 318	com/crashlytics/android/internal/ap
    //   303: aload 14
    //   305: invokeinterface 321 1 0
    //   310: checkcast 180	java/lang/String
    //   313: invokestatic 324	com/crashlytics/android/v:a	(Lcom/crashlytics/android/internal/ap;Ljava/lang/String;)I
    //   316: invokevirtual 498	com/crashlytics/android/h:b	(I)V
    //   319: aload 10
    //   321: iconst_1
    //   322: aload 14
    //   324: invokeinterface 316 1 0
    //   329: checkcast 318	com/crashlytics/android/internal/ap
    //   332: getfield 333	com/crashlytics/android/internal/ap:f	I
    //   335: invokevirtual 901	com/crashlytics/android/h:b	(II)V
    //   338: aload 10
    //   340: iconst_2
    //   341: aload 14
    //   343: invokeinterface 321 1 0
    //   348: checkcast 180	java/lang/String
    //   351: invokestatic 104	com/crashlytics/android/d:a	(Ljava/lang/String;)Lcom/crashlytics/android/d;
    //   354: invokevirtual 504	com/crashlytics/android/h:a	(ILcom/crashlytics/android/d;)V
    //   357: goto -96 -> 261
    //   360: astore 12
    //   362: aload 11
    //   364: astore_1
    //   365: aload 12
    //   367: astore 11
    //   369: aload_0
    //   370: aload 11
    //   372: aload_1
    //   373: invokespecial 687	com/crashlytics/android/v:a	(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    //   376: aload 11
    //   378: athrow
    //   379: astore 12
    //   381: aload_1
    //   382: astore 11
    //   384: aload 12
    //   386: astore_1
    //   387: aload 10
    //   389: ldc_w 903
    //   392: invokestatic 665	com/crashlytics/android/internal/ab:a	(Ljava/io/Flushable;Ljava/lang/String;)V
    //   395: aload 11
    //   397: ldc_w 905
    //   400: invokestatic 528	com/crashlytics/android/internal/ab:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   403: aload_1
    //   404: athrow
    //   405: aload 10
    //   407: bipush 12
    //   409: iload 4
    //   411: invokevirtual 506	com/crashlytics/android/h:a	(II)V
    //   414: aload_1
    //   415: ifnull +11 -> 426
    //   418: aload 10
    //   420: bipush 13
    //   422: aload_1
    //   423: invokevirtual 504	com/crashlytics/android/h:a	(ILcom/crashlytics/android/d;)V
    //   426: aload 12
    //   428: ifnull +12 -> 440
    //   431: aload 10
    //   433: bipush 14
    //   435: aload 12
    //   437: invokevirtual 504	com/crashlytics/android/h:a	(ILcom/crashlytics/android/d;)V
    //   440: aload 10
    //   442: ldc_w 903
    //   445: invokestatic 665	com/crashlytics/android/internal/ab:a	(Ljava/io/Flushable;Ljava/lang/String;)V
    //   448: aload 11
    //   450: ldc_w 905
    //   453: invokestatic 528	com/crashlytics/android/internal/ab:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   456: return
    //   457: astore_1
    //   458: aconst_null
    //   459: astore 10
    //   461: aconst_null
    //   462: astore 11
    //   464: goto -77 -> 387
    //   467: astore_1
    //   468: aconst_null
    //   469: astore 10
    //   471: goto -84 -> 387
    //   474: astore_1
    //   475: goto -88 -> 387
    //   478: astore 11
    //   480: aload 12
    //   482: astore_1
    //   483: goto -114 -> 369
    //   486: astore 12
    //   488: aload 11
    //   490: astore_1
    //   491: aload 12
    //   493: astore 11
    //   495: goto -126 -> 369
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	498	0	this	v
    //   0	498	1	paramString	String
    //   68	134	2	i1	int
    //   98	119	3	i2	int
    //   152	258	4	i3	int
    //   102	123	5	l1	long
    //   117	117	7	l2	long
    //   122	121	9	bool	boolean
    //   4	466	10	str	String
    //   39	424	11	localObject1	Object
    //   478	11	11	localException1	Exception
    //   493	1	11	localException2	Exception
    //   1	182	12	locald1	d
    //   360	6	12	localException3	Exception
    //   379	102	12	locald2	d
    //   486	6	12	localException4	Exception
    //   75	197	13	localObject2	Object
    //   63	279	14	localObject3	Object
    //   130	118	15	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   50	261	360	java/lang/Exception
    //   261	357	360	java/lang/Exception
    //   405	414	360	java/lang/Exception
    //   418	426	360	java/lang/Exception
    //   431	440	360	java/lang/Exception
    //   369	379	379	finally
    //   6	41	457	finally
    //   41	47	467	finally
    //   50	261	474	finally
    //   261	357	474	finally
    //   405	414	474	finally
    //   418	426	474	finally
    //   431	440	474	finally
    //   6	41	478	java/lang/Exception
    //   41	47	486	java/lang/Exception
  }
  
  private boolean k()
  {
    if (!ab.a(Crashlytics.getInstance().getContext(), "com.crashlytics.CollectCustomLogs", true))
    {
      com.crashlytics.android.internal.v.a().b().a("Crashlytics", "Preferences requested not to collect custom logs. Aborting log file creation.");
      return false;
    }
    ab.a(u, "Could not close log file: " + u);
    try
    {
      String str = "crashlytics-userlog-" + UUID.randomUUID().toString() + ".temp";
      File localFile = new File(com.crashlytics.android.internal.v.a().h(), str);
      com.crashlytics.android.internal.v.a().b().a("Crashlytics", "Could not create log file: " + localFile, localException1);
    }
    catch (Exception localException1)
    {
      try
      {
        u = new aq(localFile);
        localFile.delete();
        return true;
      }
      catch (Exception localException2)
      {
        for (;;) {}
      }
      localException1 = localException1;
      localFile = null;
    }
    return false;
  }
  
  /* Error */
  private void l()
    throws Exception
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 9
    //   3: aconst_null
    //   4: astore 10
    //   6: aconst_null
    //   7: astore 12
    //   9: aconst_null
    //   10: astore 14
    //   12: aconst_null
    //   13: astore 11
    //   15: aconst_null
    //   16: astore 13
    //   18: aconst_null
    //   19: astore 7
    //   21: new 723	java/util/Date
    //   24: dup
    //   25: invokespecial 932	java/util/Date:<init>	()V
    //   28: astore 16
    //   30: new 934	com/crashlytics/android/e
    //   33: dup
    //   34: invokestatic 174	com/crashlytics/android/Crashlytics:getInstance	()Lcom/crashlytics/android/Crashlytics;
    //   37: invokevirtual 889	com/crashlytics/android/Crashlytics:b	()Lcom/crashlytics/android/internal/ao;
    //   40: invokespecial 937	com/crashlytics/android/e:<init>	(Lcom/crashlytics/android/internal/ao;)V
    //   43: invokevirtual 938	com/crashlytics/android/e:toString	()Ljava/lang/String;
    //   46: astore 15
    //   48: invokestatic 146	com/crashlytics/android/internal/v:a	()Lcom/crashlytics/android/internal/v;
    //   51: invokevirtual 191	com/crashlytics/android/internal/v:b	()Lcom/crashlytics/android/internal/q;
    //   54: ldc -63
    //   56: new 350	java/lang/StringBuilder
    //   59: dup
    //   60: ldc_w 940
    //   63: invokespecial 534	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   66: aload 15
    //   68: invokevirtual 358	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   71: invokevirtual 366	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   74: invokeinterface 200 3 0
    //   79: new 488	com/crashlytics/android/f
    //   82: dup
    //   83: invokestatic 146	com/crashlytics/android/internal/v:a	()Lcom/crashlytics/android/internal/v;
    //   86: invokevirtual 149	com/crashlytics/android/internal/v:h	()Ljava/io/File;
    //   89: new 350	java/lang/StringBuilder
    //   92: dup
    //   93: invokespecial 351	java/lang/StringBuilder:<init>	()V
    //   96: aload 15
    //   98: invokevirtual 358	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   101: ldc_w 942
    //   104: invokevirtual 358	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   107: invokevirtual 366	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   110: invokespecial 652	com/crashlytics/android/f:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   113: astore 8
    //   115: aload 8
    //   117: invokestatic 655	com/crashlytics/android/h:a	(Ljava/io/OutputStream;)Lcom/crashlytics/android/h;
    //   120: astore 7
    //   122: aload 7
    //   124: iconst_1
    //   125: aload_0
    //   126: getfield 186	com/crashlytics/android/v:n	Ljava/lang/String;
    //   129: invokestatic 104	com/crashlytics/android/d:a	(Ljava/lang/String;)Lcom/crashlytics/android/d;
    //   132: invokevirtual 504	com/crashlytics/android/h:a	(ILcom/crashlytics/android/d;)V
    //   135: aload 7
    //   137: iconst_2
    //   138: aload 15
    //   140: invokestatic 104	com/crashlytics/android/d:a	(Ljava/lang/String;)Lcom/crashlytics/android/d;
    //   143: invokevirtual 504	com/crashlytics/android/h:a	(ILcom/crashlytics/android/d;)V
    //   146: aload 7
    //   148: iconst_3
    //   149: aload 16
    //   151: invokevirtual 726	java/util/Date:getTime	()J
    //   154: ldc2_w 727
    //   157: ldiv
    //   158: invokevirtual 501	com/crashlytics/android/h:a	(IJ)V
    //   161: aload 7
    //   163: ldc_w 662
    //   166: invokestatic 665	com/crashlytics/android/internal/ab:a	(Ljava/io/Flushable;Ljava/lang/String;)V
    //   169: aload 8
    //   171: ldc_w 944
    //   174: invokestatic 528	com/crashlytics/android/internal/ab:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   177: new 488	com/crashlytics/android/f
    //   180: dup
    //   181: invokestatic 146	com/crashlytics/android/internal/v:a	()Lcom/crashlytics/android/internal/v;
    //   184: invokevirtual 149	com/crashlytics/android/internal/v:h	()Ljava/io/File;
    //   187: new 350	java/lang/StringBuilder
    //   190: dup
    //   191: invokespecial 351	java/lang/StringBuilder:<init>	()V
    //   194: aload 15
    //   196: invokevirtual 358	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   199: ldc_w 539
    //   202: invokevirtual 358	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   205: invokevirtual 366	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   208: invokespecial 652	com/crashlytics/android/f:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   211: astore 9
    //   213: aload 9
    //   215: invokestatic 655	com/crashlytics/android/h:a	(Ljava/io/OutputStream;)Lcom/crashlytics/android/h;
    //   218: astore 8
    //   220: invokestatic 216	com/crashlytics/android/Crashlytics:d	()Ljava/lang/String;
    //   223: invokestatic 104	com/crashlytics/android/d:a	(Ljava/lang/String;)Lcom/crashlytics/android/d;
    //   226: astore 7
    //   228: invokestatic 946	com/crashlytics/android/Crashlytics:g	()Ljava/lang/String;
    //   231: invokestatic 104	com/crashlytics/android/d:a	(Ljava/lang/String;)Lcom/crashlytics/android/d;
    //   234: astore 10
    //   236: invokestatic 948	com/crashlytics/android/Crashlytics:f	()Ljava/lang/String;
    //   239: invokestatic 104	com/crashlytics/android/d:a	(Ljava/lang/String;)Lcom/crashlytics/android/d;
    //   242: astore 16
    //   244: invokestatic 950	com/crashlytics/android/Crashlytics:h	()Ljava/lang/String;
    //   247: invokestatic 104	com/crashlytics/android/d:a	(Ljava/lang/String;)Lcom/crashlytics/android/d;
    //   250: pop
    //   251: invokestatic 174	com/crashlytics/android/Crashlytics:getInstance	()Lcom/crashlytics/android/Crashlytics;
    //   254: invokevirtual 245	com/crashlytics/android/Crashlytics:getContext	()Landroid/content/Context;
    //   257: invokevirtual 953	android/content/Context:getPackageCodePath	()Ljava/lang/String;
    //   260: invokestatic 104	com/crashlytics/android/d:a	(Ljava/lang/String;)Lcom/crashlytics/android/d;
    //   263: pop
    //   264: invokestatic 174	com/crashlytics/android/Crashlytics:getInstance	()Lcom/crashlytics/android/Crashlytics;
    //   267: invokevirtual 889	com/crashlytics/android/Crashlytics:b	()Lcom/crashlytics/android/internal/ao;
    //   270: invokevirtual 955	com/crashlytics/android/internal/ao:b	()Ljava/lang/String;
    //   273: invokestatic 104	com/crashlytics/android/d:a	(Ljava/lang/String;)Lcom/crashlytics/android/d;
    //   276: astore 17
    //   278: invokestatic 956	com/crashlytics/android/Crashlytics:e	()Ljava/lang/String;
    //   281: invokestatic 961	com/crashlytics/android/internal/ai:a	(Ljava/lang/String;)Lcom/crashlytics/android/internal/ai;
    //   284: invokevirtual 962	com/crashlytics/android/internal/ai:a	()I
    //   287: istore_1
    //   288: aload 8
    //   290: bipush 7
    //   292: iconst_2
    //   293: invokevirtual 496	com/crashlytics/android/h:g	(II)V
    //   296: iconst_1
    //   297: aload 7
    //   299: invokestatic 288	com/crashlytics/android/h:b	(ILcom/crashlytics/android/d;)I
    //   302: istore_2
    //   303: iconst_2
    //   304: aload 10
    //   306: invokestatic 288	com/crashlytics/android/h:b	(ILcom/crashlytics/android/d;)I
    //   309: istore_3
    //   310: iconst_3
    //   311: aload 16
    //   313: invokestatic 288	com/crashlytics/android/h:b	(ILcom/crashlytics/android/d;)I
    //   316: istore 4
    //   318: invokestatic 964	com/crashlytics/android/v:q	()I
    //   321: istore 5
    //   323: aload 8
    //   325: iload_2
    //   326: iconst_0
    //   327: iadd
    //   328: iload_3
    //   329: iadd
    //   330: iload 4
    //   332: iadd
    //   333: iload 5
    //   335: iconst_5
    //   336: invokestatic 327	com/crashlytics/android/h:a	(I)I
    //   339: iload 5
    //   341: invokestatic 329	com/crashlytics/android/h:c	(I)I
    //   344: iadd
    //   345: iadd
    //   346: iadd
    //   347: bipush 6
    //   349: aload 17
    //   351: invokestatic 288	com/crashlytics/android/h:b	(ILcom/crashlytics/android/d;)I
    //   354: iadd
    //   355: bipush 10
    //   357: iload_1
    //   358: invokestatic 290	com/crashlytics/android/h:e	(II)I
    //   361: iadd
    //   362: invokevirtual 498	com/crashlytics/android/h:b	(I)V
    //   365: aload 8
    //   367: iconst_1
    //   368: aload 7
    //   370: invokevirtual 504	com/crashlytics/android/h:a	(ILcom/crashlytics/android/d;)V
    //   373: aload 8
    //   375: iconst_2
    //   376: aload 10
    //   378: invokevirtual 504	com/crashlytics/android/h:a	(ILcom/crashlytics/android/d;)V
    //   381: aload 8
    //   383: iconst_3
    //   384: aload 16
    //   386: invokevirtual 504	com/crashlytics/android/h:a	(ILcom/crashlytics/android/d;)V
    //   389: aload 8
    //   391: iconst_5
    //   392: iconst_2
    //   393: invokevirtual 496	com/crashlytics/android/h:g	(II)V
    //   396: aload 8
    //   398: invokestatic 964	com/crashlytics/android/v:q	()I
    //   401: invokevirtual 498	com/crashlytics/android/h:b	(I)V
    //   404: aload 8
    //   406: iconst_1
    //   407: invokestatic 174	com/crashlytics/android/Crashlytics:getInstance	()Lcom/crashlytics/android/Crashlytics;
    //   410: invokevirtual 245	com/crashlytics/android/Crashlytics:getContext	()Landroid/content/Context;
    //   413: iconst_0
    //   414: invokestatic 969	com/crashlytics/android/internal/r:a	(Landroid/content/Context;Z)Ljava/lang/String;
    //   417: invokevirtual 972	com/crashlytics/android/h:a	(ILjava/lang/String;)V
    //   420: aload 8
    //   422: bipush 6
    //   424: aload 17
    //   426: invokevirtual 504	com/crashlytics/android/h:a	(ILcom/crashlytics/android/d;)V
    //   429: aload 8
    //   431: bipush 10
    //   433: iload_1
    //   434: invokevirtual 901	com/crashlytics/android/h:b	(II)V
    //   437: aload 8
    //   439: ldc_w 974
    //   442: invokestatic 665	com/crashlytics/android/internal/ab:a	(Ljava/io/Flushable;Ljava/lang/String;)V
    //   445: aload 9
    //   447: ldc_w 976
    //   450: invokestatic 528	com/crashlytics/android/internal/ab:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   453: new 488	com/crashlytics/android/f
    //   456: dup
    //   457: invokestatic 146	com/crashlytics/android/internal/v:a	()Lcom/crashlytics/android/internal/v;
    //   460: invokevirtual 149	com/crashlytics/android/internal/v:h	()Ljava/io/File;
    //   463: new 350	java/lang/StringBuilder
    //   466: dup
    //   467: invokespecial 351	java/lang/StringBuilder:<init>	()V
    //   470: aload 15
    //   472: invokevirtual 358	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   475: ldc_w 541
    //   478: invokevirtual 358	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   481: invokevirtual 366	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   484: invokespecial 652	com/crashlytics/android/f:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   487: astore 10
    //   489: aload 10
    //   491: astore 8
    //   493: aload 14
    //   495: astore 7
    //   497: aload 13
    //   499: astore 9
    //   501: aload 10
    //   503: invokestatic 655	com/crashlytics/android/h:a	(Ljava/io/OutputStream;)Lcom/crashlytics/android/h;
    //   506: astore 11
    //   508: aload 10
    //   510: astore 8
    //   512: aload 11
    //   514: astore 7
    //   516: aload 11
    //   518: astore 9
    //   520: getstatic 981	android/os/Build$VERSION:RELEASE	Ljava/lang/String;
    //   523: invokestatic 104	com/crashlytics/android/d:a	(Ljava/lang/String;)Lcom/crashlytics/android/d;
    //   526: astore 12
    //   528: aload 10
    //   530: astore 8
    //   532: aload 11
    //   534: astore 7
    //   536: aload 11
    //   538: astore 9
    //   540: getstatic 984	android/os/Build$VERSION:CODENAME	Ljava/lang/String;
    //   543: invokestatic 104	com/crashlytics/android/d:a	(Ljava/lang/String;)Lcom/crashlytics/android/d;
    //   546: astore 13
    //   548: aload 10
    //   550: astore 8
    //   552: aload 11
    //   554: astore 7
    //   556: aload 11
    //   558: astore 9
    //   560: invokestatic 986	com/crashlytics/android/internal/ab:e	()Z
    //   563: istore 6
    //   565: aload 10
    //   567: astore 8
    //   569: aload 11
    //   571: astore 7
    //   573: aload 11
    //   575: astore 9
    //   577: aload 11
    //   579: bipush 8
    //   581: iconst_2
    //   582: invokevirtual 496	com/crashlytics/android/h:g	(II)V
    //   585: aload 10
    //   587: astore 8
    //   589: aload 11
    //   591: astore 7
    //   593: aload 11
    //   595: astore 9
    //   597: aload 11
    //   599: iconst_1
    //   600: iconst_3
    //   601: invokestatic 290	com/crashlytics/android/h:e	(II)I
    //   604: iconst_0
    //   605: iadd
    //   606: iconst_2
    //   607: aload 12
    //   609: invokestatic 288	com/crashlytics/android/h:b	(ILcom/crashlytics/android/d;)I
    //   612: iadd
    //   613: iconst_3
    //   614: aload 13
    //   616: invokestatic 288	com/crashlytics/android/h:b	(ILcom/crashlytics/android/d;)I
    //   619: iadd
    //   620: iconst_4
    //   621: iload 6
    //   623: invokestatic 279	com/crashlytics/android/h:b	(IZ)I
    //   626: iadd
    //   627: invokevirtual 498	com/crashlytics/android/h:b	(I)V
    //   630: aload 10
    //   632: astore 8
    //   634: aload 11
    //   636: astore 7
    //   638: aload 11
    //   640: astore 9
    //   642: aload 11
    //   644: iconst_1
    //   645: iconst_3
    //   646: invokevirtual 901	com/crashlytics/android/h:b	(II)V
    //   649: aload 10
    //   651: astore 8
    //   653: aload 11
    //   655: astore 7
    //   657: aload 11
    //   659: astore 9
    //   661: aload 11
    //   663: iconst_2
    //   664: aload 12
    //   666: invokevirtual 504	com/crashlytics/android/h:a	(ILcom/crashlytics/android/d;)V
    //   669: aload 10
    //   671: astore 8
    //   673: aload 11
    //   675: astore 7
    //   677: aload 11
    //   679: astore 9
    //   681: aload 11
    //   683: iconst_3
    //   684: aload 13
    //   686: invokevirtual 504	com/crashlytics/android/h:a	(ILcom/crashlytics/android/d;)V
    //   689: aload 10
    //   691: astore 8
    //   693: aload 11
    //   695: astore 7
    //   697: aload 11
    //   699: astore 9
    //   701: aload 11
    //   703: iconst_4
    //   704: iload 6
    //   706: invokevirtual 802	com/crashlytics/android/h:a	(IZ)V
    //   709: aload 11
    //   711: ldc_w 988
    //   714: invokestatic 665	com/crashlytics/android/internal/ab:a	(Ljava/io/Flushable;Ljava/lang/String;)V
    //   717: aload 10
    //   719: ldc_w 990
    //   722: invokestatic 528	com/crashlytics/android/internal/ab:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   725: aload_0
    //   726: aload 15
    //   728: invokespecial 992	com/crashlytics/android/v:c	(Ljava/lang/String;)V
    //   731: return
    //   732: astore 9
    //   734: aconst_null
    //   735: astore 10
    //   737: aload 7
    //   739: astore 8
    //   741: aload 10
    //   743: astore 7
    //   745: aload_0
    //   746: aload 9
    //   748: aload 8
    //   750: invokespecial 687	com/crashlytics/android/v:a	(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    //   753: aload 9
    //   755: athrow
    //   756: astore 10
    //   758: aload 7
    //   760: astore 9
    //   762: aload 10
    //   764: astore 7
    //   766: aload 9
    //   768: ldc_w 662
    //   771: invokestatic 665	com/crashlytics/android/internal/ab:a	(Ljava/io/Flushable;Ljava/lang/String;)V
    //   774: aload 8
    //   776: ldc_w 944
    //   779: invokestatic 528	com/crashlytics/android/internal/ab:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   782: aload 7
    //   784: athrow
    //   785: astore 8
    //   787: aconst_null
    //   788: astore 7
    //   790: aload 10
    //   792: astore 9
    //   794: aload_0
    //   795: aload 8
    //   797: aload 7
    //   799: invokespecial 687	com/crashlytics/android/v:a	(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    //   802: aload 8
    //   804: athrow
    //   805: astore 10
    //   807: aload 9
    //   809: astore 8
    //   811: aload 7
    //   813: astore 9
    //   815: aload 10
    //   817: astore 7
    //   819: aload 8
    //   821: ldc_w 974
    //   824: invokestatic 665	com/crashlytics/android/internal/ab:a	(Ljava/io/Flushable;Ljava/lang/String;)V
    //   827: aload 9
    //   829: ldc_w 976
    //   832: invokestatic 528	com/crashlytics/android/internal/ab:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   835: aload 7
    //   837: athrow
    //   838: astore 11
    //   840: aconst_null
    //   841: astore 10
    //   843: aload 12
    //   845: astore 9
    //   847: aload 10
    //   849: astore 8
    //   851: aload 9
    //   853: astore 7
    //   855: aload_0
    //   856: aload 11
    //   858: aload 10
    //   860: invokespecial 687	com/crashlytics/android/v:a	(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    //   863: aload 10
    //   865: astore 8
    //   867: aload 9
    //   869: astore 7
    //   871: aload 11
    //   873: athrow
    //   874: astore 10
    //   876: aload 7
    //   878: astore 9
    //   880: aload 10
    //   882: astore 7
    //   884: aload 9
    //   886: ldc_w 988
    //   889: invokestatic 665	com/crashlytics/android/internal/ab:a	(Ljava/io/Flushable;Ljava/lang/String;)V
    //   892: aload 8
    //   894: ldc_w 990
    //   897: invokestatic 528	com/crashlytics/android/internal/ab:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   900: aload 7
    //   902: athrow
    //   903: astore 7
    //   905: aconst_null
    //   906: astore 8
    //   908: aload 11
    //   910: astore 9
    //   912: goto -28 -> 884
    //   915: astore 11
    //   917: goto -70 -> 847
    //   920: astore 7
    //   922: aconst_null
    //   923: astore 8
    //   925: aconst_null
    //   926: astore 9
    //   928: goto -109 -> 819
    //   931: astore 7
    //   933: aconst_null
    //   934: astore 8
    //   936: goto -117 -> 819
    //   939: astore 7
    //   941: goto -122 -> 819
    //   944: astore 8
    //   946: aload 9
    //   948: astore 7
    //   950: aload 10
    //   952: astore 9
    //   954: goto -160 -> 794
    //   957: astore 11
    //   959: aload 8
    //   961: astore 10
    //   963: aload 9
    //   965: astore 7
    //   967: aload 11
    //   969: astore 8
    //   971: aload 10
    //   973: astore 9
    //   975: goto -181 -> 794
    //   978: astore 7
    //   980: aconst_null
    //   981: astore 8
    //   983: goto -217 -> 766
    //   986: astore 7
    //   988: goto -222 -> 766
    //   991: astore 10
    //   993: aload 7
    //   995: astore 9
    //   997: aload 10
    //   999: astore 7
    //   1001: goto -235 -> 766
    //   1004: astore 9
    //   1006: aconst_null
    //   1007: astore 7
    //   1009: goto -264 -> 745
    //   1012: astore 9
    //   1014: goto -269 -> 745
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1017	0	this	v
    //   287	147	1	i1	int
    //   302	26	2	i2	int
    //   309	21	3	i3	int
    //   316	17	4	i4	int
    //   321	25	5	i5	int
    //   563	142	6	bool	boolean
    //   19	882	7	localObject1	Object
    //   903	1	7	localObject2	Object
    //   920	1	7	localObject3	Object
    //   931	1	7	localObject4	Object
    //   939	1	7	localObject5	Object
    //   948	18	7	localObject6	Object
    //   978	1	7	localObject7	Object
    //   986	8	7	localObject8	Object
    //   999	9	7	localObject9	Object
    //   113	662	8	localObject10	Object
    //   785	18	8	localException1	Exception
    //   809	126	8	localObject11	Object
    //   944	16	8	localException2	Exception
    //   969	13	8	localException3	Exception
    //   1	699	9	localObject12	Object
    //   732	22	9	localException4	Exception
    //   760	236	9	localObject13	Object
    //   1004	1	9	localException5	Exception
    //   1012	1	9	localException6	Exception
    //   4	738	10	localObject14	Object
    //   756	35	10	localObject15	Object
    //   805	11	10	localObject16	Object
    //   841	23	10	localOutputStream	java.io.OutputStream
    //   874	77	10	localObject17	Object
    //   961	11	10	localObject18	Object
    //   991	7	10	localObject19	Object
    //   13	697	11	localh	h
    //   838	71	11	localException7	Exception
    //   915	1	11	localException8	Exception
    //   957	11	11	localException9	Exception
    //   7	837	12	locald1	d
    //   16	669	13	locald2	d
    //   10	484	14	localObject20	Object
    //   46	681	15	str	String
    //   28	357	16	localObject21	Object
    //   276	149	17	locald3	d
    // Exception table:
    //   from	to	target	type
    //   79	115	732	java/lang/Exception
    //   745	756	756	finally
    //   177	213	785	java/lang/Exception
    //   794	805	805	finally
    //   453	489	838	java/lang/Exception
    //   501	508	874	finally
    //   520	528	874	finally
    //   540	548	874	finally
    //   560	565	874	finally
    //   577	585	874	finally
    //   597	630	874	finally
    //   642	649	874	finally
    //   661	669	874	finally
    //   681	689	874	finally
    //   701	709	874	finally
    //   855	863	874	finally
    //   871	874	874	finally
    //   453	489	903	finally
    //   501	508	915	java/lang/Exception
    //   520	528	915	java/lang/Exception
    //   540	548	915	java/lang/Exception
    //   560	565	915	java/lang/Exception
    //   577	585	915	java/lang/Exception
    //   597	630	915	java/lang/Exception
    //   642	649	915	java/lang/Exception
    //   661	669	915	java/lang/Exception
    //   681	689	915	java/lang/Exception
    //   701	709	915	java/lang/Exception
    //   177	213	920	finally
    //   213	220	931	finally
    //   220	437	939	finally
    //   213	220	944	java/lang/Exception
    //   220	437	957	java/lang/Exception
    //   79	115	978	finally
    //   115	122	986	finally
    //   122	161	991	finally
    //   115	122	1004	java/lang/Exception
    //   122	161	1012	java/lang/Exception
  }
  
  /* Error */
  private void m()
    throws Exception
  {
    // Byte code:
    //   0: new 994	java/util/HashSet
    //   3: dup
    //   4: invokespecial 995	java/util/HashSet:<init>	()V
    //   7: astore 6
    //   9: aload_0
    //   10: invokespecial 998	com/crashlytics/android/v:o	()[Ljava/io/File;
    //   13: astore 7
    //   15: aload 7
    //   17: getstatic 67	com/crashlytics/android/v:b	Ljava/util/Comparator;
    //   20: invokestatic 595	java/util/Arrays:sort	([Ljava/lang/Object;Ljava/util/Comparator;)V
    //   23: bipush 8
    //   25: aload 7
    //   27: arraylength
    //   28: invokestatic 1001	java/lang/Math:min	(II)I
    //   31: istore_2
    //   32: iconst_0
    //   33: istore_1
    //   34: iload_1
    //   35: iload_2
    //   36: if_icmpge +25 -> 61
    //   39: aload 6
    //   41: aload 7
    //   43: iload_1
    //   44: aaload
    //   45: invokestatic 1003	com/crashlytics/android/v:a	(Ljava/io/File;)Ljava/lang/String;
    //   48: invokeinterface 1004 2 0
    //   53: pop
    //   54: iload_1
    //   55: iconst_1
    //   56: iadd
    //   57: istore_1
    //   58: goto -24 -> 34
    //   61: aload_0
    //   62: new 1006	com/crashlytics/android/Q
    //   65: dup
    //   66: iconst_0
    //   67: invokespecial 1009	com/crashlytics/android/Q:<init>	(B)V
    //   70: invokespecial 549	com/crashlytics/android/v:a	(Ljava/io/FilenameFilter;)[Ljava/io/File;
    //   73: astore 7
    //   75: aload 7
    //   77: arraylength
    //   78: istore_2
    //   79: iconst_0
    //   80: istore_1
    //   81: iload_1
    //   82: iload_2
    //   83: if_icmpge +92 -> 175
    //   86: aload 7
    //   88: iload_1
    //   89: aaload
    //   90: astore 8
    //   92: aload 8
    //   94: invokevirtual 471	java/io/File:getName	()Ljava/lang/String;
    //   97: astore 9
    //   99: getstatic 85	com/crashlytics/android/v:d	Ljava/util/regex/Pattern;
    //   102: aload 9
    //   104: invokevirtual 1013	java/util/regex/Pattern:matcher	(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    //   107: astore 10
    //   109: aload 10
    //   111: invokevirtual 1018	java/util/regex/Matcher:matches	()Z
    //   114: pop
    //   115: aload 6
    //   117: aload 10
    //   119: iconst_1
    //   120: invokevirtual 1021	java/util/regex/Matcher:group	(I)Ljava/lang/String;
    //   123: invokeinterface 1024 2 0
    //   128: ifne +40 -> 168
    //   131: invokestatic 146	com/crashlytics/android/internal/v:a	()Lcom/crashlytics/android/internal/v;
    //   134: invokevirtual 191	com/crashlytics/android/internal/v:b	()Lcom/crashlytics/android/internal/q;
    //   137: ldc -63
    //   139: new 350	java/lang/StringBuilder
    //   142: dup
    //   143: ldc_w 1026
    //   146: invokespecial 534	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   149: aload 9
    //   151: invokevirtual 358	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   154: invokevirtual 366	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   157: invokeinterface 200 3 0
    //   162: aload 8
    //   164: invokevirtual 209	java/io/File:delete	()Z
    //   167: pop
    //   168: iload_1
    //   169: iconst_1
    //   170: iadd
    //   171: istore_1
    //   172: goto -91 -> 81
    //   175: aload_0
    //   176: invokespecial 647	com/crashlytics/android/v:n	()Ljava/lang/String;
    //   179: astore 9
    //   181: aload 9
    //   183: ifnull +1330 -> 1513
    //   186: aconst_null
    //   187: astore 6
    //   189: aconst_null
    //   190: astore 7
    //   192: aconst_null
    //   193: astore 10
    //   195: aconst_null
    //   196: astore 8
    //   198: new 488	com/crashlytics/android/f
    //   201: dup
    //   202: aload_0
    //   203: getfield 151	com/crashlytics/android/v:k	Ljava/io/File;
    //   206: new 350	java/lang/StringBuilder
    //   209: dup
    //   210: invokespecial 351	java/lang/StringBuilder:<init>	()V
    //   213: aload 9
    //   215: invokevirtual 358	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   218: ldc_w 537
    //   221: invokevirtual 358	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   224: invokevirtual 366	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   227: invokespecial 652	com/crashlytics/android/f:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   230: astore 9
    //   232: aload 9
    //   234: astore 7
    //   236: aload 10
    //   238: astore 8
    //   240: aload 9
    //   242: invokestatic 655	com/crashlytics/android/h:a	(Ljava/io/OutputStream;)Lcom/crashlytics/android/h;
    //   245: astore 10
    //   247: aload 10
    //   249: astore 6
    //   251: aload 9
    //   253: astore 7
    //   255: aload 10
    //   257: astore 8
    //   259: invokestatic 174	com/crashlytics/android/Crashlytics:getInstance	()Lcom/crashlytics/android/Crashlytics;
    //   262: invokevirtual 1028	com/crashlytics/android/Crashlytics:m	()Ljava/lang/String;
    //   265: astore 12
    //   267: aload 10
    //   269: astore 6
    //   271: aload 9
    //   273: astore 7
    //   275: aload 10
    //   277: astore 8
    //   279: invokestatic 174	com/crashlytics/android/Crashlytics:getInstance	()Lcom/crashlytics/android/Crashlytics;
    //   282: invokevirtual 1030	com/crashlytics/android/Crashlytics:o	()Ljava/lang/String;
    //   285: astore 15
    //   287: aload 10
    //   289: astore 6
    //   291: aload 9
    //   293: astore 7
    //   295: aload 10
    //   297: astore 8
    //   299: invokestatic 174	com/crashlytics/android/Crashlytics:getInstance	()Lcom/crashlytics/android/Crashlytics;
    //   302: invokevirtual 1031	com/crashlytics/android/Crashlytics:n	()Ljava/lang/String;
    //   305: astore 14
    //   307: aload 12
    //   309: ifnonnull +695 -> 1004
    //   312: aload 15
    //   314: ifnonnull +690 -> 1004
    //   317: aload 14
    //   319: ifnonnull +685 -> 1004
    //   322: aload 10
    //   324: ldc_w 1033
    //   327: invokestatic 665	com/crashlytics/android/internal/ab:a	(Ljava/io/Flushable;Ljava/lang/String;)V
    //   330: aload 9
    //   332: ldc_w 1035
    //   335: invokestatic 528	com/crashlytics/android/internal/ab:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   338: invokestatic 174	com/crashlytics/android/Crashlytics:getInstance	()Lcom/crashlytics/android/Crashlytics;
    //   341: invokevirtual 1038	com/crashlytics/android/Crashlytics:r	()Lcom/crashlytics/android/internal/aR;
    //   344: astore 6
    //   346: aload 6
    //   348: ifnull +1148 -> 1496
    //   351: aload 6
    //   353: getfield 1042	com/crashlytics/android/internal/aR:a	I
    //   356: istore_2
    //   357: invokestatic 146	com/crashlytics/android/internal/v:a	()Lcom/crashlytics/android/internal/v;
    //   360: invokevirtual 191	com/crashlytics/android/internal/v:b	()Lcom/crashlytics/android/internal/q;
    //   363: ldc -63
    //   365: ldc_w 1044
    //   368: invokeinterface 200 3 0
    //   373: aload_0
    //   374: invokespecial 998	com/crashlytics/android/v:o	()[Ljava/io/File;
    //   377: astore 11
    //   379: aload 11
    //   381: ifnull +1131 -> 1512
    //   384: aload 11
    //   386: arraylength
    //   387: ifle +1125 -> 1512
    //   390: aload 11
    //   392: arraylength
    //   393: istore_3
    //   394: iconst_0
    //   395: istore_1
    //   396: iload_1
    //   397: iload_3
    //   398: if_icmpge +1114 -> 1512
    //   401: aload 11
    //   403: iload_1
    //   404: aaload
    //   405: astore 13
    //   407: aload 13
    //   409: invokestatic 1003	com/crashlytics/android/v:a	(Ljava/io/File;)Ljava/lang/String;
    //   412: astore 12
    //   414: invokestatic 146	com/crashlytics/android/internal/v:a	()Lcom/crashlytics/android/internal/v;
    //   417: invokevirtual 191	com/crashlytics/android/internal/v:b	()Lcom/crashlytics/android/internal/q;
    //   420: ldc -63
    //   422: new 350	java/lang/StringBuilder
    //   425: dup
    //   426: ldc_w 1046
    //   429: invokespecial 534	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   432: aload 12
    //   434: invokevirtual 358	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   437: invokevirtual 366	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   440: invokeinterface 200 3 0
    //   445: invokestatic 146	com/crashlytics/android/internal/v:a	()Lcom/crashlytics/android/internal/v;
    //   448: invokevirtual 191	com/crashlytics/android/internal/v:b	()Lcom/crashlytics/android/internal/q;
    //   451: ldc -63
    //   453: new 350	java/lang/StringBuilder
    //   456: dup
    //   457: ldc_w 1048
    //   460: invokespecial 534	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   463: aload 12
    //   465: invokevirtual 358	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   468: invokevirtual 366	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   471: invokeinterface 200 3 0
    //   476: aload_0
    //   477: new 545	com/crashlytics/android/R
    //   480: dup
    //   481: new 350	java/lang/StringBuilder
    //   484: dup
    //   485: invokespecial 351	java/lang/StringBuilder:<init>	()V
    //   488: aload 12
    //   490: invokevirtual 358	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   493: ldc_w 651
    //   496: invokevirtual 358	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   499: invokevirtual 366	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   502: invokespecial 546	com/crashlytics/android/R:<init>	(Ljava/lang/String;)V
    //   505: invokespecial 549	com/crashlytics/android/v:a	(Ljava/io/FilenameFilter;)[Ljava/io/File;
    //   508: astore 10
    //   510: aload 10
    //   512: ifnull +849 -> 1361
    //   515: aload 10
    //   517: arraylength
    //   518: ifle +843 -> 1361
    //   521: iconst_1
    //   522: istore 4
    //   524: invokestatic 146	com/crashlytics/android/internal/v:a	()Lcom/crashlytics/android/internal/v;
    //   527: invokevirtual 191	com/crashlytics/android/internal/v:b	()Lcom/crashlytics/android/internal/q;
    //   530: ldc -63
    //   532: getstatic 166	java/util/Locale:US	Ljava/util/Locale;
    //   535: ldc_w 1050
    //   538: iconst_2
    //   539: anewarray 4	java/lang/Object
    //   542: dup
    //   543: iconst_0
    //   544: aload 12
    //   546: aastore
    //   547: dup
    //   548: iconst_1
    //   549: iload 4
    //   551: invokestatic 1055	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   554: aastore
    //   555: invokestatic 184	java/lang/String:format	(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   558: invokeinterface 200 3 0
    //   563: aload_0
    //   564: new 545	com/crashlytics/android/R
    //   567: dup
    //   568: new 350	java/lang/StringBuilder
    //   571: dup
    //   572: invokespecial 351	java/lang/StringBuilder:<init>	()V
    //   575: aload 12
    //   577: invokevirtual 358	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   580: ldc_w 693
    //   583: invokevirtual 358	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   586: invokevirtual 366	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   589: invokespecial 546	com/crashlytics/android/R:<init>	(Ljava/lang/String;)V
    //   592: invokespecial 549	com/crashlytics/android/v:a	(Ljava/io/FilenameFilter;)[Ljava/io/File;
    //   595: astore 9
    //   597: aload 9
    //   599: ifnull +768 -> 1367
    //   602: aload 9
    //   604: arraylength
    //   605: ifle +762 -> 1367
    //   608: iconst_1
    //   609: istore 5
    //   611: invokestatic 146	com/crashlytics/android/internal/v:a	()Lcom/crashlytics/android/internal/v;
    //   614: invokevirtual 191	com/crashlytics/android/internal/v:b	()Lcom/crashlytics/android/internal/q;
    //   617: ldc -63
    //   619: getstatic 166	java/util/Locale:US	Ljava/util/Locale;
    //   622: ldc_w 1057
    //   625: iconst_2
    //   626: anewarray 4	java/lang/Object
    //   629: dup
    //   630: iconst_0
    //   631: aload 12
    //   633: aastore
    //   634: dup
    //   635: iconst_1
    //   636: iload 5
    //   638: invokestatic 1055	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   641: aastore
    //   642: invokestatic 184	java/lang/String:format	(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   645: invokeinterface 200 3 0
    //   650: iload 4
    //   652: ifne +8 -> 660
    //   655: iload 5
    //   657: ifeq +805 -> 1462
    //   660: aconst_null
    //   661: astore 8
    //   663: aconst_null
    //   664: astore 7
    //   666: new 488	com/crashlytics/android/f
    //   669: dup
    //   670: aload_0
    //   671: getfield 151	com/crashlytics/android/v:k	Ljava/io/File;
    //   674: aload 12
    //   676: invokespecial 652	com/crashlytics/android/f:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   679: astore 6
    //   681: aload 8
    //   683: astore 7
    //   685: aload 6
    //   687: invokestatic 655	com/crashlytics/android/h:a	(Ljava/io/OutputStream;)Lcom/crashlytics/android/h;
    //   690: astore 8
    //   692: aload 8
    //   694: astore 7
    //   696: invokestatic 146	com/crashlytics/android/internal/v:a	()Lcom/crashlytics/android/internal/v;
    //   699: invokevirtual 191	com/crashlytics/android/internal/v:b	()Lcom/crashlytics/android/internal/q;
    //   702: ldc -63
    //   704: new 350	java/lang/StringBuilder
    //   707: dup
    //   708: ldc_w 1059
    //   711: invokespecial 534	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   714: aload 12
    //   716: invokevirtual 358	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   719: invokevirtual 366	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   722: invokeinterface 200 3 0
    //   727: aload 8
    //   729: astore 7
    //   731: aload 8
    //   733: aload 13
    //   735: invokestatic 557	com/crashlytics/android/v:a	(Lcom/crashlytics/android/h;Ljava/io/File;)V
    //   738: aload 8
    //   740: astore 7
    //   742: aload 8
    //   744: iconst_4
    //   745: new 723	java/util/Date
    //   748: dup
    //   749: invokespecial 932	java/util/Date:<init>	()V
    //   752: invokevirtual 726	java/util/Date:getTime	()J
    //   755: ldc2_w 727
    //   758: ldiv
    //   759: invokevirtual 501	com/crashlytics/android/h:a	(IJ)V
    //   762: aload 8
    //   764: astore 7
    //   766: aload 8
    //   768: iconst_5
    //   769: iload 4
    //   771: invokevirtual 802	com/crashlytics/android/h:a	(IZ)V
    //   774: aload 8
    //   776: astore 7
    //   778: aload_0
    //   779: aload 8
    //   781: aload 12
    //   783: invokespecial 1061	com/crashlytics/android/v:a	(Lcom/crashlytics/android/h;Ljava/lang/String;)V
    //   786: iload 5
    //   788: ifeq +114 -> 902
    //   791: aload 8
    //   793: astore 7
    //   795: aload 9
    //   797: arraylength
    //   798: iload_2
    //   799: if_icmple +807 -> 1606
    //   802: aload 8
    //   804: astore 7
    //   806: invokestatic 146	com/crashlytics/android/internal/v:a	()Lcom/crashlytics/android/internal/v;
    //   809: invokevirtual 191	com/crashlytics/android/internal/v:b	()Lcom/crashlytics/android/internal/q;
    //   812: ldc -63
    //   814: getstatic 166	java/util/Locale:US	Ljava/util/Locale;
    //   817: ldc_w 1063
    //   820: iconst_1
    //   821: anewarray 4	java/lang/Object
    //   824: dup
    //   825: iconst_0
    //   826: iload_2
    //   827: invokestatic 1068	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   830: aastore
    //   831: invokestatic 184	java/lang/String:format	(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   834: invokeinterface 200 3 0
    //   839: aload 8
    //   841: astore 7
    //   843: aload_0
    //   844: aload 12
    //   846: iload_2
    //   847: invokespecial 845	com/crashlytics/android/v:a	(Ljava/lang/String;I)V
    //   850: aload 8
    //   852: astore 7
    //   854: aload_0
    //   855: new 545	com/crashlytics/android/R
    //   858: dup
    //   859: new 350	java/lang/StringBuilder
    //   862: dup
    //   863: invokespecial 351	java/lang/StringBuilder:<init>	()V
    //   866: aload 12
    //   868: invokevirtual 358	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   871: ldc_w 693
    //   874: invokevirtual 358	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   877: invokevirtual 366	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   880: invokespecial 546	com/crashlytics/android/R:<init>	(Ljava/lang/String;)V
    //   883: invokespecial 549	com/crashlytics/android/v:a	(Ljava/io/FilenameFilter;)[Ljava/io/File;
    //   886: astore 9
    //   888: aload 8
    //   890: astore 7
    //   892: aload_0
    //   893: aload 8
    //   895: aload 9
    //   897: aload 12
    //   899: invokespecial 1070	com/crashlytics/android/v:a	(Lcom/crashlytics/android/h;[Ljava/io/File;Ljava/lang/String;)V
    //   902: iload 4
    //   904: ifeq +16 -> 920
    //   907: aload 8
    //   909: astore 7
    //   911: aload 8
    //   913: aload 10
    //   915: iconst_0
    //   916: aaload
    //   917: invokestatic 557	com/crashlytics/android/v:a	(Lcom/crashlytics/android/h;Ljava/io/File;)V
    //   920: aload 8
    //   922: astore 7
    //   924: aload 8
    //   926: bipush 11
    //   928: iconst_1
    //   929: invokevirtual 506	com/crashlytics/android/h:a	(II)V
    //   932: aload 8
    //   934: astore 7
    //   936: aload 8
    //   938: bipush 12
    //   940: iconst_3
    //   941: invokevirtual 901	com/crashlytics/android/h:b	(II)V
    //   944: aload 8
    //   946: ldc_w 1072
    //   949: invokestatic 665	com/crashlytics/android/internal/ab:a	(Ljava/io/Flushable;Ljava/lang/String;)V
    //   952: aload 6
    //   954: ldc_w 1074
    //   957: invokestatic 528	com/crashlytics/android/internal/ab:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   960: invokestatic 146	com/crashlytics/android/internal/v:a	()Lcom/crashlytics/android/internal/v;
    //   963: invokevirtual 191	com/crashlytics/android/internal/v:b	()Lcom/crashlytics/android/internal/q;
    //   966: ldc -63
    //   968: new 350	java/lang/StringBuilder
    //   971: dup
    //   972: ldc_w 1076
    //   975: invokespecial 534	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   978: aload 12
    //   980: invokevirtual 358	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   983: invokevirtual 366	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   986: invokeinterface 200 3 0
    //   991: aload_0
    //   992: aload 12
    //   994: invokespecial 1077	com/crashlytics/android/v:a	(Ljava/lang/String;)V
    //   997: iload_1
    //   998: iconst_1
    //   999: iadd
    //   1000: istore_1
    //   1001: goto -605 -> 396
    //   1004: aload 12
    //   1006: astore 11
    //   1008: aload 12
    //   1010: ifnonnull +8 -> 1018
    //   1013: ldc_w 263
    //   1016: astore 11
    //   1018: aload 10
    //   1020: astore 6
    //   1022: aload 9
    //   1024: astore 7
    //   1026: aload 10
    //   1028: astore 8
    //   1030: aload 11
    //   1032: invokestatic 104	com/crashlytics/android/d:a	(Ljava/lang/String;)Lcom/crashlytics/android/d;
    //   1035: astore 13
    //   1037: aload 15
    //   1039: ifnonnull +213 -> 1252
    //   1042: aconst_null
    //   1043: astore 11
    //   1045: goto +564 -> 1609
    //   1048: aload 10
    //   1050: astore 6
    //   1052: aload 9
    //   1054: astore 7
    //   1056: aload 10
    //   1058: astore 8
    //   1060: iconst_1
    //   1061: aload 13
    //   1063: invokestatic 288	com/crashlytics/android/h:b	(ILcom/crashlytics/android/d;)I
    //   1066: iconst_0
    //   1067: iadd
    //   1068: istore_2
    //   1069: iload_2
    //   1070: istore_1
    //   1071: aload 11
    //   1073: ifnull +24 -> 1097
    //   1076: aload 10
    //   1078: astore 6
    //   1080: aload 9
    //   1082: astore 7
    //   1084: aload 10
    //   1086: astore 8
    //   1088: iload_2
    //   1089: iconst_2
    //   1090: aload 11
    //   1092: invokestatic 288	com/crashlytics/android/h:b	(ILcom/crashlytics/android/d;)I
    //   1095: iadd
    //   1096: istore_1
    //   1097: iload_1
    //   1098: istore_2
    //   1099: aload 12
    //   1101: ifnull +24 -> 1125
    //   1104: aload 10
    //   1106: astore 6
    //   1108: aload 9
    //   1110: astore 7
    //   1112: aload 10
    //   1114: astore 8
    //   1116: iload_1
    //   1117: iconst_3
    //   1118: aload 12
    //   1120: invokestatic 288	com/crashlytics/android/h:b	(ILcom/crashlytics/android/d;)I
    //   1123: iadd
    //   1124: istore_2
    //   1125: aload 10
    //   1127: astore 6
    //   1129: aload 9
    //   1131: astore 7
    //   1133: aload 10
    //   1135: astore 8
    //   1137: aload 10
    //   1139: bipush 6
    //   1141: iconst_2
    //   1142: invokevirtual 496	com/crashlytics/android/h:g	(II)V
    //   1145: aload 10
    //   1147: astore 6
    //   1149: aload 9
    //   1151: astore 7
    //   1153: aload 10
    //   1155: astore 8
    //   1157: aload 10
    //   1159: iload_2
    //   1160: invokevirtual 498	com/crashlytics/android/h:b	(I)V
    //   1163: aload 10
    //   1165: astore 6
    //   1167: aload 9
    //   1169: astore 7
    //   1171: aload 10
    //   1173: astore 8
    //   1175: aload 10
    //   1177: iconst_1
    //   1178: aload 13
    //   1180: invokevirtual 504	com/crashlytics/android/h:a	(ILcom/crashlytics/android/d;)V
    //   1183: aload 11
    //   1185: ifnull +23 -> 1208
    //   1188: aload 10
    //   1190: astore 6
    //   1192: aload 9
    //   1194: astore 7
    //   1196: aload 10
    //   1198: astore 8
    //   1200: aload 10
    //   1202: iconst_2
    //   1203: aload 11
    //   1205: invokevirtual 504	com/crashlytics/android/h:a	(ILcom/crashlytics/android/d;)V
    //   1208: aload 12
    //   1210: ifnull +23 -> 1233
    //   1213: aload 10
    //   1215: astore 6
    //   1217: aload 9
    //   1219: astore 7
    //   1221: aload 10
    //   1223: astore 8
    //   1225: aload 10
    //   1227: iconst_3
    //   1228: aload 12
    //   1230: invokevirtual 504	com/crashlytics/android/h:a	(ILcom/crashlytics/android/d;)V
    //   1233: aload 10
    //   1235: ldc_w 1033
    //   1238: invokestatic 665	com/crashlytics/android/internal/ab:a	(Ljava/io/Flushable;Ljava/lang/String;)V
    //   1241: aload 9
    //   1243: ldc_w 1035
    //   1246: invokestatic 528	com/crashlytics/android/internal/ab:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   1249: goto -911 -> 338
    //   1252: aload 10
    //   1254: astore 6
    //   1256: aload 9
    //   1258: astore 7
    //   1260: aload 10
    //   1262: astore 8
    //   1264: aload 15
    //   1266: invokestatic 104	com/crashlytics/android/d:a	(Ljava/lang/String;)Lcom/crashlytics/android/d;
    //   1269: astore 11
    //   1271: goto +338 -> 1609
    //   1274: aload 10
    //   1276: astore 6
    //   1278: aload 9
    //   1280: astore 7
    //   1282: aload 10
    //   1284: astore 8
    //   1286: aload 14
    //   1288: invokestatic 104	com/crashlytics/android/d:a	(Ljava/lang/String;)Lcom/crashlytics/android/d;
    //   1291: astore 12
    //   1293: goto -245 -> 1048
    //   1296: astore 10
    //   1298: aconst_null
    //   1299: astore 9
    //   1301: aload 8
    //   1303: astore 6
    //   1305: aload 9
    //   1307: astore 7
    //   1309: aload_0
    //   1310: aload 10
    //   1312: aload 9
    //   1314: invokespecial 687	com/crashlytics/android/v:a	(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    //   1317: aload 8
    //   1319: astore 6
    //   1321: aload 9
    //   1323: astore 7
    //   1325: aload 10
    //   1327: athrow
    //   1328: astore 9
    //   1330: aload 7
    //   1332: astore 8
    //   1334: aload 6
    //   1336: astore 7
    //   1338: aload 9
    //   1340: astore 6
    //   1342: aload 7
    //   1344: ldc_w 1033
    //   1347: invokestatic 665	com/crashlytics/android/internal/ab:a	(Ljava/io/Flushable;Ljava/lang/String;)V
    //   1350: aload 8
    //   1352: ldc_w 1035
    //   1355: invokestatic 528	com/crashlytics/android/internal/ab:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   1358: aload 6
    //   1360: athrow
    //   1361: iconst_0
    //   1362: istore 4
    //   1364: goto -840 -> 524
    //   1367: iconst_0
    //   1368: istore 5
    //   1370: goto -759 -> 611
    //   1373: astore 8
    //   1375: aconst_null
    //   1376: astore 6
    //   1378: aconst_null
    //   1379: astore 7
    //   1381: invokestatic 146	com/crashlytics/android/internal/v:a	()Lcom/crashlytics/android/internal/v;
    //   1384: invokevirtual 191	com/crashlytics/android/internal/v:b	()Lcom/crashlytics/android/internal/q;
    //   1387: ldc -63
    //   1389: new 350	java/lang/StringBuilder
    //   1392: dup
    //   1393: ldc_w 1079
    //   1396: invokespecial 534	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1399: aload 12
    //   1401: invokevirtual 358	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1404: invokevirtual 366	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1407: aload 8
    //   1409: invokeinterface 259 4 0
    //   1414: aload_0
    //   1415: aload 8
    //   1417: aload 7
    //   1419: invokespecial 687	com/crashlytics/android/v:a	(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    //   1422: aload 6
    //   1424: ldc_w 1072
    //   1427: invokestatic 665	com/crashlytics/android/internal/ab:a	(Ljava/io/Flushable;Ljava/lang/String;)V
    //   1430: aload 7
    //   1432: invokestatic 1081	com/crashlytics/android/v:a	(Lcom/crashlytics/android/f;)V
    //   1435: goto -475 -> 960
    //   1438: astore 8
    //   1440: aconst_null
    //   1441: astore 6
    //   1443: aload 7
    //   1445: ldc_w 1072
    //   1448: invokestatic 665	com/crashlytics/android/internal/ab:a	(Ljava/io/Flushable;Ljava/lang/String;)V
    //   1451: aload 6
    //   1453: ldc_w 1074
    //   1456: invokestatic 528	com/crashlytics/android/internal/ab:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   1459: aload 8
    //   1461: athrow
    //   1462: invokestatic 146	com/crashlytics/android/internal/v:a	()Lcom/crashlytics/android/internal/v;
    //   1465: invokevirtual 191	com/crashlytics/android/internal/v:b	()Lcom/crashlytics/android/internal/q;
    //   1468: ldc -63
    //   1470: new 350	java/lang/StringBuilder
    //   1473: dup
    //   1474: ldc_w 1083
    //   1477: invokespecial 534	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1480: aload 12
    //   1482: invokevirtual 358	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1485: invokevirtual 366	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1488: invokeinterface 200 3 0
    //   1493: goto -533 -> 960
    //   1496: invokestatic 146	com/crashlytics/android/internal/v:a	()Lcom/crashlytics/android/internal/v;
    //   1499: invokevirtual 191	com/crashlytics/android/internal/v:b	()Lcom/crashlytics/android/internal/q;
    //   1502: ldc -63
    //   1504: ldc_w 1085
    //   1507: invokeinterface 200 3 0
    //   1512: return
    //   1513: invokestatic 146	com/crashlytics/android/internal/v:a	()Lcom/crashlytics/android/internal/v;
    //   1516: invokevirtual 191	com/crashlytics/android/internal/v:b	()Lcom/crashlytics/android/internal/q;
    //   1519: ldc -63
    //   1521: ldc_w 1087
    //   1524: invokeinterface 200 3 0
    //   1529: return
    //   1530: astore 8
    //   1532: goto -89 -> 1443
    //   1535: astore 8
    //   1537: aload 7
    //   1539: astore 9
    //   1541: aload 6
    //   1543: astore 7
    //   1545: aload 9
    //   1547: astore 6
    //   1549: goto -106 -> 1443
    //   1552: astore 8
    //   1554: aconst_null
    //   1555: astore 9
    //   1557: aload 6
    //   1559: astore 7
    //   1561: aload 9
    //   1563: astore 6
    //   1565: goto -184 -> 1381
    //   1568: astore 10
    //   1570: aload 8
    //   1572: astore 7
    //   1574: aload 6
    //   1576: astore 9
    //   1578: aload 10
    //   1580: astore 8
    //   1582: aload 7
    //   1584: astore 6
    //   1586: aload 9
    //   1588: astore 7
    //   1590: goto -209 -> 1381
    //   1593: astore 6
    //   1595: aconst_null
    //   1596: astore 8
    //   1598: goto -256 -> 1342
    //   1601: astore 10
    //   1603: goto -302 -> 1301
    //   1606: goto -718 -> 888
    //   1609: aload 14
    //   1611: ifnonnull -337 -> 1274
    //   1614: aconst_null
    //   1615: astore 12
    //   1617: goto -569 -> 1048
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1620	0	this	v
    //   33	1091	1	i1	int
    //   31	1129	2	i2	int
    //   393	6	3	i3	int
    //   522	841	4	bool1	boolean
    //   609	760	5	bool2	boolean
    //   7	1578	6	localObject1	Object
    //   1593	1	6	localObject2	Object
    //   13	1576	7	localObject3	Object
    //   90	1261	8	localObject4	Object
    //   1373	43	8	localException1	Exception
    //   1438	22	8	localObject5	Object
    //   1530	1	8	localObject6	Object
    //   1535	1	8	localObject7	Object
    //   1552	19	8	localException2	Exception
    //   1580	17	8	localObject8	Object
    //   97	1225	9	localObject9	Object
    //   1328	11	9	localObject10	Object
    //   1539	48	9	localObject11	Object
    //   107	1176	10	localObject12	Object
    //   1296	30	10	localException3	Exception
    //   1568	11	10	localException4	Exception
    //   1601	1	10	localException5	Exception
    //   377	893	11	localObject13	Object
    //   265	1351	12	localObject14	Object
    //   405	774	13	localObject15	Object
    //   305	1305	14	str1	String
    //   285	980	15	str2	String
    // Exception table:
    //   from	to	target	type
    //   198	232	1296	java/lang/Exception
    //   240	247	1328	finally
    //   259	267	1328	finally
    //   279	287	1328	finally
    //   299	307	1328	finally
    //   1030	1037	1328	finally
    //   1060	1069	1328	finally
    //   1088	1097	1328	finally
    //   1116	1125	1328	finally
    //   1137	1145	1328	finally
    //   1157	1163	1328	finally
    //   1175	1183	1328	finally
    //   1200	1208	1328	finally
    //   1225	1233	1328	finally
    //   1264	1271	1328	finally
    //   1286	1293	1328	finally
    //   1309	1317	1328	finally
    //   1325	1328	1328	finally
    //   666	681	1373	java/lang/Exception
    //   666	681	1438	finally
    //   685	692	1530	finally
    //   696	727	1530	finally
    //   731	738	1530	finally
    //   742	762	1530	finally
    //   766	774	1530	finally
    //   778	786	1530	finally
    //   795	802	1530	finally
    //   806	839	1530	finally
    //   843	850	1530	finally
    //   854	888	1530	finally
    //   892	902	1530	finally
    //   911	920	1530	finally
    //   924	932	1530	finally
    //   936	944	1530	finally
    //   1381	1422	1535	finally
    //   685	692	1552	java/lang/Exception
    //   696	727	1568	java/lang/Exception
    //   731	738	1568	java/lang/Exception
    //   742	762	1568	java/lang/Exception
    //   766	774	1568	java/lang/Exception
    //   778	786	1568	java/lang/Exception
    //   795	802	1568	java/lang/Exception
    //   806	839	1568	java/lang/Exception
    //   843	850	1568	java/lang/Exception
    //   854	888	1568	java/lang/Exception
    //   892	902	1568	java/lang/Exception
    //   911	920	1568	java/lang/Exception
    //   924	932	1568	java/lang/Exception
    //   936	944	1568	java/lang/Exception
    //   198	232	1593	finally
    //   240	247	1601	java/lang/Exception
    //   259	267	1601	java/lang/Exception
    //   279	287	1601	java/lang/Exception
    //   299	307	1601	java/lang/Exception
    //   1030	1037	1601	java/lang/Exception
    //   1060	1069	1601	java/lang/Exception
    //   1088	1097	1601	java/lang/Exception
    //   1116	1125	1601	java/lang/Exception
    //   1137	1145	1601	java/lang/Exception
    //   1157	1163	1601	java/lang/Exception
    //   1175	1183	1601	java/lang/Exception
    //   1200	1208	1601	java/lang/Exception
    //   1225	1233	1601	java/lang/Exception
    //   1264	1271	1601	java/lang/Exception
    //   1286	1293	1601	java/lang/Exception
  }
  
  private String n()
  {
    File[] arrayOfFile = a(new R("BeginSession"));
    Arrays.sort(arrayOfFile, b);
    if (arrayOfFile.length > 0) {
      return a(arrayOfFile[0]);
    }
    return null;
  }
  
  private File[] o()
  {
    return a(new R("BeginSession"));
  }
  
  private void p()
  {
    File[] arrayOfFile = a(a);
    int i2 = arrayOfFile.length;
    int i1 = 0;
    while (i1 < i2)
    {
      File localFile = arrayOfFile[i1];
      com.crashlytics.android.internal.v.a().b().a("Crashlytics", "Attempting to send crash report at time of crash...");
      new Thread(new D(this, localFile), "Crashlytics Report Uploader").start();
      i1 += 1;
    }
  }
  
  private static int q()
  {
    return h.b(1, d.a(r.a(Crashlytics.getInstance().getContext(), com.crashlytics.android.internal.v.a().f()))) + 0;
  }
  
  private int r()
  {
    int i2 = h.b(1, 0L) + 0 + h.b(2, 0L) + h.b(3, q);
    int i1 = i2;
    if (r != null) {
      i1 = i2 + h.b(4, r);
    }
    return i1;
  }
  
  private static int s()
  {
    return h.b(1, f) + 0 + h.b(2, f) + h.b(3, 0L);
  }
  
  final void a(long paramLong, String paramString)
  {
    b(new x(this, paramLong, paramString));
  }
  
  final void a(Thread paramThread, Throwable paramThrowable)
  {
    a(new P(this, new Date(), paramThread, paramThrowable));
  }
  
  final void a(File[] paramArrayOfFile)
  {
    Object localObject1 = new File(com.crashlytics.android.internal.v.a().h(), "invalidClsFiles");
    Object localObject2;
    int i2;
    if (((File)localObject1).exists())
    {
      if (((File)localObject1).isDirectory())
      {
        localObject2 = ((File)localObject1).listFiles();
        i2 = localObject2.length;
        i1 = 0;
        while (i1 < i2)
        {
          localObject2[i1].delete();
          i1 += 1;
        }
      }
      ((File)localObject1).delete();
    }
    int i3 = paramArrayOfFile.length;
    int i1 = 0;
    while (i1 < i3)
    {
      localObject1 = paramArrayOfFile[i1];
      com.crashlytics.android.internal.v.a().b().a("Crashlytics", "Found invalid session part file: " + localObject1);
      localObject1 = a((File)localObject1);
      localObject2 = new F(this, (String)localObject1);
      com.crashlytics.android.internal.v.a().b().a("Crashlytics", "Deleting all part files for invalid session: " + (String)localObject1);
      localObject1 = a((FilenameFilter)localObject2);
      int i4 = localObject1.length;
      i2 = 0;
      while (i2 < i4)
      {
        localObject2 = localObject1[i2];
        com.crashlytics.android.internal.v.a().b().a("Crashlytics", "Deleting session file: " + localObject2);
        ((File)localObject2).delete();
        i2 += 1;
      }
      i1 += 1;
    }
  }
  
  final boolean a()
  {
    return m.get();
  }
  
  final boolean b()
  {
    return ((Boolean)a(new O(this))).booleanValue();
  }
  
  final void c()
  {
    b(new z(this));
  }
  
  final void d()
  {
    b(new A(this));
  }
  
  final void e()
  {
    b(new B(this));
  }
  
  final boolean f()
  {
    return ((Boolean)a(new C(this))).booleanValue();
  }
  
  final boolean g()
  {
    return o().length > 0;
  }
  
  final void h()
  {
    a(new E(this));
  }
  
  /* Error */
  public final void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 141	com/crashlytics/android/v:m	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   6: iconst_1
    //   7: invokevirtual 254	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
    //   10: invokestatic 146	com/crashlytics/android/internal/v:a	()Lcom/crashlytics/android/internal/v;
    //   13: invokevirtual 191	com/crashlytics/android/internal/v:b	()Lcom/crashlytics/android/internal/q;
    //   16: ldc -63
    //   18: new 350	java/lang/StringBuilder
    //   21: dup
    //   22: ldc_w 1166
    //   25: invokespecial 534	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   28: aload_2
    //   29: invokevirtual 830	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   32: ldc_w 832
    //   35: invokevirtual 358	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   38: aload_1
    //   39: invokevirtual 405	java/lang/Thread:getName	()Ljava/lang/String;
    //   42: invokevirtual 358	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   45: invokevirtual 366	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   48: invokeinterface 200 3 0
    //   53: aload_0
    //   54: getfield 135	com/crashlytics/android/v:h	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   57: iconst_1
    //   58: invokevirtual 1170	java/util/concurrent/atomic/AtomicBoolean:getAndSet	(Z)Z
    //   61: ifne +45 -> 106
    //   64: invokestatic 146	com/crashlytics/android/internal/v:a	()Lcom/crashlytics/android/internal/v;
    //   67: invokevirtual 191	com/crashlytics/android/internal/v:b	()Lcom/crashlytics/android/internal/q;
    //   70: ldc -63
    //   72: ldc_w 1172
    //   75: invokeinterface 200 3 0
    //   80: invokestatic 174	com/crashlytics/android/Crashlytics:getInstance	()Lcom/crashlytics/android/Crashlytics;
    //   83: invokevirtual 245	com/crashlytics/android/Crashlytics:getContext	()Landroid/content/Context;
    //   86: aload_0
    //   87: getfield 227	com/crashlytics/android/v:p	Landroid/content/BroadcastReceiver;
    //   90: invokevirtual 1176	android/content/Context:unregisterReceiver	(Landroid/content/BroadcastReceiver;)V
    //   93: invokestatic 174	com/crashlytics/android/Crashlytics:getInstance	()Lcom/crashlytics/android/Crashlytics;
    //   96: invokevirtual 245	com/crashlytics/android/Crashlytics:getContext	()Landroid/content/Context;
    //   99: aload_0
    //   100: getfield 239	com/crashlytics/android/v:o	Landroid/content/BroadcastReceiver;
    //   103: invokevirtual 1176	android/content/Context:unregisterReceiver	(Landroid/content/BroadcastReceiver;)V
    //   106: aload_0
    //   107: new 1178	com/crashlytics/android/N
    //   110: dup
    //   111: aload_0
    //   112: new 723	java/util/Date
    //   115: dup
    //   116: invokespecial 932	java/util/Date:<init>	()V
    //   119: aload_1
    //   120: aload_2
    //   121: invokespecial 1179	com/crashlytics/android/N:<init>	(Lcom/crashlytics/android/v;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    //   124: invokespecial 1145	com/crashlytics/android/v:a	(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    //   127: pop
    //   128: invokestatic 146	com/crashlytics/android/internal/v:a	()Lcom/crashlytics/android/internal/v;
    //   131: invokevirtual 191	com/crashlytics/android/internal/v:b	()Lcom/crashlytics/android/internal/q;
    //   134: ldc -63
    //   136: ldc_w 1181
    //   139: invokeinterface 200 3 0
    //   144: aload_0
    //   145: getfield 137	com/crashlytics/android/v:j	Ljava/lang/Thread$UncaughtExceptionHandler;
    //   148: aload_1
    //   149: aload_2
    //   150: invokeinterface 1183 3 0
    //   155: aload_0
    //   156: getfield 141	com/crashlytics/android/v:m	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   159: iconst_0
    //   160: invokevirtual 254	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
    //   163: aload_0
    //   164: monitorexit
    //   165: return
    //   166: astore_3
    //   167: invokestatic 146	com/crashlytics/android/internal/v:a	()Lcom/crashlytics/android/internal/v;
    //   170: invokevirtual 191	com/crashlytics/android/internal/v:b	()Lcom/crashlytics/android/internal/q;
    //   173: ldc -63
    //   175: ldc_w 1185
    //   178: aload_3
    //   179: invokeinterface 259 4 0
    //   184: invokestatic 146	com/crashlytics/android/internal/v:a	()Lcom/crashlytics/android/internal/v;
    //   187: invokevirtual 191	com/crashlytics/android/internal/v:b	()Lcom/crashlytics/android/internal/q;
    //   190: ldc -63
    //   192: ldc_w 1181
    //   195: invokeinterface 200 3 0
    //   200: aload_0
    //   201: getfield 137	com/crashlytics/android/v:j	Ljava/lang/Thread$UncaughtExceptionHandler;
    //   204: aload_1
    //   205: aload_2
    //   206: invokeinterface 1183 3 0
    //   211: aload_0
    //   212: getfield 141	com/crashlytics/android/v:m	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   215: iconst_0
    //   216: invokevirtual 254	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
    //   219: goto -56 -> 163
    //   222: astore_1
    //   223: aload_0
    //   224: monitorexit
    //   225: aload_1
    //   226: athrow
    //   227: astore_3
    //   228: invokestatic 146	com/crashlytics/android/internal/v:a	()Lcom/crashlytics/android/internal/v;
    //   231: invokevirtual 191	com/crashlytics/android/internal/v:b	()Lcom/crashlytics/android/internal/q;
    //   234: ldc -63
    //   236: ldc_w 1181
    //   239: invokeinterface 200 3 0
    //   244: aload_0
    //   245: getfield 137	com/crashlytics/android/v:j	Ljava/lang/Thread$UncaughtExceptionHandler;
    //   248: aload_1
    //   249: aload_2
    //   250: invokeinterface 1183 3 0
    //   255: aload_0
    //   256: getfield 141	com/crashlytics/android/v:m	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   259: iconst_0
    //   260: invokevirtual 254	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
    //   263: aload_3
    //   264: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	265	0	this	v
    //   0	265	1	paramThread	Thread
    //   0	265	2	paramThrowable	Throwable
    //   166	13	3	localException	Exception
    //   227	37	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   10	106	166	java/lang/Exception
    //   106	128	166	java/lang/Exception
    //   2	10	222	finally
    //   128	163	222	finally
    //   184	219	222	finally
    //   228	265	222	finally
    //   10	106	227	finally
    //   106	128	227	finally
    //   167	184	227	finally
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */