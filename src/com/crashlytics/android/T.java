package com.crashlytics.android;

import android.content.Context;
import com.crashlytics.android.internal.aa;
import com.crashlytics.android.internal.q;
import java.util.concurrent.CountDownLatch;

final class t
  extends aa
{
  t(Crashlytics paramCrashlytics, Context paramContext, float paramFloat, CountDownLatch paramCountDownLatch) {}
  
  public final void a()
  {
    try
    {
      if (Crashlytics.a(d, a, b)) {
        Crashlytics.a(d).e();
      }
      return;
    }
    catch (Exception localException)
    {
      com.crashlytics.android.internal.v.a().b().a("Crashlytics", "Problem encountered during Crashlytics initialization.", localException);
      return;
    }
    finally
    {
      c.countDown();
    }
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */