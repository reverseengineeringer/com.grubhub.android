package com.android.volley.toolbox;

import android.os.SystemClock;
import com.android.volley.Cache.Entry;
import com.android.volley.Network;
import com.android.volley.Request;
import com.android.volley.RetryPolicy;
import com.android.volley.ServerError;
import com.android.volley.VolleyError;
import com.android.volley.VolleyLog;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.StatusLine;
import org.apache.http.impl.cookie.DateUtils;

public class BasicNetwork
  implements Network
{
  protected static final boolean DEBUG = VolleyLog.DEBUG;
  private static int DEFAULT_POOL_SIZE = 4096;
  private static int SLOW_REQUEST_THRESHOLD_MS = 3000;
  protected final HttpStack mHttpStack;
  protected final ByteArrayPool mPool;
  
  public BasicNetwork(HttpStack paramHttpStack)
  {
    this(paramHttpStack, new ByteArrayPool(DEFAULT_POOL_SIZE));
  }
  
  public BasicNetwork(HttpStack paramHttpStack, ByteArrayPool paramByteArrayPool)
  {
    mHttpStack = paramHttpStack;
    mPool = paramByteArrayPool;
  }
  
  private void addCacheHeaders(Map<String, String> paramMap, Cache.Entry paramEntry)
  {
    if (paramEntry == null) {}
    do
    {
      return;
      if (etag != null) {
        paramMap.put("If-None-Match", etag);
      }
    } while (serverDate <= 0L);
    paramMap.put("If-Modified-Since", DateUtils.formatDate(new Date(serverDate)));
  }
  
  private static void attemptRetryOnException(String paramString, Request<?> paramRequest, VolleyError paramVolleyError)
    throws VolleyError
  {
    RetryPolicy localRetryPolicy = paramRequest.getRetryPolicy();
    int i = paramRequest.getTimeoutMs();
    try
    {
      localRetryPolicy.retry(paramVolleyError);
      paramRequest.addMarker(String.format("%s-retry [timeout=%s]", new Object[] { paramString, Integer.valueOf(i) }));
      return;
    }
    catch (VolleyError paramVolleyError)
    {
      paramRequest.addMarker(String.format("%s-timeout-giveup [timeout=%s]", new Object[] { paramString, Integer.valueOf(i) }));
      throw paramVolleyError;
    }
  }
  
  private static Map<String, String> convertHeaders(Header[] paramArrayOfHeader)
  {
    HashMap localHashMap = new HashMap();
    int i = 0;
    while (i < paramArrayOfHeader.length)
    {
      localHashMap.put(paramArrayOfHeader[i].getName(), paramArrayOfHeader[i].getValue());
      i += 1;
    }
    return localHashMap;
  }
  
  private byte[] entityToBytes(HttpEntity paramHttpEntity)
    throws IOException, ServerError
  {
    PoolingByteArrayOutputStream localPoolingByteArrayOutputStream = new PoolingByteArrayOutputStream(mPool, (int)paramHttpEntity.getContentLength());
    Object localObject2 = null;
    Object localObject1 = localObject2;
    Object localObject4;
    try
    {
      localObject4 = paramHttpEntity.getContent();
      if (localObject4 == null)
      {
        localObject1 = localObject2;
        throw new ServerError();
      }
    }
    finally {}
    try
    {
      paramHttpEntity.consumeContent();
      mPool.returnBuf((byte[])localObject1);
      localPoolingByteArrayOutputStream.close();
      throw ((Throwable)localObject3);
      localObject1 = localObject3;
      byte[] arrayOfByte = mPool.getBuf(1024);
      for (;;)
      {
        localObject1 = arrayOfByte;
        int i = ((InputStream)localObject4).read(arrayOfByte);
        if (i == -1) {
          break;
        }
        localObject1 = arrayOfByte;
        localPoolingByteArrayOutputStream.write(arrayOfByte, 0, i);
      }
      localObject1 = arrayOfByte;
      localObject4 = localPoolingByteArrayOutputStream.toByteArray();
      try
      {
        paramHttpEntity.consumeContent();
        mPool.returnBuf(arrayOfByte);
        localPoolingByteArrayOutputStream.close();
        return (byte[])localObject4;
      }
      catch (IOException paramHttpEntity)
      {
        for (;;)
        {
          VolleyLog.v("Error occured when calling consumingContent", new Object[0]);
        }
      }
    }
    catch (IOException paramHttpEntity)
    {
      for (;;)
      {
        VolleyLog.v("Error occured when calling consumingContent", new Object[0]);
      }
    }
  }
  
  private void logSlowRequests(long paramLong, Request<?> paramRequest, byte[] paramArrayOfByte, StatusLine paramStatusLine)
  {
    if ((DEBUG) || (paramLong > SLOW_REQUEST_THRESHOLD_MS)) {
      if (paramArrayOfByte == null) {
        break label82;
      }
    }
    label82:
    for (paramArrayOfByte = Integer.valueOf(paramArrayOfByte.length);; paramArrayOfByte = "null")
    {
      VolleyLog.d("HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]", new Object[] { paramRequest, Long.valueOf(paramLong), paramArrayOfByte, Integer.valueOf(paramStatusLine.getStatusCode()), Integer.valueOf(paramRequest.getRetryPolicy().getCurrentRetryCount()) });
      return;
    }
  }
  
  protected void logError(String paramString1, String paramString2, long paramLong)
  {
    VolleyLog.v("HTTP ERROR(%s) %d ms to fetch %s", new Object[] { paramString1, Long.valueOf(SystemClock.elapsedRealtime() - paramLong), paramString2 });
  }
  
  /* Error */
  public com.android.volley.NetworkResponse performRequest(Request<?> paramRequest)
    throws VolleyError
  {
    // Byte code:
    //   0: invokestatic 223	android/os/SystemClock:elapsedRealtime	()J
    //   3: lstore_3
    //   4: aconst_null
    //   5: astore 6
    //   7: aconst_null
    //   8: astore 10
    //   10: aconst_null
    //   11: astore 5
    //   13: new 124	java/util/HashMap
    //   16: dup
    //   17: invokespecial 125	java/util/HashMap:<init>	()V
    //   20: astore 9
    //   22: new 124	java/util/HashMap
    //   25: dup
    //   26: invokespecial 125	java/util/HashMap:<init>	()V
    //   29: astore 7
    //   31: aload_0
    //   32: aload 7
    //   34: aload_1
    //   35: invokevirtual 235	com/android/volley/Request:getCacheEntry	()Lcom/android/volley/Cache$Entry;
    //   38: invokespecial 237	com/android/volley/toolbox/BasicNetwork:addCacheHeaders	(Ljava/util/Map;Lcom/android/volley/Cache$Entry;)V
    //   41: aload_0
    //   42: getfield 41	com/android/volley/toolbox/BasicNetwork:mHttpStack	Lcom/android/volley/toolbox/HttpStack;
    //   45: aload_1
    //   46: aload 7
    //   48: invokeinterface 242 3 0
    //   53: astore 7
    //   55: aload 7
    //   57: invokeinterface 248 1 0
    //   62: astore 11
    //   64: aload 11
    //   66: invokeinterface 205 1 0
    //   71: istore_2
    //   72: aload 7
    //   74: invokeinterface 252 1 0
    //   79: invokestatic 254	com/android/volley/toolbox/BasicNetwork:convertHeaders	([Lorg/apache/http/Header;)Ljava/util/Map;
    //   82: astore 8
    //   84: iload_2
    //   85: sipush 304
    //   88: if_icmpne +53 -> 141
    //   91: aload 10
    //   93: astore 5
    //   95: aload_1
    //   96: invokevirtual 235	com/android/volley/Request:getCacheEntry	()Lcom/android/volley/Cache$Entry;
    //   99: ifnonnull +26 -> 125
    //   102: aconst_null
    //   103: astore 6
    //   105: aload 10
    //   107: astore 5
    //   109: new 256	com/android/volley/NetworkResponse
    //   112: dup
    //   113: sipush 304
    //   116: aload 6
    //   118: aload 8
    //   120: iconst_1
    //   121: invokespecial 259	com/android/volley/NetworkResponse:<init>	(I[BLjava/util/Map;Z)V
    //   124: areturn
    //   125: aload 10
    //   127: astore 5
    //   129: aload_1
    //   130: invokevirtual 235	com/android/volley/Request:getCacheEntry	()Lcom/android/volley/Cache$Entry;
    //   133: getfield 263	com/android/volley/Cache$Entry:data	[B
    //   136: astore 6
    //   138: goto -33 -> 105
    //   141: aload 10
    //   143: astore 5
    //   145: aload 7
    //   147: invokeinterface 267 1 0
    //   152: ifnull +83 -> 235
    //   155: aload 10
    //   157: astore 5
    //   159: aload_0
    //   160: aload 7
    //   162: invokeinterface 267 1 0
    //   167: invokespecial 269	com/android/volley/toolbox/BasicNetwork:entityToBytes	(Lorg/apache/http/HttpEntity;)[B
    //   170: astore 6
    //   172: aload 6
    //   174: astore 5
    //   176: aload_0
    //   177: invokestatic 223	android/os/SystemClock:elapsedRealtime	()J
    //   180: lload_3
    //   181: lsub
    //   182: aload_1
    //   183: aload 6
    //   185: aload 11
    //   187: invokespecial 271	com/android/volley/toolbox/BasicNetwork:logSlowRequests	(JLcom/android/volley/Request;[BLorg/apache/http/StatusLine;)V
    //   190: iload_2
    //   191: sipush 200
    //   194: if_icmplt +10 -> 204
    //   197: iload_2
    //   198: sipush 299
    //   201: if_icmple +46 -> 247
    //   204: aload 6
    //   206: astore 5
    //   208: new 139	java/io/IOException
    //   211: dup
    //   212: invokespecial 272	java/io/IOException:<init>	()V
    //   215: athrow
    //   216: astore 5
    //   218: ldc_w 274
    //   221: aload_1
    //   222: new 276	com/android/volley/TimeoutError
    //   225: dup
    //   226: invokespecial 277	com/android/volley/TimeoutError:<init>	()V
    //   229: invokestatic 279	com/android/volley/toolbox/BasicNetwork:attemptRetryOnException	(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V
    //   232: goto -228 -> 4
    //   235: aload 10
    //   237: astore 5
    //   239: iconst_0
    //   240: newarray <illegal type>
    //   242: astore 6
    //   244: goto -72 -> 172
    //   247: aload 6
    //   249: astore 5
    //   251: new 256	com/android/volley/NetworkResponse
    //   254: dup
    //   255: iload_2
    //   256: aload 6
    //   258: aload 8
    //   260: iconst_0
    //   261: invokespecial 259	com/android/volley/NetworkResponse:<init>	(I[BLjava/util/Map;Z)V
    //   264: astore 6
    //   266: aload 6
    //   268: areturn
    //   269: astore 5
    //   271: ldc_w 281
    //   274: aload_1
    //   275: new 276	com/android/volley/TimeoutError
    //   278: dup
    //   279: invokespecial 277	com/android/volley/TimeoutError:<init>	()V
    //   282: invokestatic 279	com/android/volley/toolbox/BasicNetwork:attemptRetryOnException	(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V
    //   285: goto -281 -> 4
    //   288: astore 5
    //   290: new 283	java/lang/RuntimeException
    //   293: dup
    //   294: new 285	java/lang/StringBuilder
    //   297: dup
    //   298: invokespecial 286	java/lang/StringBuilder:<init>	()V
    //   301: ldc_w 288
    //   304: invokevirtual 292	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   307: aload_1
    //   308: invokevirtual 295	com/android/volley/Request:getUrl	()Ljava/lang/String;
    //   311: invokevirtual 292	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   314: invokevirtual 298	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   317: aload 5
    //   319: invokespecial 301	java/lang/RuntimeException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   322: athrow
    //   323: astore 10
    //   325: aload 6
    //   327: astore 7
    //   329: aload 9
    //   331: astore 8
    //   333: aload 10
    //   335: astore 6
    //   337: aload 7
    //   339: ifnull +93 -> 432
    //   342: aload 7
    //   344: invokeinterface 248 1 0
    //   349: invokeinterface 205 1 0
    //   354: istore_2
    //   355: ldc_w 303
    //   358: iconst_2
    //   359: anewarray 4	java/lang/Object
    //   362: dup
    //   363: iconst_0
    //   364: iload_2
    //   365: invokestatic 106	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   368: aastore
    //   369: dup
    //   370: iconst_1
    //   371: aload_1
    //   372: invokevirtual 295	com/android/volley/Request:getUrl	()Ljava/lang/String;
    //   375: aastore
    //   376: invokestatic 306	com/android/volley/VolleyLog:e	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   379: aload 5
    //   381: ifnull +71 -> 452
    //   384: new 256	com/android/volley/NetworkResponse
    //   387: dup
    //   388: iload_2
    //   389: aload 5
    //   391: aload 8
    //   393: iconst_0
    //   394: invokespecial 259	com/android/volley/NetworkResponse:<init>	(I[BLjava/util/Map;Z)V
    //   397: astore 5
    //   399: iload_2
    //   400: sipush 401
    //   403: if_icmpeq +10 -> 413
    //   406: iload_2
    //   407: sipush 403
    //   410: if_icmpne +32 -> 442
    //   413: ldc_w 308
    //   416: aload_1
    //   417: new 310	com/android/volley/AuthFailureError
    //   420: dup
    //   421: aload 5
    //   423: invokespecial 313	com/android/volley/AuthFailureError:<init>	(Lcom/android/volley/NetworkResponse;)V
    //   426: invokestatic 279	com/android/volley/toolbox/BasicNetwork:attemptRetryOnException	(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V
    //   429: goto -425 -> 4
    //   432: new 315	com/android/volley/NoConnectionError
    //   435: dup
    //   436: aload 6
    //   438: invokespecial 318	com/android/volley/NoConnectionError:<init>	(Ljava/lang/Throwable;)V
    //   441: athrow
    //   442: new 141	com/android/volley/ServerError
    //   445: dup
    //   446: aload 5
    //   448: invokespecial 319	com/android/volley/ServerError:<init>	(Lcom/android/volley/NetworkResponse;)V
    //   451: athrow
    //   452: new 321	com/android/volley/NetworkError
    //   455: dup
    //   456: aconst_null
    //   457: invokespecial 322	com/android/volley/NetworkError:<init>	(Lcom/android/volley/NetworkResponse;)V
    //   460: athrow
    //   461: astore 6
    //   463: aload 9
    //   465: astore 8
    //   467: goto -130 -> 337
    //   470: astore 6
    //   472: goto -135 -> 337
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	475	0	this	BasicNetwork
    //   0	475	1	paramRequest	Request<?>
    //   71	340	2	i	int
    //   3	178	3	l	long
    //   11	196	5	localObject1	Object
    //   216	1	5	localSocketTimeoutException	java.net.SocketTimeoutException
    //   237	13	5	localObject2	Object
    //   269	1	5	localConnectTimeoutException	org.apache.http.conn.ConnectTimeoutException
    //   288	102	5	localMalformedURLException	java.net.MalformedURLException
    //   397	50	5	localNetworkResponse	com.android.volley.NetworkResponse
    //   5	432	6	localObject3	Object
    //   461	1	6	localIOException1	IOException
    //   470	1	6	localIOException2	IOException
    //   29	314	7	localObject4	Object
    //   82	384	8	localObject5	Object
    //   20	444	9	localHashMap	HashMap
    //   8	228	10	localObject6	Object
    //   323	11	10	localIOException3	IOException
    //   62	124	11	localStatusLine	StatusLine
    // Exception table:
    //   from	to	target	type
    //   22	55	216	java/net/SocketTimeoutException
    //   55	84	216	java/net/SocketTimeoutException
    //   95	102	216	java/net/SocketTimeoutException
    //   109	125	216	java/net/SocketTimeoutException
    //   129	138	216	java/net/SocketTimeoutException
    //   145	155	216	java/net/SocketTimeoutException
    //   159	172	216	java/net/SocketTimeoutException
    //   176	190	216	java/net/SocketTimeoutException
    //   208	216	216	java/net/SocketTimeoutException
    //   239	244	216	java/net/SocketTimeoutException
    //   251	266	216	java/net/SocketTimeoutException
    //   22	55	269	org/apache/http/conn/ConnectTimeoutException
    //   55	84	269	org/apache/http/conn/ConnectTimeoutException
    //   95	102	269	org/apache/http/conn/ConnectTimeoutException
    //   109	125	269	org/apache/http/conn/ConnectTimeoutException
    //   129	138	269	org/apache/http/conn/ConnectTimeoutException
    //   145	155	269	org/apache/http/conn/ConnectTimeoutException
    //   159	172	269	org/apache/http/conn/ConnectTimeoutException
    //   176	190	269	org/apache/http/conn/ConnectTimeoutException
    //   208	216	269	org/apache/http/conn/ConnectTimeoutException
    //   239	244	269	org/apache/http/conn/ConnectTimeoutException
    //   251	266	269	org/apache/http/conn/ConnectTimeoutException
    //   22	55	288	java/net/MalformedURLException
    //   55	84	288	java/net/MalformedURLException
    //   95	102	288	java/net/MalformedURLException
    //   109	125	288	java/net/MalformedURLException
    //   129	138	288	java/net/MalformedURLException
    //   145	155	288	java/net/MalformedURLException
    //   159	172	288	java/net/MalformedURLException
    //   176	190	288	java/net/MalformedURLException
    //   208	216	288	java/net/MalformedURLException
    //   239	244	288	java/net/MalformedURLException
    //   251	266	288	java/net/MalformedURLException
    //   22	55	323	java/io/IOException
    //   55	84	461	java/io/IOException
    //   95	102	470	java/io/IOException
    //   109	125	470	java/io/IOException
    //   129	138	470	java/io/IOException
    //   145	155	470	java/io/IOException
    //   159	172	470	java/io/IOException
    //   176	190	470	java/io/IOException
    //   208	216	470	java/io/IOException
    //   239	244	470	java/io/IOException
    //   251	266	470	java/io/IOException
  }
}

/* Location:
 * Qualified Name:     com.android.volley.toolbox.BasicNetwork
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */