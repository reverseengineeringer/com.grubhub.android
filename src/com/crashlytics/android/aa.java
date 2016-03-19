package com.crashlytics.android;

import com.crashlytics.android.internal.q;
import com.crashlytics.android.internal.r;
import com.crashlytics.android.internal.v;
import java.io.File;
import java.io.FilenameFilter;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

final class aa
{
  static final Map<String, String> a = Collections.singletonMap("X-CRASHLYTICS-INVALID-SESSION", "1");
  private static final FilenameFilter b = new ab();
  private static final short[] c = { 10, 20, 30, 60, 120, 300 };
  private final Object d = new Object();
  private final V e;
  private Thread f;
  
  public aa(V paramV)
  {
    if (paramV == null) {
      throw new IllegalArgumentException("createReportCall must not be null.");
    }
    e = paramV;
  }
  
  final List<Z> a()
  {
    v.a().b().a("Crashlytics", "Checking for crash reports...");
    synchronized (d)
    {
      File[] arrayOfFile = v.a().h().listFiles(b);
      ??? = new LinkedList();
      int j = arrayOfFile.length;
      int i = 0;
      if (i < j)
      {
        File localFile = arrayOfFile[i];
        v.a().b().a("Crashlytics", "Found crash report " + localFile.getPath());
        ((List)???).add(new Z(localFile));
        i += 1;
      }
    }
    return (List<Z>)???;
  }
  
  public final void a(float paramFloat)
  {
    try
    {
      if (f == null)
      {
        f = new Thread(new ac(this, paramFloat), "Crashlytics Report Uploader");
        f.start();
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  final boolean a(Z paramZ)
  {
    boolean bool2 = false;
    synchronized (d)
    {
      try
      {
        localObject1 = new U(r.a(v.a().getContext(), v.a().f()), paramZ);
        boolean bool3 = e.a((U)localObject1);
        q localq = v.a().b();
        StringBuilder localStringBuilder = new StringBuilder("Crashlytics report upload ");
        if (!bool3) {
          break label122;
        }
        localObject1 = "complete: ";
        localq.b("Crashlytics", (String)localObject1 + paramZ.b());
        bool1 = bool2;
        if (bool3)
        {
          paramZ.a();
          bool1 = true;
        }
      }
      catch (Exception localException)
      {
        for (;;)
        {
          Object localObject1;
          label122:
          v.a().b().a("Crashlytics", "Error occurred sending report " + paramZ, localException);
          boolean bool1 = bool2;
        }
      }
      return bool1;
      localObject1 = "FAILED: ";
    }
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */