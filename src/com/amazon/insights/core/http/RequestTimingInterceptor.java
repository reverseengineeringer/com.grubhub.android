package com.amazon.insights.core.http;

import com.amazon.insights.core.log.Logger;
import com.amazon.insights.core.system.Connectivity;
import com.amazon.insights.core.util.DateUtil;
import com.amazon.insights.event.InternalEventClient;
import java.text.DateFormat;
import java.util.Date;

public class RequestTimingInterceptor
  implements HttpClient.Interceptor
{
  public static final String REQUESTATTEMPTS_HEADER = "x-amzn-RequestAttempts";
  public static final String REQUESTTIME_HEADER = "x-amzn-RequestTime";
  public static final String SERVERINFO_HEADER = "x-amzn-ServerInfo";
  private static final String TIMEZONE_FORMAT = "Z";
  private static final Logger logger = Logger.getLogger(RequestTimingInterceptor.class);
  private final Connectivity connectivity;
  private DateFormat df = DateUtil.createLocaleIndependentDateFormatter("Z");
  private final InternalEventClient eventClient;
  
  public RequestTimingInterceptor(Connectivity paramConnectivity, InternalEventClient paramInternalEventClient)
  {
    eventClient = paramInternalEventClient;
    connectivity = paramConnectivity;
  }
  
  private String getTimeZone()
  {
    try
    {
      String str = df.format(new Date());
      return str;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  private void recordRequestTimeEvent(HttpClient.Response paramResponse)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_3
    //   2: aload_1
    //   3: ifnonnull +4 -> 7
    //   6: return
    //   7: aload_1
    //   8: invokeinterface 77 1 0
    //   13: astore 9
    //   15: aload 9
    //   17: ifnull -11 -> 6
    //   20: aload 9
    //   22: invokeinterface 82 1 0
    //   27: astore 9
    //   29: aload_1
    //   30: ldc 13
    //   32: invokeinterface 86 2 0
    //   37: astore 11
    //   39: lconst_0
    //   40: lstore 7
    //   42: lload 7
    //   44: lstore 5
    //   46: aload 11
    //   48: ifnull +30 -> 78
    //   51: aload 11
    //   53: invokevirtual 91	java/lang/String:trim	()Ljava/lang/String;
    //   56: invokevirtual 95	java/lang/String:length	()I
    //   59: istore_2
    //   60: lload 7
    //   62: lstore 5
    //   64: iload_2
    //   65: ifle +13 -> 78
    //   68: aload 11
    //   70: invokevirtual 91	java/lang/String:trim	()Ljava/lang/String;
    //   73: invokestatic 101	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   76: lstore 5
    //   78: aload_1
    //   79: ldc 10
    //   81: invokeinterface 86 2 0
    //   86: astore 10
    //   88: iload_3
    //   89: istore_2
    //   90: aload 10
    //   92: ifnull +29 -> 121
    //   95: aload 10
    //   97: invokevirtual 91	java/lang/String:trim	()Ljava/lang/String;
    //   100: invokevirtual 95	java/lang/String:length	()I
    //   103: istore 4
    //   105: iload_3
    //   106: istore_2
    //   107: iload 4
    //   109: ifle +12 -> 121
    //   112: aload 10
    //   114: invokevirtual 91	java/lang/String:trim	()Ljava/lang/String;
    //   117: invokestatic 107	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   120: istore_2
    //   121: aload_1
    //   122: ldc 16
    //   124: invokeinterface 86 2 0
    //   129: astore 10
    //   131: aload 11
    //   133: invokestatic 113	com/amazon/insights/core/util/StringUtil:isNullOrEmpty	(Ljava/lang/String;)Z
    //   136: ifne -130 -> 6
    //   139: aload_0
    //   140: getfield 52	com/amazon/insights/core/http/RequestTimingInterceptor:eventClient	Lcom/amazon/insights/event/InternalEventClient;
    //   143: ifnull -137 -> 6
    //   146: aload_0
    //   147: getfield 52	com/amazon/insights/core/http/RequestTimingInterceptor:eventClient	Lcom/amazon/insights/event/InternalEventClient;
    //   150: ldc 115
    //   152: invokeinterface 121 2 0
    //   157: ldc 123
    //   159: aload 9
    //   161: invokeinterface 129 3 0
    //   166: ldc -125
    //   168: aload_1
    //   169: invokeinterface 134 1 0
    //   174: invokestatic 138	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   177: invokeinterface 129 3 0
    //   182: ldc -116
    //   184: aload_0
    //   185: invokespecial 142	com/amazon/insights/core/http/RequestTimingInterceptor:getTimeZone	()Ljava/lang/String;
    //   188: invokeinterface 129 3 0
    //   193: ldc -112
    //   195: iload_2
    //   196: invokestatic 148	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   199: invokeinterface 152 3 0
    //   204: ldc -102
    //   206: lload 5
    //   208: invokestatic 157	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   211: invokeinterface 152 3 0
    //   216: ldc -97
    //   218: aload_1
    //   219: invokeinterface 163 1 0
    //   224: invokestatic 157	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   227: invokeinterface 152 3 0
    //   232: ldc -91
    //   234: aload_1
    //   235: invokeinterface 168 1 0
    //   240: invokestatic 157	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   243: invokeinterface 152 3 0
    //   248: astore 11
    //   250: ldc -86
    //   252: astore 9
    //   254: aload 9
    //   256: astore_1
    //   257: aload_0
    //   258: getfield 54	com/amazon/insights/core/http/RequestTimingInterceptor:connectivity	Lcom/amazon/insights/core/system/Connectivity;
    //   261: ifnull +18 -> 279
    //   264: aload_0
    //   265: getfield 54	com/amazon/insights/core/http/RequestTimingInterceptor:connectivity	Lcom/amazon/insights/core/system/Connectivity;
    //   268: invokeinterface 176 1 0
    //   273: ifeq +58 -> 331
    //   276: ldc -78
    //   278: astore_1
    //   279: aload 11
    //   281: ldc -76
    //   283: aload_1
    //   284: invokeinterface 129 3 0
    //   289: pop
    //   290: aload 10
    //   292: ifnull +15 -> 307
    //   295: aload 11
    //   297: ldc -74
    //   299: aload 10
    //   301: invokeinterface 129 3 0
    //   306: pop
    //   307: aload_0
    //   308: getfield 52	com/amazon/insights/core/http/RequestTimingInterceptor:eventClient	Lcom/amazon/insights/event/InternalEventClient;
    //   311: aload 11
    //   313: iconst_0
    //   314: invokeinterface 186 3 0
    //   319: return
    //   320: astore_1
    //   321: getstatic 37	com/amazon/insights/core/http/RequestTimingInterceptor:logger	Lcom/amazon/insights/core/log/Logger;
    //   324: ldc -68
    //   326: aload_1
    //   327: invokevirtual 192	com/amazon/insights/core/log/Logger:w	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   330: return
    //   331: aload_0
    //   332: getfield 54	com/amazon/insights/core/http/RequestTimingInterceptor:connectivity	Lcom/amazon/insights/core/system/Connectivity;
    //   335: invokeinterface 195 1 0
    //   340: ifeq +9 -> 349
    //   343: ldc -59
    //   345: astore_1
    //   346: goto -67 -> 279
    //   349: aload 9
    //   351: astore_1
    //   352: aload_0
    //   353: getfield 54	com/amazon/insights/core/http/RequestTimingInterceptor:connectivity	Lcom/amazon/insights/core/system/Connectivity;
    //   356: invokeinterface 200 1 0
    //   361: ifeq -82 -> 279
    //   364: ldc -54
    //   366: astore_1
    //   367: goto -88 -> 279
    //   370: astore 10
    //   372: iload_3
    //   373: istore_2
    //   374: goto -253 -> 121
    //   377: astore 10
    //   379: lload 7
    //   381: lstore 5
    //   383: goto -305 -> 78
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	386	0	this	RequestTimingInterceptor
    //   0	386	1	paramResponse	HttpClient.Response
    //   59	315	2	i	int
    //   1	372	3	j	int
    //   103	5	4	k	int
    //   44	338	5	l1	long
    //   40	340	7	l2	long
    //   13	337	9	localObject1	Object
    //   86	214	10	str	String
    //   370	1	10	localNumberFormatException1	NumberFormatException
    //   377	1	10	localNumberFormatException2	NumberFormatException
    //   37	275	11	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   7	15	320	java/lang/Exception
    //   20	39	320	java/lang/Exception
    //   51	60	320	java/lang/Exception
    //   68	78	320	java/lang/Exception
    //   78	88	320	java/lang/Exception
    //   95	105	320	java/lang/Exception
    //   112	121	320	java/lang/Exception
    //   121	250	320	java/lang/Exception
    //   257	276	320	java/lang/Exception
    //   279	290	320	java/lang/Exception
    //   295	307	320	java/lang/Exception
    //   307	319	320	java/lang/Exception
    //   331	343	320	java/lang/Exception
    //   352	364	320	java/lang/Exception
    //   112	121	370	java/lang/NumberFormatException
    //   68	78	377	java/lang/NumberFormatException
  }
  
  public void after(HttpClient.Response paramResponse)
  {
    recordRequestTimeEvent(paramResponse);
  }
  
  public void before(HttpClient.Request paramRequest) {}
}

/* Location:
 * Qualified Name:     com.amazon.insights.core.http.RequestTimingInterceptor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */