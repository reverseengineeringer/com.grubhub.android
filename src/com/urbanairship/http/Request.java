package com.urbanairship.http;

import android.os.Build;
import android.os.Build.VERSION;
import com.urbanairship.AirshipConfigOptions;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public class Request
{
  private static final String USER_AGENT_FORMAT = "%s (%s; %s; UrbanAirshipLib-%s/%s; %s; %s)";
  protected String body;
  private boolean compressRequestBody = false;
  protected String contentType;
  private long ifModifiedSince = 0L;
  protected String password;
  protected String requestMethod;
  protected final Map<String, String> responseProperties;
  protected URL url;
  protected String user;
  
  public Request(String paramString, URL paramURL)
  {
    requestMethod = paramString;
    url = paramURL;
    responseProperties = new HashMap();
    responseProperties.put("User-Agent", getUrbanAirshipUserAgent());
  }
  
  public static String getUrbanAirshipUserAgent()
  {
    if (UAirship.shared().getPlatformType() == 1) {}
    for (String str = "amazon";; str = "android") {
      return String.format(Locale.US, "%s (%s; %s; UrbanAirshipLib-%s/%s; %s; %s)", new Object[] { UAirship.getPackageName(), Build.MODEL, Build.VERSION.RELEASE, str, UAirship.getVersion(), UAirship.shared().getAirshipConfigOptions().getAppKey(), Locale.getDefault() });
    }
  }
  
  private String readEntireStream(InputStream paramInputStream)
    throws IOException
  {
    if (paramInputStream == null) {
      return null;
    }
    localBufferedReader = new BufferedReader(new InputStreamReader(paramInputStream));
    StringBuilder localStringBuilder = new StringBuilder();
    try
    {
      for (;;)
      {
        String str = localBufferedReader.readLine();
        if (str == null) {
          break;
        }
        localStringBuilder.append(str).append("\n");
      }
      try
      {
        paramInputStream.close();
        localBufferedReader.close();
        throw ((Throwable)localObject);
        localBufferedReader.close();
        try
        {
          paramInputStream.close();
          localBufferedReader.close();
          return ((StringBuilder)localObject).toString();
        }
        catch (Exception paramInputStream)
        {
          for (;;)
          {
            Logger.error("Failed to close streams", paramInputStream);
          }
        }
      }
      catch (Exception paramInputStream)
      {
        for (;;)
        {
          Logger.error("Failed to close streams", paramInputStream);
        }
      }
    }
    finally {}
  }
  
  /* Error */
  public Response execute()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 35	com/urbanairship/http/Request:url	Ljava/net/URL;
    //   4: invokevirtual 162	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   7: checkcast 164	java/net/HttpURLConnection
    //   10: astore_1
    //   11: aload_1
    //   12: aload_0
    //   13: getfield 33	com/urbanairship/http/Request:requestMethod	Ljava/lang/String;
    //   16: invokevirtual 168	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   19: aload_0
    //   20: getfield 170	com/urbanairship/http/Request:body	Ljava/lang/String;
    //   23: ifnull +18 -> 41
    //   26: aload_1
    //   27: iconst_1
    //   28: invokevirtual 174	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   31: aload_1
    //   32: ldc -80
    //   34: aload_0
    //   35: getfield 178	com/urbanairship/http/Request:contentType	Ljava/lang/String;
    //   38: invokevirtual 182	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   41: aload_1
    //   42: iconst_1
    //   43: invokevirtual 185	java/net/HttpURLConnection:setDoInput	(Z)V
    //   46: aload_1
    //   47: iconst_0
    //   48: invokevirtual 188	java/net/HttpURLConnection:setUseCaches	(Z)V
    //   51: aload_1
    //   52: iconst_0
    //   53: invokevirtual 191	java/net/HttpURLConnection:setAllowUserInteraction	(Z)V
    //   56: aload_0
    //   57: getfield 29	com/urbanairship/http/Request:ifModifiedSince	J
    //   60: lconst_0
    //   61: lcmp
    //   62: ifle +11 -> 73
    //   65: aload_1
    //   66: aload_0
    //   67: getfield 29	com/urbanairship/http/Request:ifModifiedSince	J
    //   70: invokevirtual 195	java/net/HttpURLConnection:setIfModifiedSince	(J)V
    //   73: aload_0
    //   74: getfield 40	com/urbanairship/http/Request:responseProperties	Ljava/util/Map;
    //   77: invokeinterface 199 1 0
    //   82: invokeinterface 205 1 0
    //   87: astore_2
    //   88: aload_2
    //   89: invokeinterface 211 1 0
    //   94: ifeq +83 -> 177
    //   97: aload_2
    //   98: invokeinterface 215 1 0
    //   103: checkcast 102	java/lang/String
    //   106: astore_3
    //   107: aload_1
    //   108: aload_3
    //   109: aload_0
    //   110: getfield 40	com/urbanairship/http/Request:responseProperties	Ljava/util/Map;
    //   113: aload_3
    //   114: invokeinterface 219 2 0
    //   119: checkcast 102	java/lang/String
    //   122: invokevirtual 182	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   125: goto -37 -> 88
    //   128: astore_2
    //   129: new 126	java/lang/StringBuilder
    //   132: dup
    //   133: invokespecial 127	java/lang/StringBuilder:<init>	()V
    //   136: ldc -35
    //   138: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   141: aload_0
    //   142: getfield 35	com/urbanairship/http/Request:url	Ljava/net/URL;
    //   145: invokevirtual 224	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   148: ldc -30
    //   150: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   153: aload_0
    //   154: getfield 33	com/urbanairship/http/Request:requestMethod	Ljava/lang/String;
    //   157: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   160: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   163: aload_2
    //   164: invokestatic 229	com/urbanairship/Logger:debug	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   167: aload_1
    //   168: ifnull +7 -> 175
    //   171: aload_1
    //   172: invokevirtual 232	java/net/HttpURLConnection:disconnect	()V
    //   175: aconst_null
    //   176: areturn
    //   177: aload_0
    //   178: getfield 234	com/urbanairship/http/Request:user	Ljava/lang/String;
    //   181: invokestatic 240	com/urbanairship/util/UAStringUtil:isEmpty	(Ljava/lang/String;)Z
    //   184: ifne +75 -> 259
    //   187: aload_0
    //   188: getfield 242	com/urbanairship/http/Request:password	Ljava/lang/String;
    //   191: invokestatic 240	com/urbanairship/util/UAStringUtil:isEmpty	(Ljava/lang/String;)Z
    //   194: ifne +65 -> 259
    //   197: new 126	java/lang/StringBuilder
    //   200: dup
    //   201: invokespecial 127	java/lang/StringBuilder:<init>	()V
    //   204: aload_0
    //   205: getfield 234	com/urbanairship/http/Request:user	Ljava/lang/String;
    //   208: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   211: ldc -12
    //   213: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   216: aload_0
    //   217: getfield 242	com/urbanairship/http/Request:password	Ljava/lang/String;
    //   220: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   223: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   226: astore_2
    //   227: aload_1
    //   228: ldc -10
    //   230: new 126	java/lang/StringBuilder
    //   233: dup
    //   234: invokespecial 127	java/lang/StringBuilder:<init>	()V
    //   237: ldc -8
    //   239: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   242: aload_2
    //   243: invokevirtual 252	java/lang/String:getBytes	()[B
    //   246: iconst_2
    //   247: invokestatic 258	android/util/Base64:encodeToString	([BI)Ljava/lang/String;
    //   250: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   253: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   256: invokevirtual 182	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   259: aload_0
    //   260: getfield 170	com/urbanairship/http/Request:body	Ljava/lang/String;
    //   263: ifnull +69 -> 332
    //   266: aload_0
    //   267: getfield 31	com/urbanairship/http/Request:compressRequestBody	Z
    //   270: ifeq +123 -> 393
    //   273: aload_1
    //   274: ldc_w 260
    //   277: ldc_w 262
    //   280: invokevirtual 182	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   283: aload_1
    //   284: invokevirtual 266	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   287: astore_2
    //   288: new 268	java/util/zip/GZIPOutputStream
    //   291: dup
    //   292: aload_2
    //   293: invokespecial 271	java/util/zip/GZIPOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   296: astore_3
    //   297: new 273	java/io/OutputStreamWriter
    //   300: dup
    //   301: aload_3
    //   302: ldc_w 275
    //   305: invokespecial 278	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;Ljava/lang/String;)V
    //   308: astore 4
    //   310: aload 4
    //   312: aload_0
    //   313: getfield 170	com/urbanairship/http/Request:body	Ljava/lang/String;
    //   316: invokevirtual 283	java/io/Writer:write	(Ljava/lang/String;)V
    //   319: aload 4
    //   321: invokevirtual 284	java/io/Writer:close	()V
    //   324: aload_3
    //   325: invokevirtual 285	java/util/zip/GZIPOutputStream:close	()V
    //   328: aload_2
    //   329: invokevirtual 288	java/io/OutputStream:close	()V
    //   332: new 290	com/urbanairship/http/Response$Builder
    //   335: dup
    //   336: aload_1
    //   337: invokevirtual 293	java/net/HttpURLConnection:getResponseCode	()I
    //   340: invokespecial 296	com/urbanairship/http/Response$Builder:<init>	(I)V
    //   343: aload_1
    //   344: invokevirtual 299	java/net/HttpURLConnection:getResponseMessage	()Ljava/lang/String;
    //   347: invokevirtual 303	com/urbanairship/http/Response$Builder:setResponseMessage	(Ljava/lang/String;)Lcom/urbanairship/http/Response$Builder;
    //   350: aload_1
    //   351: invokevirtual 307	java/net/HttpURLConnection:getHeaderFields	()Ljava/util/Map;
    //   354: invokevirtual 311	com/urbanairship/http/Response$Builder:setResponseHeaders	(Ljava/util/Map;)Lcom/urbanairship/http/Response$Builder;
    //   357: aload_1
    //   358: invokevirtual 315	java/net/HttpURLConnection:getLastModified	()J
    //   361: invokevirtual 319	com/urbanairship/http/Response$Builder:setLastModified	(J)Lcom/urbanairship/http/Response$Builder;
    //   364: astore_2
    //   365: aload_2
    //   366: aload_0
    //   367: aload_1
    //   368: invokevirtual 323	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   371: invokespecial 325	com/urbanairship/http/Request:readEntireStream	(Ljava/io/InputStream;)Ljava/lang/String;
    //   374: invokevirtual 328	com/urbanairship/http/Response$Builder:setResponseBody	(Ljava/lang/String;)Lcom/urbanairship/http/Response$Builder;
    //   377: pop
    //   378: aload_2
    //   379: invokevirtual 331	com/urbanairship/http/Response$Builder:create	()Lcom/urbanairship/http/Response;
    //   382: astore_2
    //   383: aload_1
    //   384: ifnull +7 -> 391
    //   387: aload_1
    //   388: invokevirtual 232	java/net/HttpURLConnection:disconnect	()V
    //   391: aload_2
    //   392: areturn
    //   393: aload_1
    //   394: invokevirtual 266	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   397: astore_2
    //   398: new 273	java/io/OutputStreamWriter
    //   401: dup
    //   402: aload_2
    //   403: ldc_w 275
    //   406: invokespecial 278	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;Ljava/lang/String;)V
    //   409: astore_3
    //   410: aload_3
    //   411: aload_0
    //   412: getfield 170	com/urbanairship/http/Request:body	Ljava/lang/String;
    //   415: invokevirtual 283	java/io/Writer:write	(Ljava/lang/String;)V
    //   418: aload_3
    //   419: invokevirtual 284	java/io/Writer:close	()V
    //   422: aload_2
    //   423: invokevirtual 288	java/io/OutputStream:close	()V
    //   426: goto -94 -> 332
    //   429: astore_2
    //   430: aload_1
    //   431: ifnull +7 -> 438
    //   434: aload_1
    //   435: invokevirtual 232	java/net/HttpURLConnection:disconnect	()V
    //   438: aload_2
    //   439: athrow
    //   440: astore_3
    //   441: aload_2
    //   442: aload_0
    //   443: aload_1
    //   444: invokevirtual 334	java/net/HttpURLConnection:getErrorStream	()Ljava/io/InputStream;
    //   447: invokespecial 325	com/urbanairship/http/Request:readEntireStream	(Ljava/io/InputStream;)Ljava/lang/String;
    //   450: invokevirtual 328	com/urbanairship/http/Response$Builder:setResponseBody	(Ljava/lang/String;)Lcom/urbanairship/http/Response$Builder;
    //   453: pop
    //   454: goto -76 -> 378
    //   457: astore_2
    //   458: aconst_null
    //   459: astore_1
    //   460: goto -30 -> 430
    //   463: astore_2
    //   464: goto -34 -> 430
    //   467: astore_2
    //   468: aconst_null
    //   469: astore_1
    //   470: goto -341 -> 129
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	473	0	this	Request
    //   10	460	1	localHttpURLConnection	java.net.HttpURLConnection
    //   87	11	2	localIterator	java.util.Iterator
    //   128	36	2	localException1	Exception
    //   226	197	2	localObject1	Object
    //   429	13	2	localObject2	Object
    //   457	1	2	localObject3	Object
    //   463	1	2	localObject4	Object
    //   467	1	2	localException2	Exception
    //   106	313	3	localObject5	Object
    //   440	1	3	localIOException	IOException
    //   308	12	4	localOutputStreamWriter	java.io.OutputStreamWriter
    // Exception table:
    //   from	to	target	type
    //   11	41	128	java/lang/Exception
    //   41	73	128	java/lang/Exception
    //   73	88	128	java/lang/Exception
    //   88	125	128	java/lang/Exception
    //   177	259	128	java/lang/Exception
    //   259	332	128	java/lang/Exception
    //   332	365	128	java/lang/Exception
    //   365	378	128	java/lang/Exception
    //   378	383	128	java/lang/Exception
    //   393	426	128	java/lang/Exception
    //   441	454	128	java/lang/Exception
    //   11	41	429	finally
    //   41	73	429	finally
    //   73	88	429	finally
    //   88	125	429	finally
    //   177	259	429	finally
    //   259	332	429	finally
    //   332	365	429	finally
    //   365	378	429	finally
    //   378	383	429	finally
    //   393	426	429	finally
    //   441	454	429	finally
    //   365	378	440	java/io/IOException
    //   0	11	457	finally
    //   129	167	463	finally
    //   0	11	467	java/lang/Exception
  }
  
  public Request setCompressRequestBody(boolean paramBoolean)
  {
    compressRequestBody = paramBoolean;
    return this;
  }
  
  public Request setCredentials(String paramString1, String paramString2)
  {
    user = paramString1;
    password = paramString2;
    return this;
  }
  
  public Request setHeader(String paramString1, String paramString2)
  {
    if (paramString2 == null)
    {
      responseProperties.remove(paramString1);
      return this;
    }
    responseProperties.put(paramString1, paramString2);
    return this;
  }
  
  public Request setIfModifiedSince(long paramLong)
  {
    ifModifiedSince = paramLong;
    return this;
  }
  
  public Request setRequestBody(String paramString1, String paramString2)
  {
    body = paramString1;
    contentType = paramString2;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.http.Request
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */