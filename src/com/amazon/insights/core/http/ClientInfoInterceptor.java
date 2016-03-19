package com.amazon.insights.core.http;

import android.content.Context;

public final class ClientInfoInterceptor
  implements HttpClient.Interceptor
{
  static final String CLIENT_INFO_HEADER_NAME = "x-amzn-ClientInfo";
  private Context context;
  
  public ClientInfoInterceptor(Context paramContext)
  {
    setContext(paramContext);
  }
  
  /* Error */
  private ClientInfoInterceptor.ClientInfo getClientInfo()
  {
    // Byte code:
    //   0: new 27	com/amazon/insights/core/http/ClientInfoInterceptor$ClientInfo
    //   3: dup
    //   4: invokespecial 28	com/amazon/insights/core/http/ClientInfoInterceptor$ClientInfo:<init>	()V
    //   7: astore_1
    //   8: aload_1
    //   9: ldc 30
    //   11: invokevirtual 34	com/amazon/insights/core/http/ClientInfoInterceptor$ClientInfo:setOS	(Ljava/lang/String;)V
    //   14: aload_1
    //   15: getstatic 39	android/os/Build$VERSION:RELEASE	Ljava/lang/String;
    //   18: invokevirtual 42	com/amazon/insights/core/http/ClientInfoInterceptor$ClientInfo:setOSVersion	(Ljava/lang/String;)V
    //   21: aload_1
    //   22: getstatic 47	android/os/Build:MODEL	Ljava/lang/String;
    //   25: invokevirtual 50	com/amazon/insights/core/http/ClientInfoInterceptor$ClientInfo:setModel	(Ljava/lang/String;)V
    //   28: aload_1
    //   29: getstatic 53	android/os/Build:MANUFACTURER	Ljava/lang/String;
    //   32: invokevirtual 56	com/amazon/insights/core/http/ClientInfoInterceptor$ClientInfo:setManufacturer	(Ljava/lang/String;)V
    //   35: aload_0
    //   36: invokevirtual 60	com/amazon/insights/core/http/ClientInfoInterceptor:getContext	()Landroid/content/Context;
    //   39: ldc 62
    //   41: invokevirtual 68	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   44: checkcast 70	android/telephony/TelephonyManager
    //   47: astore_2
    //   48: aload_2
    //   49: invokevirtual 74	android/telephony/TelephonyManager:getNetworkOperatorName	()Ljava/lang/String;
    //   52: ifnull +67 -> 119
    //   55: aload_2
    //   56: invokevirtual 74	android/telephony/TelephonyManager:getNetworkOperatorName	()Ljava/lang/String;
    //   59: ldc 76
    //   61: invokevirtual 82	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   64: ifne +55 -> 119
    //   67: aload_1
    //   68: aload_2
    //   69: invokevirtual 74	android/telephony/TelephonyManager:getNetworkOperatorName	()Ljava/lang/String;
    //   72: invokevirtual 85	com/amazon/insights/core/http/ClientInfoInterceptor$ClientInfo:setCarrier	(Ljava/lang/String;)V
    //   75: aload_0
    //   76: invokevirtual 60	com/amazon/insights/core/http/ClientInfoInterceptor:getContext	()Landroid/content/Context;
    //   79: ldc 87
    //   81: invokevirtual 68	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   84: checkcast 89	android/net/ConnectivityManager
    //   87: invokevirtual 93	android/net/ConnectivityManager:getActiveNetworkInfo	()Landroid/net/NetworkInfo;
    //   90: astore_2
    //   91: aload_2
    //   92: ifnull +46 -> 138
    //   95: aload_2
    //   96: invokevirtual 99	android/net/NetworkInfo:isConnected	()Z
    //   99: ifeq +39 -> 138
    //   102: aload_2
    //   103: invokevirtual 102	android/net/NetworkInfo:isAvailable	()Z
    //   106: ifeq +32 -> 138
    //   109: aload_1
    //   110: aload_2
    //   111: invokevirtual 105	android/net/NetworkInfo:getTypeName	()Ljava/lang/String;
    //   114: invokevirtual 108	com/amazon/insights/core/http/ClientInfoInterceptor$ClientInfo:setNetworkType	(Ljava/lang/String;)V
    //   117: aload_1
    //   118: areturn
    //   119: aload_1
    //   120: ldc 110
    //   122: invokevirtual 85	com/amazon/insights/core/http/ClientInfoInterceptor$ClientInfo:setCarrier	(Ljava/lang/String;)V
    //   125: goto -50 -> 75
    //   128: astore_2
    //   129: aload_1
    //   130: ldc 110
    //   132: invokevirtual 85	com/amazon/insights/core/http/ClientInfoInterceptor$ClientInfo:setCarrier	(Ljava/lang/String;)V
    //   135: goto -60 -> 75
    //   138: aload_1
    //   139: ldc 110
    //   141: invokevirtual 108	com/amazon/insights/core/http/ClientInfoInterceptor$ClientInfo:setNetworkType	(Ljava/lang/String;)V
    //   144: aload_1
    //   145: areturn
    //   146: astore_2
    //   147: aload_1
    //   148: ldc 110
    //   150: invokevirtual 108	com/amazon/insights/core/http/ClientInfoInterceptor$ClientInfo:setNetworkType	(Ljava/lang/String;)V
    //   153: aload_1
    //   154: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	155	0	this	ClientInfoInterceptor
    //   7	147	1	localClientInfo	ClientInfoInterceptor.ClientInfo
    //   47	64	2	localObject	Object
    //   128	1	2	localException1	Exception
    //   146	1	2	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   35	75	128	java/lang/Exception
    //   119	125	128	java/lang/Exception
    //   75	91	146	java/lang/Exception
    //   95	117	146	java/lang/Exception
    //   138	144	146	java/lang/Exception
  }
  
  public void after(HttpClient.Response paramResponse) {}
  
  public void before(HttpClient.Request paramRequest)
  {
    if (paramRequest != null) {
      paramRequest.addHeader("x-amzn-ClientInfo", getClientInfo().toString());
    }
  }
  
  Context getContext()
  {
    return context;
  }
  
  void setContext(Context paramContext)
  {
    context = paramContext;
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.core.http.ClientInfoInterceptor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */