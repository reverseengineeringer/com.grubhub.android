package com.appsflyer;

import android.content.Context;
import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;

class e
  extends b
{
  public e(Context paramContext, String paramString, ScheduledExecutorService paramScheduledExecutorService)
  {
    super(paramContext, paramString, paramScheduledExecutorService);
  }
  
  public String a()
  {
    return "https://api.appsflyer.com/install_data/v3/";
  }
  
  protected void a(String paramString)
  {
    AppsFlyerLib.b().a(paramString);
  }
  
  protected void a(Map<String, String> paramMap)
  {
    AppsFlyerLib.b().a(paramMap);
  }
}

/* Location:
 * Qualified Name:     com.appsflyer.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */