package com.crashlytics.android;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.crashlytics.android.internal.A;
import com.crashlytics.android.internal.D;
import com.crashlytics.android.internal.aM;
import com.crashlytics.android.internal.aP;
import com.crashlytics.android.internal.aR;
import com.crashlytics.android.internal.aS;
import com.crashlytics.android.internal.aX;
import com.crashlytics.android.internal.ab;
import com.crashlytics.android.internal.af;
import com.crashlytics.android.internal.ag;
import com.crashlytics.android.internal.ai;
import com.crashlytics.android.internal.ao;
import com.crashlytics.android.internal.av;
import com.crashlytics.android.internal.ax;
import com.crashlytics.android.internal.ay;
import com.crashlytics.android.internal.q;
import com.crashlytics.android.internal.r;
import com.crashlytics.android.internal.u;
import java.net.URL;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HttpsURLConnection;

public final class Crashlytics
  extends u
{
  public static final String TAG = "Crashlytics";
  private static ContextWrapper j;
  private static String k;
  private static String l;
  private static String m;
  private static String n;
  private static String o;
  private static String p;
  private static String q;
  private static boolean r = false;
  private static PinningInfoProvider s = null;
  private static av t;
  private static float u;
  private static Crashlytics v;
  private final long a = System.currentTimeMillis();
  private final ConcurrentHashMap<String, String> b = new ConcurrentHashMap();
  private CrashlyticsListener c;
  private v d;
  private ao e = null;
  private String f = null;
  private String g = null;
  private String h = null;
  private String i;
  
  private b a(Y paramY)
  {
    String str = ab.a(new String[] { i });
    int i1 = ai.a(l).a();
    return new b(p, k, o, n, str, m, i1, q, "0", paramY);
  }
  
  private static void a(int paramInt, String paramString1, String paramString2)
  {
    Crashlytics localCrashlytics = getInstance();
    if ((localCrashlytics == null) || (d == null))
    {
      com.crashlytics.android.internal.v.a().b().a(paramString1, "Crashlytics must be initialized by calling Crashlytics.start(Context) prior to logging messages.", null);
      return;
    }
    long l1 = System.currentTimeMillis();
    long l2 = a;
    d.a(l1 - l2, ab.b(paramInt) + "/" + paramString1 + " " + paramString2);
  }
  
  static void a(String paramString)
  {
    D localD = (D)com.crashlytics.android.internal.v.a().a(D.class);
    if (localD != null) {
      localD.a(new ag(paramString));
    }
  }
  
  private void a(String paramString, Context paramContext, float paramFloat)
  {
    boolean bool2 = false;
    for (;;)
    {
      Object localObject;
      try
      {
        if (j != null)
        {
          com.crashlytics.android.internal.v.a().b().a("Crashlytics", "Crashlytics already started, ignoring re-initialization attempt.");
          return;
        }
        p = paramString;
        j = new ContextWrapper(paramContext.getApplicationContext());
        t = new av(com.crashlytics.android.internal.v.a().b());
        com.crashlytics.android.internal.v.a().b().b("Crashlytics", "Initializing Crashlytics " + getCrashlyticsVersion());
      }
      finally {}
      try
      {
        k = j.getPackageName();
        localObject = j.getPackageManager();
        l = ((PackageManager)localObject).getInstallerPackageName(k);
        com.crashlytics.android.internal.v.a().b().a("Crashlytics", "Installer package name is: " + l);
        localObject = ((PackageManager)localObject).getPackageInfo(k, 0);
        n = Integer.toString(versionCode);
        if (versionName != null) {
          break label521;
        }
        localObject = "0.0";
        o = (String)localObject;
        m = paramContext.getPackageManager().getApplicationLabel(paramContext.getApplicationInfo()).toString();
        q = Integer.toString(getApplicationInfotargetSdkVersion);
        i = ab.i(paramContext);
      }
      catch (Exception localException)
      {
        com.crashlytics.android.internal.v.a().b().a("Crashlytics", "Error setting up app properties", localException);
        continue;
      }
      e = new ao(j);
      e.h();
      new c(i, ab.a(j, "com.crashlytics.RequireBuildId", true)).a(paramString, k);
      boolean bool1 = bool2;
      try
      {
        com.crashlytics.android.internal.v.a().b().a("Crashlytics", "Installing exception handler...");
        bool1 = bool2;
        d = new v(Thread.getDefaultUncaughtExceptionHandler(), c, i);
        bool1 = bool2;
        bool2 = d.f();
        bool1 = bool2;
        d.d();
        bool1 = bool2;
        d.c();
        bool1 = bool2;
        d.h();
        bool1 = bool2;
        Thread.setDefaultUncaughtExceptionHandler(d);
        bool1 = bool2;
        com.crashlytics.android.internal.v.a().b().a("Crashlytics", "Successfully installed exception handler.");
        bool1 = bool2;
      }
      catch (Exception paramString)
      {
        com.crashlytics.android.internal.v.a().b().a("Crashlytics", "There was a problem installing the exception handler.", paramString);
        continue;
      }
      paramString = new CountDownLatch(1);
      new Thread(new t(this, paramContext, paramFloat, paramString), "Crashlytics Initializer").start();
      if (bool1)
      {
        com.crashlytics.android.internal.v.a().b().a("Crashlytics", "Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously.");
        try
        {
          if (paramString.await(4000L, TimeUnit.MILLISECONDS)) {
            continue;
          }
          com.crashlytics.android.internal.v.a().b().c("Crashlytics", "Crashlytics initialization was not completed in the allotted time.");
        }
        catch (InterruptedException paramString)
        {
          com.crashlytics.android.internal.v.a().b().a("Crashlytics", "Crashlytics was interrupted during initialization.", paramString);
        }
        continue;
        label521:
        localObject = versionName;
      }
    }
  }
  
  static void a(boolean paramBoolean)
  {
    ab.a().edit().putBoolean("always_send_reports_opt_in", true).commit();
  }
  
  private boolean a(Context paramContext, float paramFloat)
  {
    boolean bool4 = true;
    boolean bool3 = true;
    int i2 = 0;
    Object localObject = ab.g(getContext());
    try
    {
      aS.a().a(paramContext, t, n, o, i()).c();
      paramContext = aS.a().b();
      if (paramContext == null) {}
    }
    catch (Exception localException)
    {
      for (;;)
      {
        try
        {
          localaM = a;
          if ("new".equals(a))
          {
            localObject = a(Y.a(getContext(), (String)localObject));
            if (new T(i(), b, t).a((b)localObject)) {
              bool1 = aS.a().d();
            }
          }
        }
        catch (Exception localException)
        {
          try
          {
            aM localaM;
            bool2 = d.b;
            if ((bool1) && (bool2))
            {
              bool1 = bool4;
              try
              {
                bool2 = d.b() & true;
                bool1 = bool2;
                paramContext = q();
                i1 = i2;
                bool1 = bool2;
                if (paramContext != null)
                {
                  bool1 = bool2;
                  new aa(paramContext).a(paramFloat);
                  bool1 = bool2;
                  i1 = i2;
                }
              }
              catch (Exception paramContext)
              {
                com.crashlytics.android.internal.v.a().b().a("Crashlytics", "Error sending crash report", paramContext);
                i1 = i2;
                continue;
              }
              if (i1 != 0) {
                com.crashlytics.android.internal.v.a().b().a("Crashlytics", "Crash reporting disabled.");
              }
              return bool1;
              paramContext = paramContext;
              com.crashlytics.android.internal.v.a().b().a("Crashlytics", "Error dealing with settings", paramContext);
              paramContext = null;
              continue;
              com.crashlytics.android.internal.v.a().b().a("Crashlytics", "Failed to create app with Crashlytics service.", null);
              bool1 = false;
              continue;
              if ("configured".equals(a))
              {
                bool1 = aS.a().d();
                continue;
              }
              if (d)
              {
                com.crashlytics.android.internal.v.a().b().a("Crashlytics", "Server says an update is required - forcing a full App update.");
                localObject = a(Y.a(getContext(), (String)localObject));
                new ad(i(), b, t).a((b)localObject);
              }
              bool1 = true;
              continue;
              localException = localException;
              com.crashlytics.android.internal.v.a().b().a("Crashlytics", "Error performing auto configuration.", localException);
              bool1 = false;
              continue;
            }
          }
          catch (Exception paramContext)
          {
            com.crashlytics.android.internal.v.a().b().a("Crashlytics", "Error getting collect reports setting.", paramContext);
            bool2 = false;
            continue;
            int i1 = 1;
            bool1 = bool3;
            continue;
          }
        }
        boolean bool2 = false;
        boolean bool1 = false;
      }
    }
  }
  
  static void b(String paramString)
  {
    D localD = (D)com.crashlytics.android.internal.v.a().a(D.class);
    if (localD != null) {
      localD.a(new af(paramString));
    }
  }
  
  private static String c(String paramString)
  {
    String str = paramString;
    if (paramString != null)
    {
      paramString = paramString.trim();
      str = paramString;
      if (paramString.length() > 1024) {
        str = paramString.substring(0, 1024);
      }
    }
    return str;
  }
  
  static String d()
  {
    return k;
  }
  
  static String e()
  {
    return l;
  }
  
  static String f()
  {
    return o;
  }
  
  static String g()
  {
    return n;
  }
  
  @Deprecated
  public static String getCrashlyticsVersion()
  {
    return getInstance().getVersion();
  }
  
  /* Error */
  public static Crashlytics getInstance()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: invokestatic 126	com/crashlytics/android/internal/v:a	()Lcom/crashlytics/android/internal/v;
    //   6: ldc 2
    //   8: invokevirtual 165	com/crashlytics/android/internal/v:a	(Ljava/lang/Class;)Lcom/crashlytics/android/internal/u;
    //   11: checkcast 2	com/crashlytics/android/Crashlytics
    //   14: astore_0
    //   15: aload_0
    //   16: ifnull +8 -> 24
    //   19: ldc 2
    //   21: monitorexit
    //   22: aload_0
    //   23: areturn
    //   24: getstatic 522	com/crashlytics/android/Crashlytics:v	Lcom/crashlytics/android/Crashlytics;
    //   27: ifnonnull +13 -> 40
    //   30: new 2	com/crashlytics/android/Crashlytics
    //   33: dup
    //   34: invokespecial 523	com/crashlytics/android/Crashlytics:<init>	()V
    //   37: putstatic 522	com/crashlytics/android/Crashlytics:v	Lcom/crashlytics/android/Crashlytics;
    //   40: getstatic 522	com/crashlytics/android/Crashlytics:v	Lcom/crashlytics/android/Crashlytics;
    //   43: astore_0
    //   44: goto -25 -> 19
    //   47: astore_0
    //   48: ldc 2
    //   50: monitorexit
    //   51: aload_0
    //   52: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   14	30	0	localCrashlytics	Crashlytics
    //   47	5	0	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   3	15	47	finally
    //   24	40	47	finally
    //   40	44	47	finally
  }
  
  public static PinningInfoProvider getPinningInfoProvider()
  {
    return s;
  }
  
  static String h()
  {
    return m;
  }
  
  static String i()
  {
    return ab.a(j, "com.crashlytics.ApiEndpoint");
  }
  
  static boolean k()
  {
    return ab.a().getBoolean("always_send_reports_opt_in", false);
  }
  
  public static void log(int paramInt, String paramString1, String paramString2)
  {
    a(paramInt, paramString1, paramString2);
    com.crashlytics.android.internal.v.a().b().a(paramInt, paramString1, paramString2, true);
  }
  
  public static void log(String paramString)
  {
    a(3, "Crashlytics", paramString);
  }
  
  public static void logException(Throwable paramThrowable)
  {
    Crashlytics localCrashlytics = getInstance();
    if ((localCrashlytics == null) || (d == null))
    {
      com.crashlytics.android.internal.v.a().b().a("Crashlytics", "Crashlytics must be initialized by calling Crashlytics.start(Context) prior to logging exceptions.", null);
      return;
    }
    if (paramThrowable == null)
    {
      com.crashlytics.android.internal.v.a().b().a(5, "Crashlytics", "Crashlytics is ignoring a request to log a null exception.");
      return;
    }
    d.a(Thread.currentThread(), paramThrowable);
  }
  
  public static void setApplicationInstallationIdentifier(String paramString)
  {
    com.crashlytics.android.internal.v.a().a(c(paramString));
  }
  
  public static void setBool(String paramString, boolean paramBoolean)
  {
    setString(paramString, Boolean.toString(paramBoolean));
  }
  
  public static void setDouble(String paramString, double paramDouble)
  {
    setString(paramString, Double.toString(paramDouble));
  }
  
  public static void setFloat(String paramString, float paramFloat)
  {
    setString(paramString, Float.toString(paramFloat));
  }
  
  public static void setInt(String paramString, int paramInt)
  {
    setString(paramString, Integer.toString(paramInt));
  }
  
  public static void setLong(String paramString, long paramLong)
  {
    setString(paramString, Long.toString(paramLong));
  }
  
  public static void setPinningInfoProvider(PinningInfoProvider paramPinningInfoProvider)
  {
    if (s != paramPinningInfoProvider)
    {
      s = paramPinningInfoProvider;
      if (t != null)
      {
        if (paramPinningInfoProvider != null) {
          break label29;
        }
        t.a(null);
      }
    }
    return;
    label29:
    t.a(new k(paramPinningInfoProvider));
  }
  
  public static void setString(String paramString1, String paramString2)
  {
    if (paramString1 == null)
    {
      if ((j != null) && (ab.f(j))) {
        throw new IllegalArgumentException("Custom attribute key cannot be null.");
      }
      com.crashlytics.android.internal.v.a().b().a("Crashlytics", "Attempting to set custom attribute with null key, ignoring.", null);
      return;
    }
    String str = c(paramString1);
    if ((getInstanceb.size() < 64) || (getInstanceb.containsKey(str)))
    {
      if (paramString2 == null) {}
      for (paramString1 = "";; paramString1 = c(paramString2))
      {
        getInstanceb.put(str, paramString1);
        return;
      }
    }
    com.crashlytics.android.internal.v.a().b().a("Crashlytics", "Exceeded maximum number of custom attributes (64)");
  }
  
  public static void setUserEmail(String paramString)
  {
    getInstanceg = c(paramString);
  }
  
  public static void setUserIdentifier(String paramString)
  {
    getInstancef = c(paramString);
  }
  
  public static void setUserName(String paramString)
  {
    getInstanceh = c(paramString);
  }
  
  public static void start(Context paramContext)
  {
    start(paramContext, 1.0F);
  }
  
  public static void start(Context paramContext, float paramFloat)
  {
    u = paramFloat;
    if (!ab.d(paramContext)) {
      com.crashlytics.android.internal.v.a().a(new A());
    }
    com.crashlytics.android.internal.v.a(paramContext, new u[] { getInstance(), new D() });
  }
  
  final Map<String, String> a()
  {
    return Collections.unmodifiableMap(b);
  }
  
  final ao b()
  {
    return e;
  }
  
  protected final void c()
  {
    Context localContext = super.getContext();
    String str = r.a(localContext, false);
    if (str == null) {
      return;
    }
    try
    {
      a(str, localContext, u);
      return;
    }
    catch (CrashlyticsMissingDependencyException localCrashlyticsMissingDependencyException)
    {
      throw localCrashlyticsMissingDependencyException;
    }
    catch (Exception localException)
    {
      com.crashlytics.android.internal.v.a().b().a("Crashlytics", "Crashlytics was not started due to an exception during initialization", localException);
    }
  }
  
  public final void crash()
  {
    new CrashTest().indexOutOfBounds();
  }
  
  public final boolean getDebugMode()
  {
    return com.crashlytics.android.internal.v.a().f();
  }
  
  public final String getVersion()
  {
    return com.crashlytics.android.internal.v.a().getVersion();
  }
  
  final boolean j()
  {
    return ((Boolean)aS.a().a(new l(this), Boolean.valueOf(false))).booleanValue();
  }
  
  final v l()
  {
    return d;
  }
  
  final String m()
  {
    if (e.a()) {
      return f;
    }
    return null;
  }
  
  final String n()
  {
    if (e.a()) {
      return g;
    }
    return null;
  }
  
  final String o()
  {
    if (e.a()) {
      return h;
    }
    return null;
  }
  
  final boolean p()
  {
    return ((Boolean)aS.a().a(new m(this), Boolean.valueOf(true))).booleanValue();
  }
  
  final V q()
  {
    return (V)aS.a().a(new n(this), null);
  }
  
  final aR r()
  {
    return (aR)aS.a().a(new o(this), null);
  }
  
  public final void setDebugMode(boolean paramBoolean)
  {
    com.crashlytics.android.internal.v.a().a(paramBoolean);
  }
  
  public final void setListener(CrashlyticsListener paramCrashlyticsListener)
  {
    c = paramCrashlyticsListener;
  }
  
  public final boolean verifyPinning(URL paramURL)
  {
    try
    {
      if (getPinningInfoProvider() != null)
      {
        paramURL = t.a(ax.a, paramURL.toString());
        ((HttpsURLConnection)paramURL.a()).setInstanceFollowRedirects(false);
        paramURL.b();
        return true;
      }
      return false;
    }
    catch (Exception paramURL)
    {
      com.crashlytics.android.internal.v.a().b().a("Crashlytics", "Could not verify SSL pinning", paramURL);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.Crashlytics
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */