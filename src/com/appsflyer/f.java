package com.appsflyer;

import android.content.Context;
import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;

class f
  extends b
{
  public f(Context paramContext, String paramString, ScheduledExecutorService paramScheduledExecutorService)
  {
    super(paramContext, paramString, paramScheduledExecutorService);
  }
  
  public String a()
  {
    return "https://sdk.appsflyer.com/reattr_data/";
  }
  
  protected void a(String paramString)
  {
    AppsFlyerLib.b().b(paramString);
  }
  
  protected void a(Map<String, String> paramMap)
  {
    AppsFlyerLib.b().b(paramMap);
  }
}

/* Location:
 * Qualified Name:     com.appsflyer.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */