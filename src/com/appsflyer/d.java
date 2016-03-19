package com.appsflyer;

import android.content.Context;
import java.util.concurrent.ExecutorService;

class d
  implements Runnable
{
  private Context a;
  private String b;
  private String c;
  private String d;
  private String e;
  private ExecutorService f;
  
  private d(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, ExecutorService paramExecutorService)
  {
    a = paramContext;
    b = paramString1;
    c = paramString2;
    d = paramString3;
    e = paramString4;
    f = paramExecutorService;
  }
  
  public void run()
  {
    AppsFlyerLib.a(a, b, c, d, e);
    f.shutdown();
  }
}

/* Location:
 * Qualified Name:     com.appsflyer.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */