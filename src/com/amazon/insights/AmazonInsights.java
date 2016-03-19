package com.amazon.insights;

import android.content.Context;
import com.amazon.insights.core.DefaultInsightsContext;
import com.amazon.insights.core.InsightsContext;
import com.amazon.insights.core.log.Logger;
import com.amazon.insights.core.util.Preconditions;
import com.amazon.insights.core.util.SDKInfo;
import com.amazon.insights.impl.DefaultInsightsCredentials;
import com.amazon.insights.impl.DefaultInsightsOptions;
import com.amazon.insights.impl.DisabledAmazonInsights;
import com.amazon.insights.validate.EncodingValidator;
import com.amazon.insights.validate.EncryptionValidator;
import com.amazon.insights.validate.FileManagerValidator;
import com.amazon.insights.validate.PermissionValidator;
import com.amazon.insights.validate.SHA256Validator;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public abstract class AmazonInsights
{
  private static final DisabledAmazonInsights DISABLED_AMAZON_INSIGHTS = new DisabledAmazonInsights();
  private static final String SDK_NAME = "AmazonInsightsSDK";
  private static final String SDK_VERSION = "2.1.26.0";
  private static final PermissionValidator accessNetworkStatePermissionValidator;
  private static final EncryptionValidator aesEncryptionValidator;
  private static final EncodingValidator encodingValidator;
  private static final FileManagerValidator fileManagerValidator;
  private static final Map<InsightsCredentials, AmazonInsights> instances;
  private static final PermissionValidator internetPermissionValidator;
  private static final Logger logger;
  private static final SDKInfo sdkInfo = new SDKInfo("AmazonInsightsSDK", "2.1.26.0");
  private static final SHA256Validator sha256Validator;
  
  static
  {
    logger = Logger.getLogger(AmazonInsights.class);
    instances = new ConcurrentHashMap();
    internetPermissionValidator = new PermissionValidator("android.permission.INTERNET");
    accessNetworkStatePermissionValidator = new PermissionValidator("android.permission.ACCESS_NETWORK_STATE");
    encodingValidator = new EncodingValidator("UTF-8");
    sha256Validator = new SHA256Validator();
    aesEncryptionValidator = new EncryptionValidator("ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEF", "AES");
    fileManagerValidator = new FileManagerValidator();
  }
  
  public static AmazonInsights getInstance(InsightsCredentials paramInsightsCredentials)
    throws IllegalArgumentException
  {
    try
    {
      if (instances.containsKey(paramInsightsCredentials))
      {
        paramInsightsCredentials = (AmazonInsights)instances.get(paramInsightsCredentials);
        return paramInsightsCredentials;
      }
      throw new IllegalArgumentException("There was not an AmazonInsights instance registered for the credentials provided. Make sure you call newInstance before trying to retrieve the instance via getInstance");
    }
    finally {}
  }
  
  static SDKInfo getSDKInfo()
  {
    return sdkInfo;
  }
  
  public static InsightsCredentials newCredentials(String paramString1, String paramString2)
  {
    Preconditions.checkNotNull(paramString1, "The application key provided must not be null");
    Preconditions.checkNotNull(paramString2, "The private key provided must not be null");
    return new DefaultInsightsCredentials(paramString1, paramString2);
  }
  
  public static InsightsOptions newDefaultOptions()
  {
    return new DefaultInsightsOptions(true, false);
  }
  
  static InsightsContext newInsightsContext(InsightsCredentials paramInsightsCredentials, Context paramContext)
  {
    return newInsightsContext(paramInsightsCredentials, paramContext, new HashMap());
  }
  
  static InsightsContext newInsightsContext(InsightsCredentials paramInsightsCredentials, Context paramContext, Map<String, String> paramMap)
  {
    return DefaultInsightsContext.newInstance(paramInsightsCredentials, paramContext, sdkInfo, true, paramMap);
  }
  
  public static AmazonInsights newInstance(InsightsCredentials paramInsightsCredentials, Context paramContext)
    throws NullPointerException
  {
    try
    {
      paramInsightsCredentials = newInstance(paramInsightsCredentials, paramContext, newDefaultOptions(), null);
      return paramInsightsCredentials;
    }
    finally
    {
      paramInsightsCredentials = finally;
      throw paramInsightsCredentials;
    }
  }
  
  public static AmazonInsights newInstance(InsightsCredentials paramInsightsCredentials, Context paramContext, InsightsCallback<AmazonInsights> paramInsightsCallback)
    throws NullPointerException
  {
    try
    {
      paramInsightsCredentials = newInstance(paramInsightsCredentials, paramContext, newDefaultOptions(), paramInsightsCallback);
      return paramInsightsCredentials;
    }
    finally
    {
      paramInsightsCredentials = finally;
      throw paramInsightsCredentials;
    }
  }
  
  public static AmazonInsights newInstance(InsightsCredentials paramInsightsCredentials, Context paramContext, InsightsOptions paramInsightsOptions)
    throws NullPointerException
  {
    try
    {
      paramInsightsCredentials = newInstance(paramInsightsCredentials, paramContext, paramInsightsOptions, new HashMap(), null);
      return paramInsightsCredentials;
    }
    finally
    {
      paramInsightsCredentials = finally;
      throw paramInsightsCredentials;
    }
  }
  
  public static AmazonInsights newInstance(InsightsCredentials paramInsightsCredentials, Context paramContext, InsightsOptions paramInsightsOptions, InsightsCallback<AmazonInsights> paramInsightsCallback)
    throws NullPointerException
  {
    try
    {
      paramInsightsCredentials = newInstance(paramInsightsCredentials, paramContext, paramInsightsOptions, new HashMap(), paramInsightsCallback);
      return paramInsightsCredentials;
    }
    finally
    {
      paramInsightsCredentials = finally;
      throw paramInsightsCredentials;
    }
  }
  
  /* Error */
  static AmazonInsights newInstance(InsightsCredentials paramInsightsCredentials, Context paramContext, InsightsOptions paramInsightsOptions, Map<String, String> paramMap, InsightsCallback<AmazonInsights> paramInsightsCallback)
    throws NullPointerException
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: aload_0
    //   4: ldc -68
    //   6: invokestatic 141	com/amazon/insights/core/util/Preconditions:checkNotNull	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   9: pop
    //   10: aload_1
    //   11: ldc -66
    //   13: invokestatic 141	com/amazon/insights/core/util/Preconditions:checkNotNull	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   16: pop
    //   17: aload_2
    //   18: ldc -64
    //   20: invokestatic 141	com/amazon/insights/core/util/Preconditions:checkNotNull	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   23: pop
    //   24: getstatic 55	com/amazon/insights/AmazonInsights:instances	Ljava/util/Map;
    //   27: aload_0
    //   28: invokeinterface 121 2 0
    //   33: ifeq +21 -> 54
    //   36: getstatic 55	com/amazon/insights/AmazonInsights:instances	Ljava/util/Map;
    //   39: aload_0
    //   40: invokeinterface 125 2 0
    //   45: checkcast 2	com/amazon/insights/AmazonInsights
    //   48: astore_0
    //   49: ldc 2
    //   51: monitorexit
    //   52: aload_0
    //   53: areturn
    //   54: invokestatic 195	com/amazon/insights/core/log/Logger:tryInitialize	()V
    //   57: getstatic 64	com/amazon/insights/AmazonInsights:internetPermissionValidator	Lcom/amazon/insights/validate/PermissionValidator;
    //   60: aload_1
    //   61: invokevirtual 199	com/amazon/insights/validate/PermissionValidator:validate	(Landroid/content/Context;)V
    //   64: getstatic 68	com/amazon/insights/AmazonInsights:accessNetworkStatePermissionValidator	Lcom/amazon/insights/validate/PermissionValidator;
    //   67: aload_1
    //   68: invokevirtual 199	com/amazon/insights/validate/PermissionValidator:validate	(Landroid/content/Context;)V
    //   71: aload_0
    //   72: aload_1
    //   73: getstatic 41	com/amazon/insights/AmazonInsights:sdkInfo	Lcom/amazon/insights/core/util/SDKInfo;
    //   76: aload_2
    //   77: invokeinterface 205 1 0
    //   82: aload_3
    //   83: invokestatic 167	com/amazon/insights/core/DefaultInsightsContext:newInstance	(Lcom/amazon/insights/InsightsCredentials;Landroid/content/Context;Lcom/amazon/insights/core/util/SDKInfo;ZLjava/util/Map;)Lcom/amazon/insights/core/InsightsContext;
    //   86: astore_0
    //   87: aload_0
    //   88: aload_2
    //   89: aload 4
    //   91: invokestatic 208	com/amazon/insights/AmazonInsights:newInstance	(Lcom/amazon/insights/core/InsightsContext;Lcom/amazon/insights/InsightsOptions;Lcom/amazon/insights/InsightsCallback;)Lcom/amazon/insights/AmazonInsights;
    //   94: astore_0
    //   95: goto -46 -> 49
    //   98: astore_0
    //   99: getstatic 49	com/amazon/insights/AmazonInsights:logger	Lcom/amazon/insights/core/log/Logger;
    //   102: ldc -46
    //   104: aload_0
    //   105: invokevirtual 214	com/amazon/insights/core/log/Logger:deve	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   108: new 96	com/amazon/insights/impl/DisabledAmazonInsights
    //   111: dup
    //   112: invokespecial 97	com/amazon/insights/impl/DisabledAmazonInsights:<init>	()V
    //   115: astore_0
    //   116: goto -67 -> 49
    //   119: astore_0
    //   120: ldc 2
    //   122: monitorexit
    //   123: aload_0
    //   124: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	125	0	paramInsightsCredentials	InsightsCredentials
    //   0	125	1	paramContext	Context
    //   0	125	2	paramInsightsOptions	InsightsOptions
    //   0	125	3	paramMap	Map<String, String>
    //   0	125	4	paramInsightsCallback	InsightsCallback<AmazonInsights>
    // Exception table:
    //   from	to	target	type
    //   54	87	98	java/lang/RuntimeException
    //   3	49	119	finally
    //   54	87	119	finally
    //   87	95	119	finally
    //   99	116	119	finally
  }
  
  static AmazonInsights newInstance(InsightsContext paramInsightsContext)
  {
    try
    {
      paramInsightsContext = newInstance(paramInsightsContext, newDefaultOptions());
      return paramInsightsContext;
    }
    finally
    {
      paramInsightsContext = finally;
      throw paramInsightsContext;
    }
  }
  
  static AmazonInsights newInstance(InsightsContext paramInsightsContext, InsightsOptions paramInsightsOptions)
  {
    try
    {
      paramInsightsContext = newInstance(paramInsightsContext, paramInsightsOptions, null);
      return paramInsightsContext;
    }
    finally
    {
      paramInsightsContext = finally;
      throw paramInsightsContext;
    }
  }
  
  /* Error */
  static AmazonInsights newInstance(InsightsContext paramInsightsContext, InsightsOptions paramInsightsOptions, InsightsCallback<AmazonInsights> paramInsightsCallback)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: aload_0
    //   4: ldc -33
    //   6: invokestatic 141	com/amazon/insights/core/util/Preconditions:checkNotNull	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   9: pop
    //   10: getstatic 55	com/amazon/insights/AmazonInsights:instances	Ljava/util/Map;
    //   13: aload_0
    //   14: invokeinterface 229 1 0
    //   19: invokeinterface 121 2 0
    //   24: ifeq +26 -> 50
    //   27: getstatic 55	com/amazon/insights/AmazonInsights:instances	Ljava/util/Map;
    //   30: aload_0
    //   31: invokeinterface 229 1 0
    //   36: invokeinterface 125 2 0
    //   41: checkcast 2	com/amazon/insights/AmazonInsights
    //   44: astore_1
    //   45: ldc 2
    //   47: monitorexit
    //   48: aload_1
    //   49: areturn
    //   50: new 231	com/amazon/insights/AmazonInsights$DefaultAmazonInsights
    //   53: dup
    //   54: aload_0
    //   55: aload_1
    //   56: aload_2
    //   57: invokespecial 234	com/amazon/insights/AmazonInsights$DefaultAmazonInsights:<init>	(Lcom/amazon/insights/core/InsightsContext;Lcom/amazon/insights/InsightsOptions;Lcom/amazon/insights/InsightsCallback;)V
    //   60: astore_1
    //   61: getstatic 55	com/amazon/insights/AmazonInsights:instances	Ljava/util/Map;
    //   64: aload_0
    //   65: invokeinterface 229 1 0
    //   70: aload_1
    //   71: invokeinterface 237 3 0
    //   76: pop
    //   77: goto -32 -> 45
    //   80: astore_0
    //   81: ldc 2
    //   83: monitorexit
    //   84: aload_0
    //   85: athrow
    //   86: astore_1
    //   87: getstatic 99	com/amazon/insights/AmazonInsights:DISABLED_AMAZON_INSIGHTS	Lcom/amazon/insights/impl/DisabledAmazonInsights;
    //   90: astore_1
    //   91: goto -30 -> 61
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	94	0	paramInsightsContext	InsightsContext
    //   0	94	1	paramInsightsOptions	InsightsOptions
    //   0	94	2	paramInsightsCallback	InsightsCallback<AmazonInsights>
    // Exception table:
    //   from	to	target	type
    //   3	45	80	finally
    //   50	61	80	finally
    //   61	77	80	finally
    //   87	91	80	finally
    //   50	61	86	com/amazon/insights/impl/InitializationException
  }
  
  public static InsightsOptions newOptions(boolean paramBoolean1, boolean paramBoolean2)
  {
    return new DefaultInsightsOptions(paramBoolean1, paramBoolean2);
  }
  
  public abstract ABTestClient getABTestClient();
  
  public abstract EventClient getEventClient();
  
  public abstract SessionClient getSessionClient();
  
  public abstract UserProfile getUserProfile();
}

/* Location:
 * Qualified Name:     com.amazon.insights.AmazonInsights
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */