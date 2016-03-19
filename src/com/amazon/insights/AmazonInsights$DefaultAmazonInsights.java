package com.amazon.insights;

import com.amazon.insights.core.InsightsContext;
import com.amazon.insights.core.crash.CrashReporter;
import com.amazon.insights.event.InternalEventClient;
import com.amazon.insights.session.InternalSessionClient;

final class AmazonInsights$DefaultAmazonInsights
  extends AmazonInsights
{
  private final ABTestClient abClient;
  private final InsightsContext context;
  private final CrashReporter crashReporter;
  private final InternalEventClient eventClient;
  private final InternalSessionClient sessionClient;
  
  /* Error */
  AmazonInsights$DefaultAmazonInsights(InsightsContext paramInsightsContext, InsightsOptions paramInsightsOptions, InsightsCallback<AmazonInsights> paramInsightsCallback)
    throws com.amazon.insights.impl.InitializationException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 23	com/amazon/insights/AmazonInsights:<init>	()V
    //   4: aload_1
    //   5: ldc 25
    //   7: invokestatic 31	com/amazon/insights/core/util/Preconditions:checkNotNull	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   10: pop
    //   11: invokestatic 36	com/amazon/insights/core/log/Logger:tryInitialize	()V
    //   14: aload_0
    //   15: new 38	com/amazon/insights/core/crash/CrashReporter
    //   18: dup
    //   19: ldc 4
    //   21: invokespecial 41	com/amazon/insights/core/crash/CrashReporter:<init>	(Ljava/lang/Class;)V
    //   24: putfield 43	com/amazon/insights/AmazonInsights$DefaultAmazonInsights:crashReporter	Lcom/amazon/insights/core/crash/CrashReporter;
    //   27: aload_1
    //   28: invokestatic 49	com/amazon/insights/core/crash/ers/ERSClient:newInstance	(Lcom/amazon/insights/core/InsightsContext;)Lcom/amazon/insights/core/crash/ers/ERSClient;
    //   31: astore 4
    //   33: aload_0
    //   34: getfield 43	com/amazon/insights/AmazonInsights$DefaultAmazonInsights:crashReporter	Lcom/amazon/insights/core/crash/CrashReporter;
    //   37: new 51	com/amazon/insights/core/crash/ers/ERSCrashAppender
    //   40: dup
    //   41: aload_1
    //   42: aload 4
    //   44: invokespecial 54	com/amazon/insights/core/crash/ers/ERSCrashAppender:<init>	(Lcom/amazon/insights/core/InsightsContext;Lcom/amazon/insights/core/crash/ers/ERSClient;)V
    //   47: invokevirtual 58	com/amazon/insights/core/crash/CrashReporter:attachAppender	(Lcom/amazon/insights/core/crash/CrashAppender;)V
    //   50: invokestatic 62	com/amazon/insights/AmazonInsights:access$100	()Lcom/amazon/insights/validate/EncodingValidator;
    //   53: invokevirtual 67	com/amazon/insights/validate/EncodingValidator:validate	()V
    //   56: invokestatic 71	com/amazon/insights/AmazonInsights:access$200	()Lcom/amazon/insights/validate/SHA256Validator;
    //   59: invokevirtual 74	com/amazon/insights/validate/SHA256Validator:validate	()V
    //   62: invokestatic 78	com/amazon/insights/AmazonInsights:access$300	()Lcom/amazon/insights/validate/EncryptionValidator;
    //   65: invokevirtual 81	com/amazon/insights/validate/EncryptionValidator:validate	()V
    //   68: invokestatic 85	com/amazon/insights/AmazonInsights:access$400	()Lcom/amazon/insights/validate/FileManagerValidator;
    //   71: aload_1
    //   72: invokevirtual 90	com/amazon/insights/validate/FileManagerValidator:validate	(Lcom/amazon/insights/core/InsightsContext;)V
    //   75: aload_0
    //   76: aload_1
    //   77: putfield 92	com/amazon/insights/AmazonInsights$DefaultAmazonInsights:context	Lcom/amazon/insights/core/InsightsContext;
    //   80: aload_2
    //   81: ifnull +140 -> 221
    //   84: aload_0
    //   85: aload_1
    //   86: aload_2
    //   87: invokeinterface 98 1 0
    //   92: invokestatic 103	com/amazon/insights/event/DefaultEventClient:newInstance	(Lcom/amazon/insights/core/InsightsContext;Z)Lcom/amazon/insights/event/DefaultEventClient;
    //   95: putfield 105	com/amazon/insights/AmazonInsights$DefaultAmazonInsights:eventClient	Lcom/amazon/insights/event/InternalEventClient;
    //   98: aload_0
    //   99: aload_1
    //   100: aload_0
    //   101: getfield 105	com/amazon/insights/AmazonInsights$DefaultAmazonInsights:eventClient	Lcom/amazon/insights/event/InternalEventClient;
    //   104: invokestatic 110	com/amazon/insights/session/client/DefaultSessionClient:newInstance	(Lcom/amazon/insights/core/InsightsContext;Lcom/amazon/insights/event/InternalEventClient;)Lcom/amazon/insights/session/client/DefaultSessionClient;
    //   107: putfield 112	com/amazon/insights/AmazonInsights$DefaultAmazonInsights:sessionClient	Lcom/amazon/insights/session/InternalSessionClient;
    //   110: aload_1
    //   111: invokeinterface 118 1 0
    //   116: new 120	com/amazon/insights/core/http/RequestTimingInterceptor
    //   119: dup
    //   120: aload_1
    //   121: invokeinterface 124 1 0
    //   126: invokeinterface 130 1 0
    //   131: aload_0
    //   132: getfield 105	com/amazon/insights/AmazonInsights$DefaultAmazonInsights:eventClient	Lcom/amazon/insights/event/InternalEventClient;
    //   135: invokespecial 133	com/amazon/insights/core/http/RequestTimingInterceptor:<init>	(Lcom/amazon/insights/core/system/Connectivity;Lcom/amazon/insights/event/InternalEventClient;)V
    //   138: invokeinterface 139 2 0
    //   143: aload_0
    //   144: aload_1
    //   145: aload_0
    //   146: getfield 105	com/amazon/insights/AmazonInsights$DefaultAmazonInsights:eventClient	Lcom/amazon/insights/event/InternalEventClient;
    //   149: invokestatic 144	com/amazon/insights/abtest/DefaultABTestClient:newInstance	(Lcom/amazon/insights/core/InsightsContext;Lcom/amazon/insights/event/InternalEventClient;)Lcom/amazon/insights/abtest/DefaultABTestClient;
    //   152: putfield 146	com/amazon/insights/AmazonInsights$DefaultAmazonInsights:abClient	Lcom/amazon/insights/ABTestClient;
    //   155: aload_3
    //   156: ifnull +8 -> 164
    //   159: aload_3
    //   160: aload_0
    //   161: invokevirtual 152	com/amazon/insights/InsightsCallback:onComplete	(Ljava/lang/Object;)V
    //   164: aload_0
    //   165: getfield 112	com/amazon/insights/AmazonInsights$DefaultAmazonInsights:sessionClient	Lcom/amazon/insights/session/InternalSessionClient;
    //   168: invokeinterface 157 1 0
    //   173: aload_1
    //   174: invokeinterface 160 1 0
    //   179: invokestatic 164	com/amazon/insights/AmazonInsights:access$000	()Lcom/amazon/insights/core/log/Logger;
    //   182: ldc -90
    //   184: iconst_1
    //   185: anewarray 168	java/lang/Object
    //   188: dup
    //   189: iconst_0
    //   190: ldc -86
    //   192: aastore
    //   193: invokestatic 176	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   196: invokevirtual 180	com/amazon/insights/core/log/Logger:devi	(Ljava/lang/String;)V
    //   199: return
    //   200: astore_1
    //   201: invokestatic 164	com/amazon/insights/AmazonInsights:access$000	()Lcom/amazon/insights/core/log/Logger;
    //   204: ldc -74
    //   206: aload_1
    //   207: invokevirtual 186	com/amazon/insights/core/log/Logger:deve	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   210: new 18	com/amazon/insights/impl/InitializationException
    //   213: dup
    //   214: ldc -74
    //   216: aload_1
    //   217: invokespecial 188	com/amazon/insights/impl/InitializationException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   220: athrow
    //   221: aload_0
    //   222: aload_1
    //   223: invokestatic 192	com/amazon/insights/AmazonInsights$DefaultAmazonInsights:newDefaultOptions	()Lcom/amazon/insights/InsightsOptions;
    //   226: invokeinterface 98 1 0
    //   231: invokestatic 103	com/amazon/insights/event/DefaultEventClient:newInstance	(Lcom/amazon/insights/core/InsightsContext;Z)Lcom/amazon/insights/event/DefaultEventClient;
    //   234: putfield 105	com/amazon/insights/AmazonInsights$DefaultAmazonInsights:eventClient	Lcom/amazon/insights/event/InternalEventClient;
    //   237: goto -139 -> 98
    //   240: astore_1
    //   241: aload_0
    //   242: getfield 43	com/amazon/insights/AmazonInsights$DefaultAmazonInsights:crashReporter	Lcom/amazon/insights/core/crash/CrashReporter;
    //   245: ldc -62
    //   247: aload_1
    //   248: invokevirtual 197	com/amazon/insights/core/crash/CrashReporter:report	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   251: invokestatic 164	com/amazon/insights/AmazonInsights:access$000	()Lcom/amazon/insights/core/log/Logger;
    //   254: ldc -57
    //   256: aload_1
    //   257: invokevirtual 186	com/amazon/insights/core/log/Logger:deve	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   260: new 18	com/amazon/insights/impl/InitializationException
    //   263: dup
    //   264: ldc -55
    //   266: aload_1
    //   267: invokespecial 188	com/amazon/insights/impl/InitializationException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   270: athrow
    //   271: astore_2
    //   272: invokestatic 164	com/amazon/insights/AmazonInsights:access$000	()Lcom/amazon/insights/core/log/Logger;
    //   275: ldc -53
    //   277: aload_2
    //   278: invokevirtual 186	com/amazon/insights/core/log/Logger:deve	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   281: goto -30 -> 251
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	284	0	this	DefaultAmazonInsights
    //   0	284	1	paramInsightsContext	InsightsContext
    //   0	284	2	paramInsightsOptions	InsightsOptions
    //   0	284	3	paramInsightsCallback	InsightsCallback<AmazonInsights>
    //   31	12	4	localERSClient	com.amazon.insights.core.crash.ers.ERSClient
    // Exception table:
    //   from	to	target	type
    //   11	50	200	java/lang/RuntimeException
    //   50	80	240	java/lang/RuntimeException
    //   84	98	240	java/lang/RuntimeException
    //   98	155	240	java/lang/RuntimeException
    //   159	164	240	java/lang/RuntimeException
    //   164	199	240	java/lang/RuntimeException
    //   221	237	240	java/lang/RuntimeException
    //   241	251	271	java/lang/RuntimeException
  }
  
  public ABTestClient getABTestClient()
  {
    return abClient;
  }
  
  public EventClient getEventClient()
  {
    return eventClient;
  }
  
  public SessionClient getSessionClient()
  {
    return sessionClient;
  }
  
  public UserProfile getUserProfile()
  {
    return context.getUserProfile();
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.AmazonInsights.DefaultAmazonInsights
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */