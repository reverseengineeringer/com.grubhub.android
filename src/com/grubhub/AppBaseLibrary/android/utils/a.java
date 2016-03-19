package com.grubhub.AppBaseLibrary.android.utils;

import android.content.Context;
import android.content.res.Resources;
import com.amazon.insights.AmazonInsights;
import com.amazon.insights.InsightsCredentials;
import com.amazon.insights.InsightsOptions;
import com.grubhub.AppBaseLibrary.android.GHSApplication;

public class a
{
  private static boolean a = false;
  private static final InsightsOptions b = AmazonInsights.newOptions(true, true);
  private static final InsightsCredentials c = AmazonInsights.newCredentials(b(), c());
  
  /* Error */
  public static AmazonInsights a()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 14	com/grubhub/AppBaseLibrary/android/utils/a:a	Z
    //   6: ifne +28 -> 34
    //   9: iconst_1
    //   10: putstatic 14	com/grubhub/AppBaseLibrary/android/utils/a:a	Z
    //   13: getstatic 33	com/grubhub/AppBaseLibrary/android/utils/a:c	Lcom/amazon/insights/InsightsCredentials;
    //   16: invokestatic 40	com/grubhub/AppBaseLibrary/android/GHSApplication:a	()Lcom/grubhub/AppBaseLibrary/android/GHSApplication;
    //   19: invokevirtual 44	com/grubhub/AppBaseLibrary/android/GHSApplication:getApplicationContext	()Landroid/content/Context;
    //   22: getstatic 22	com/grubhub/AppBaseLibrary/android/utils/a:b	Lcom/amazon/insights/InsightsOptions;
    //   25: invokestatic 48	com/amazon/insights/AmazonInsights:newInstance	(Lcom/amazon/insights/InsightsCredentials;Landroid/content/Context;Lcom/amazon/insights/InsightsOptions;)Lcom/amazon/insights/AmazonInsights;
    //   28: astore_0
    //   29: ldc 2
    //   31: monitorexit
    //   32: aload_0
    //   33: areturn
    //   34: getstatic 33	com/grubhub/AppBaseLibrary/android/utils/a:c	Lcom/amazon/insights/InsightsCredentials;
    //   37: invokestatic 52	com/amazon/insights/AmazonInsights:getInstance	(Lcom/amazon/insights/InsightsCredentials;)Lcom/amazon/insights/AmazonInsights;
    //   40: astore_0
    //   41: goto -12 -> 29
    //   44: astore_0
    //   45: ldc 2
    //   47: monitorexit
    //   48: aload_0
    //   49: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   28	13	0	localAmazonInsights	AmazonInsights
    //   44	5	0	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   3	29	44	finally
    //   34	41	44	finally
  }
  
  private static String b()
  {
    return GHSApplication.a().getApplicationContext().getResources().getString(2131230923);
  }
  
  private static String c()
  {
    return GHSApplication.a().getApplicationContext().getResources().getString(2131230922);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.utils.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */