package com.amazon.insights.delivery;

import com.amazon.insights.InsightsCredentials;
import com.amazon.insights.core.InsightsContext;
import com.amazon.insights.core.configuration.Configuration;
import com.amazon.insights.core.http.HttpClient;
import com.amazon.insights.core.idresolver.Id;
import com.amazon.insights.core.log.Logger;

public class ERSRequestBuilder
{
  static final String CONTENT_ENCODING_KEY = "Content-Encoding";
  static final String DEFAULT_ENDPOINT = "https://applab-sdk.amazon.com/1.0";
  static final String ENDPOINT_PATH = "%s/applications/%s/events";
  static final String KEY_ENDPOINT = "eventRecorderEndpoint";
  static final String UNIQUE_ID_HEADER_KEY = "x-amzn-UniqueId";
  private static final Logger logger = Logger.getLogger(ERSRequestBuilder.class);
  private final String applicationKey;
  private final Configuration configuration;
  private final HttpClient httpClient;
  private final String uniqueId;
  
  public ERSRequestBuilder(HttpClient paramHttpClient, String paramString1, String paramString2, Configuration paramConfiguration)
  {
    httpClient = paramHttpClient;
    uniqueId = paramString1;
    applicationKey = paramString2;
    configuration = paramConfiguration;
  }
  
  private String getEndpointUrl()
  {
    return configuration.optString("eventRecorderEndpoint", "https://applab-sdk.amazon.com/1.0");
  }
  
  public static ERSRequestBuilder newBuilder(InsightsContext paramInsightsContext)
  {
    return new ERSRequestBuilder(paramInsightsContext.getHttpClient(), paramInsightsContext.getUniqueId().getValue(), paramInsightsContext.getCredentials().getApplicationKey(), paramInsightsContext.getConfiguration());
  }
  
  /* Error */
  public com.amazon.insights.core.http.HttpClient.Request createHttpRequest(org.json.JSONArray paramJSONArray)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 45	com/amazon/insights/delivery/ERSRequestBuilder:httpClient	Lcom/amazon/insights/core/http/HttpClient;
    //   4: invokeinterface 103 1 0
    //   9: ldc 14
    //   11: iconst_2
    //   12: anewarray 4	java/lang/Object
    //   15: dup
    //   16: iconst_0
    //   17: aload_0
    //   18: invokespecial 105	com/amazon/insights/delivery/ERSRequestBuilder:getEndpointUrl	()Ljava/lang/String;
    //   21: aastore
    //   22: dup
    //   23: iconst_1
    //   24: aload_0
    //   25: getfield 49	com/amazon/insights/delivery/ERSRequestBuilder:applicationKey	Ljava/lang/String;
    //   28: aastore
    //   29: invokestatic 111	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   32: invokeinterface 117 2 0
    //   37: ldc 20
    //   39: aload_0
    //   40: getfield 47	com/amazon/insights/delivery/ERSRequestBuilder:uniqueId	Ljava/lang/String;
    //   43: invokeinterface 121 3 0
    //   48: getstatic 127	com/amazon/insights/core/http/HttpClient$HttpMethod:POST	Lcom/amazon/insights/core/http/HttpClient$HttpMethod;
    //   51: invokeinterface 131 2 0
    //   56: astore 7
    //   58: aload_1
    //   59: invokevirtual 136	org/json/JSONArray:toString	()Ljava/lang/String;
    //   62: astore_1
    //   63: aload_1
    //   64: ifnonnull +5 -> 69
    //   67: aconst_null
    //   68: areturn
    //   69: new 138	java/io/ByteArrayOutputStream
    //   72: dup
    //   73: invokespecial 139	java/io/ByteArrayOutputStream:<init>	()V
    //   76: astore_2
    //   77: new 141	java/util/zip/GZIPOutputStream
    //   80: dup
    //   81: aload_2
    //   82: invokespecial 144	java/util/zip/GZIPOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   85: astore 6
    //   87: aload 6
    //   89: astore 4
    //   91: aload_2
    //   92: astore_3
    //   93: aload 6
    //   95: aload_1
    //   96: ldc -110
    //   98: invokevirtual 150	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   101: invokevirtual 154	java/util/zip/GZIPOutputStream:write	([B)V
    //   104: aload 6
    //   106: astore 4
    //   108: aload_2
    //   109: astore_3
    //   110: aload 6
    //   112: invokevirtual 157	java/util/zip/GZIPOutputStream:close	()V
    //   115: aload 6
    //   117: astore 4
    //   119: aload_2
    //   120: astore_3
    //   121: aload_2
    //   122: invokevirtual 161	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   125: astore_1
    //   126: aload_2
    //   127: ifnull +7 -> 134
    //   130: aload_2
    //   131: invokevirtual 162	java/io/ByteArrayOutputStream:close	()V
    //   134: aload 6
    //   136: ifnull +8 -> 144
    //   139: aload 6
    //   141: invokevirtual 157	java/util/zip/GZIPOutputStream:close	()V
    //   144: aload_1
    //   145: ifnull -78 -> 67
    //   148: aload 7
    //   150: aload_1
    //   151: invokeinterface 166 2 0
    //   156: pop
    //   157: aload 7
    //   159: ldc 8
    //   161: ldc -88
    //   163: invokeinterface 121 3 0
    //   168: pop
    //   169: aload 7
    //   171: areturn
    //   172: astore_1
    //   173: aload 6
    //   175: astore 4
    //   177: aload_2
    //   178: astore_3
    //   179: getstatic 38	com/amazon/insights/delivery/ERSRequestBuilder:logger	Lcom/amazon/insights/core/log/Logger;
    //   182: ldc -86
    //   184: aload_1
    //   185: invokevirtual 174	com/amazon/insights/core/log/Logger:e	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   188: aconst_null
    //   189: astore_1
    //   190: goto -64 -> 126
    //   193: astore_2
    //   194: getstatic 38	com/amazon/insights/delivery/ERSRequestBuilder:logger	Lcom/amazon/insights/core/log/Logger;
    //   197: ldc -80
    //   199: aload_2
    //   200: invokevirtual 174	com/amazon/insights/core/log/Logger:e	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   203: goto -59 -> 144
    //   206: astore 5
    //   208: aconst_null
    //   209: astore_1
    //   210: aconst_null
    //   211: astore_2
    //   212: aload_1
    //   213: astore 4
    //   215: aload_2
    //   216: astore_3
    //   217: getstatic 38	com/amazon/insights/delivery/ERSRequestBuilder:logger	Lcom/amazon/insights/core/log/Logger;
    //   220: ldc -78
    //   222: aload 5
    //   224: invokevirtual 174	com/amazon/insights/core/log/Logger:e	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   227: aload_2
    //   228: ifnull +7 -> 235
    //   231: aload_2
    //   232: invokevirtual 162	java/io/ByteArrayOutputStream:close	()V
    //   235: aload_1
    //   236: ifnull +7 -> 243
    //   239: aload_1
    //   240: invokevirtual 157	java/util/zip/GZIPOutputStream:close	()V
    //   243: aconst_null
    //   244: astore_1
    //   245: goto -101 -> 144
    //   248: astore_1
    //   249: getstatic 38	com/amazon/insights/delivery/ERSRequestBuilder:logger	Lcom/amazon/insights/core/log/Logger;
    //   252: ldc -80
    //   254: aload_1
    //   255: invokevirtual 174	com/amazon/insights/core/log/Logger:e	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   258: goto -15 -> 243
    //   261: astore_1
    //   262: aconst_null
    //   263: astore 4
    //   265: aconst_null
    //   266: astore_2
    //   267: aload_2
    //   268: ifnull +7 -> 275
    //   271: aload_2
    //   272: invokevirtual 162	java/io/ByteArrayOutputStream:close	()V
    //   275: aload 4
    //   277: ifnull +8 -> 285
    //   280: aload 4
    //   282: invokevirtual 157	java/util/zip/GZIPOutputStream:close	()V
    //   285: aload_1
    //   286: athrow
    //   287: astore_2
    //   288: getstatic 38	com/amazon/insights/delivery/ERSRequestBuilder:logger	Lcom/amazon/insights/core/log/Logger;
    //   291: ldc -80
    //   293: aload_2
    //   294: invokevirtual 174	com/amazon/insights/core/log/Logger:e	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   297: goto -12 -> 285
    //   300: astore_1
    //   301: aconst_null
    //   302: astore 4
    //   304: goto -37 -> 267
    //   307: astore_1
    //   308: aload_3
    //   309: astore_2
    //   310: goto -43 -> 267
    //   313: astore 5
    //   315: aconst_null
    //   316: astore_1
    //   317: goto -105 -> 212
    //   320: astore 5
    //   322: aload 6
    //   324: astore_1
    //   325: goto -113 -> 212
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	328	0	this	ERSRequestBuilder
    //   0	328	1	paramJSONArray	org.json.JSONArray
    //   76	102	2	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    //   193	7	2	localIOException1	java.io.IOException
    //   211	61	2	localObject1	Object
    //   287	7	2	localIOException2	java.io.IOException
    //   309	1	2	localObject2	Object
    //   92	217	3	localObject3	Object
    //   89	214	4	localObject4	Object
    //   206	17	5	localIOException3	java.io.IOException
    //   313	1	5	localIOException4	java.io.IOException
    //   320	1	5	localIOException5	java.io.IOException
    //   85	238	6	localGZIPOutputStream	java.util.zip.GZIPOutputStream
    //   56	114	7	localRequest	com.amazon.insights.core.http.HttpClient.Request
    // Exception table:
    //   from	to	target	type
    //   121	126	172	java/lang/Exception
    //   130	134	193	java/io/IOException
    //   139	144	193	java/io/IOException
    //   69	77	206	java/io/IOException
    //   231	235	248	java/io/IOException
    //   239	243	248	java/io/IOException
    //   69	77	261	finally
    //   271	275	287	java/io/IOException
    //   280	285	287	java/io/IOException
    //   77	87	300	finally
    //   93	104	307	finally
    //   110	115	307	finally
    //   121	126	307	finally
    //   179	188	307	finally
    //   217	227	307	finally
    //   77	87	313	java/io/IOException
    //   93	104	320	java/io/IOException
    //   110	115	320	java/io/IOException
    //   121	126	320	java/io/IOException
    //   179	188	320	java/io/IOException
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.delivery.ERSRequestBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */