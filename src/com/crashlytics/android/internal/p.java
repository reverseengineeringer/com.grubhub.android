package com.crashlytics.android.internal;

import java.util.Collections;
import java.util.Map;

final class P
  implements Runnable
{
  P(O paramO, String paramString) {}
  
  public final void run()
  {
    try
    {
      U localU = b.a;
      String str1 = O.a(b);
      String str2 = O.b(b);
      String str3 = O.c(b);
      String str4 = O.d(b);
      String str5 = O.e(b);
      String str6 = O.f(b);
      String str7 = O.g(b);
      String str8 = O.h(b);
      Map localMap = Collections.singletonMap("sessionId", a);
      localU.a(V.a(str1, str2, str3, str4, str5, str6, str7, str8, W.i, localMap));
      return;
    }
    catch (Exception localException)
    {
      ab.d("Crashlytics failed to record crash event");
    }
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.internal.P
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */