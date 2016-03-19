package com.crashlytics.android.internal;

final class Q
  implements Runnable
{
  Q(O paramO, V paramV, boolean paramBoolean) {}
  
  public final void run()
  {
    try
    {
      c.a.a(a);
      if (b) {
        c.a.d();
      }
      return;
    }
    catch (Exception localException)
    {
      ab.d("Crashlytics failed to record session event.");
    }
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.internal.Q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */