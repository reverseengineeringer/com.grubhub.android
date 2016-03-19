package com.braintreepayments.api.b;

import com.braintreepayments.api.exceptions.ErrorWithResponse;
import com.braintreepayments.api.exceptions.e;
import com.braintreepayments.api.exceptions.g;
import com.braintreepayments.api.exceptions.i;
import com.braintreepayments.api.exceptions.j;
import com.braintreepayments.api.exceptions.k;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.KeyStore;
import java.security.Principal;
import java.security.cert.Certificate;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.Collection;
import java.util.Iterator;
import java.util.Locale;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManagerFactory;

public class b
{
  public static boolean a = false;
  private String b;
  private String c;
  private int d = 0;
  
  public b(String paramString)
  {
    String str = paramString;
    if (paramString == null) {
      str = "";
    }
    c = str;
  }
  
  private c a(HttpURLConnection paramHttpURLConnection)
    throws ErrorWithResponse, IOException
  {
    int i = paramHttpURLConnection.getResponseCode();
    d("Received response code: " + i);
    switch (i)
    {
    default: 
      throw new j();
    case 200: 
    case 201: 
    case 202: 
      paramHttpURLConnection = a(paramHttpURLConnection.getInputStream());
      d("Received response body: " + paramHttpURLConnection);
      return new c(i, paramHttpURLConnection);
    case 401: 
      throw new com.braintreepayments.api.exceptions.b();
    case 403: 
      throw new com.braintreepayments.api.exceptions.c();
    case 422: 
      paramHttpURLConnection = a(paramHttpURLConnection.getErrorStream());
      d("Received error response body: " + paramHttpURLConnection);
      throw new ErrorWithResponse(i, paramHttpURLConnection);
    case 426: 
      throw new k();
    case 500: 
      throw new i();
    }
    throw new g();
  }
  
  public static String a()
  {
    return "braintree/android/1.6.5";
  }
  
  private String a(InputStream paramInputStream)
    throws IOException
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    byte[] arrayOfByte = new byte['Ѐ'];
    for (;;)
    {
      int i = paramInputStream.read(arrayOfByte);
      if (i == -1) {
        break;
      }
      localByteArrayOutputStream.write(arrayOfByte, 0, i);
    }
    return new String(localByteArrayOutputStream.toByteArray(), "UTF-8");
  }
  
  private static SSLSocketFactory b()
    throws e
  {
    Object localObject2;
    try
    {
      KeyStore localKeyStore = KeyStore.getInstance(KeyStore.getDefaultType());
      localKeyStore.load(null, null);
      localObject2 = CertificateFactory.getInstance("X.509").generateCertificates(a.a()).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        Certificate localCertificate = (Certificate)((Iterator)localObject2).next();
        if ((localCertificate instanceof X509Certificate)) {
          localKeyStore.setCertificateEntry(((X509Certificate)localCertificate).getSubjectDN().getName(), localCertificate);
        }
      }
      localObject2 = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
    }
    catch (Exception localException)
    {
      throw new e(localException);
    }
    ((TrustManagerFactory)localObject2).init(localException);
    Object localObject1 = SSLContext.getInstance("TLS");
    ((SSLContext)localObject1).init(null, ((TrustManagerFactory)localObject2).getTrustManagers(), null);
    localObject1 = ((SSLContext)localObject1).getSocketFactory();
    return (SSLSocketFactory)localObject1;
  }
  
  private void d(String paramString)
  {
    if (a) {}
  }
  
  /* Error */
  public c a(String paramString1, String paramString2)
    throws ErrorWithResponse, com.braintreepayments.api.exceptions.d
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 8
    //   3: aconst_null
    //   4: astore 9
    //   6: aconst_null
    //   7: astore 10
    //   9: aconst_null
    //   10: astore 7
    //   12: aload 7
    //   14: astore 4
    //   16: aload 8
    //   18: astore_3
    //   19: aload 9
    //   21: astore 5
    //   23: aload 10
    //   25: astore 6
    //   27: new 225	org/json/JSONObject
    //   30: dup
    //   31: aload_2
    //   32: invokespecial 227	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   35: ldc -27
    //   37: aload_0
    //   38: getfield 26	com/braintreepayments/api/b/b:c	Ljava/lang/String;
    //   41: invokevirtual 233	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   44: invokevirtual 234	org/json/JSONObject:toString	()Ljava/lang/String;
    //   47: astore_2
    //   48: aload 7
    //   50: astore 4
    //   52: aload 8
    //   54: astore_3
    //   55: aload 9
    //   57: astore 5
    //   59: aload 10
    //   61: astore 6
    //   63: aload_1
    //   64: ldc -20
    //   66: invokevirtual 240	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   69: ifeq +157 -> 226
    //   72: aload 7
    //   74: astore 4
    //   76: aload 8
    //   78: astore_3
    //   79: aload 9
    //   81: astore 5
    //   83: aload 10
    //   85: astore 6
    //   87: aload_0
    //   88: aload_1
    //   89: invokevirtual 243	com/braintreepayments/api/b/b:c	(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    //   92: astore_1
    //   93: aload_1
    //   94: astore 4
    //   96: aload_1
    //   97: astore_3
    //   98: aload_1
    //   99: astore 5
    //   101: aload_1
    //   102: astore 6
    //   104: aload_1
    //   105: ldc -11
    //   107: invokevirtual 248	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   110: aload_1
    //   111: astore 4
    //   113: aload_1
    //   114: astore_3
    //   115: aload_1
    //   116: astore 5
    //   118: aload_1
    //   119: astore 6
    //   121: aload_1
    //   122: iconst_1
    //   123: invokevirtual 252	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   126: aload_1
    //   127: astore 4
    //   129: aload_1
    //   130: astore_3
    //   131: aload_1
    //   132: astore 5
    //   134: aload_1
    //   135: astore 6
    //   137: new 254	java/io/DataOutputStream
    //   140: dup
    //   141: aload_1
    //   142: invokevirtual 258	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   145: invokespecial 261	java/io/DataOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   148: astore 7
    //   150: aload_1
    //   151: astore 4
    //   153: aload_1
    //   154: astore_3
    //   155: aload_1
    //   156: astore 5
    //   158: aload_1
    //   159: astore 6
    //   161: aload 7
    //   163: aload_2
    //   164: invokevirtual 264	java/io/DataOutputStream:writeBytes	(Ljava/lang/String;)V
    //   167: aload_1
    //   168: astore 4
    //   170: aload_1
    //   171: astore_3
    //   172: aload_1
    //   173: astore 5
    //   175: aload_1
    //   176: astore 6
    //   178: aload 7
    //   180: invokevirtual 267	java/io/DataOutputStream:flush	()V
    //   183: aload_1
    //   184: astore 4
    //   186: aload_1
    //   187: astore_3
    //   188: aload_1
    //   189: astore 5
    //   191: aload_1
    //   192: astore 6
    //   194: aload 7
    //   196: invokevirtual 270	java/io/DataOutputStream:close	()V
    //   199: aload_1
    //   200: astore 4
    //   202: aload_1
    //   203: astore_3
    //   204: aload_1
    //   205: astore 5
    //   207: aload_1
    //   208: astore 6
    //   210: aload_0
    //   211: aload_1
    //   212: invokespecial 272	com/braintreepayments/api/b/b:a	(Ljava/net/HttpURLConnection;)Lcom/braintreepayments/api/b/c;
    //   215: astore_2
    //   216: aload_1
    //   217: ifnull +7 -> 224
    //   220: aload_1
    //   221: invokevirtual 275	java/net/HttpURLConnection:disconnect	()V
    //   224: aload_2
    //   225: areturn
    //   226: aload 7
    //   228: astore 4
    //   230: aload 8
    //   232: astore_3
    //   233: aload 9
    //   235: astore 5
    //   237: aload 10
    //   239: astore 6
    //   241: aload_0
    //   242: new 39	java/lang/StringBuilder
    //   245: dup
    //   246: invokespecial 40	java/lang/StringBuilder:<init>	()V
    //   249: aload_0
    //   250: getfield 277	com/braintreepayments/api/b/b:b	Ljava/lang/String;
    //   253: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   256: aload_1
    //   257: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   260: invokevirtual 53	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   263: invokevirtual 243	com/braintreepayments/api/b/b:c	(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    //   266: astore_1
    //   267: goto -174 -> 93
    //   270: astore_1
    //   271: aload 4
    //   273: astore_3
    //   274: aload_1
    //   275: athrow
    //   276: astore_1
    //   277: aload_3
    //   278: ifnull +7 -> 285
    //   281: aload_3
    //   282: invokevirtual 275	java/net/HttpURLConnection:disconnect	()V
    //   285: aload_1
    //   286: athrow
    //   287: astore_1
    //   288: aload 5
    //   290: astore_3
    //   291: new 57	com/braintreepayments/api/exceptions/j
    //   294: dup
    //   295: aload_1
    //   296: invokevirtual 280	java/io/IOException:getMessage	()Ljava/lang/String;
    //   299: invokespecial 281	com/braintreepayments/api/exceptions/j:<init>	(Ljava/lang/String;)V
    //   302: athrow
    //   303: astore_1
    //   304: aload 6
    //   306: astore_3
    //   307: new 57	com/braintreepayments/api/exceptions/j
    //   310: dup
    //   311: aload_1
    //   312: invokevirtual 282	org/json/JSONException:getMessage	()Ljava/lang/String;
    //   315: invokespecial 281	com/braintreepayments/api/exceptions/j:<init>	(Ljava/lang/String;)V
    //   318: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	319	0	this	b
    //   0	319	1	paramString1	String
    //   0	319	2	paramString2	String
    //   18	289	3	localObject1	Object
    //   14	258	4	localObject2	Object
    //   21	268	5	localObject3	Object
    //   25	280	6	localObject4	Object
    //   10	217	7	localDataOutputStream	java.io.DataOutputStream
    //   1	230	8	localObject5	Object
    //   4	230	9	localObject6	Object
    //   7	231	10	localObject7	Object
    // Exception table:
    //   from	to	target	type
    //   27	48	270	com/braintreepayments/api/exceptions/d
    //   63	72	270	com/braintreepayments/api/exceptions/d
    //   87	93	270	com/braintreepayments/api/exceptions/d
    //   104	110	270	com/braintreepayments/api/exceptions/d
    //   121	126	270	com/braintreepayments/api/exceptions/d
    //   137	150	270	com/braintreepayments/api/exceptions/d
    //   161	167	270	com/braintreepayments/api/exceptions/d
    //   178	183	270	com/braintreepayments/api/exceptions/d
    //   194	199	270	com/braintreepayments/api/exceptions/d
    //   210	216	270	com/braintreepayments/api/exceptions/d
    //   241	267	270	com/braintreepayments/api/exceptions/d
    //   27	48	276	finally
    //   63	72	276	finally
    //   87	93	276	finally
    //   104	110	276	finally
    //   121	126	276	finally
    //   137	150	276	finally
    //   161	167	276	finally
    //   178	183	276	finally
    //   194	199	276	finally
    //   210	216	276	finally
    //   241	267	276	finally
    //   274	276	276	finally
    //   291	303	276	finally
    //   307	319	276	finally
    //   27	48	287	java/io/IOException
    //   63	72	287	java/io/IOException
    //   87	93	287	java/io/IOException
    //   104	110	287	java/io/IOException
    //   121	126	287	java/io/IOException
    //   137	150	287	java/io/IOException
    //   161	167	287	java/io/IOException
    //   178	183	287	java/io/IOException
    //   194	199	287	java/io/IOException
    //   210	216	287	java/io/IOException
    //   241	267	287	java/io/IOException
    //   27	48	303	org/json/JSONException
    //   63	72	303	org/json/JSONException
    //   87	93	303	org/json/JSONException
    //   104	110	303	org/json/JSONException
    //   121	126	303	org/json/JSONException
    //   137	150	303	org/json/JSONException
    //   161	167	303	org/json/JSONException
    //   178	183	303	org/json/JSONException
    //   194	199	303	org/json/JSONException
    //   210	216	303	org/json/JSONException
    //   241	267	303	org/json/JSONException
  }
  
  public void a(String paramString)
  {
    String str = paramString;
    if (paramString == null) {
      str = "";
    }
    b = str;
  }
  
  /* Error */
  public c b(String paramString)
    throws ErrorWithResponse, com.braintreepayments.api.exceptions.d
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: aconst_null
    //   4: astore 7
    //   6: aconst_null
    //   7: astore 5
    //   9: aload 5
    //   11: astore_3
    //   12: aload 6
    //   14: astore_2
    //   15: aload 7
    //   17: astore 4
    //   19: aload_1
    //   20: ldc -20
    //   22: invokevirtual 240	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   25: ifeq +91 -> 116
    //   28: aload 5
    //   30: astore_3
    //   31: aload 6
    //   33: astore_2
    //   34: aload 7
    //   36: astore 4
    //   38: aload_1
    //   39: invokestatic 289	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   42: astore_1
    //   43: aload 5
    //   45: astore_3
    //   46: aload 6
    //   48: astore_2
    //   49: aload 7
    //   51: astore 4
    //   53: aload_0
    //   54: aload_1
    //   55: invokevirtual 293	android/net/Uri:buildUpon	()Landroid/net/Uri$Builder;
    //   58: ldc -27
    //   60: aload_0
    //   61: getfield 26	com/braintreepayments/api/b/b:c	Ljava/lang/String;
    //   64: invokevirtual 299	android/net/Uri$Builder:appendQueryParameter	(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    //   67: invokevirtual 303	android/net/Uri$Builder:build	()Landroid/net/Uri;
    //   70: invokevirtual 304	android/net/Uri:toString	()Ljava/lang/String;
    //   73: invokevirtual 243	com/braintreepayments/api/b/b:c	(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    //   76: astore_1
    //   77: aload_1
    //   78: astore_3
    //   79: aload_1
    //   80: astore_2
    //   81: aload_1
    //   82: astore 4
    //   84: aload_1
    //   85: ldc_w 306
    //   88: invokevirtual 248	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   91: aload_1
    //   92: astore_3
    //   93: aload_1
    //   94: astore_2
    //   95: aload_1
    //   96: astore 4
    //   98: aload_0
    //   99: aload_1
    //   100: invokespecial 272	com/braintreepayments/api/b/b:a	(Ljava/net/HttpURLConnection;)Lcom/braintreepayments/api/b/c;
    //   103: astore 5
    //   105: aload_1
    //   106: ifnull +7 -> 113
    //   109: aload_1
    //   110: invokevirtual 275	java/net/HttpURLConnection:disconnect	()V
    //   113: aload 5
    //   115: areturn
    //   116: aload 5
    //   118: astore_3
    //   119: aload 6
    //   121: astore_2
    //   122: aload 7
    //   124: astore 4
    //   126: new 39	java/lang/StringBuilder
    //   129: dup
    //   130: invokespecial 40	java/lang/StringBuilder:<init>	()V
    //   133: aload_0
    //   134: getfield 277	com/braintreepayments/api/b/b:b	Ljava/lang/String;
    //   137: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   140: aload_1
    //   141: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   144: invokevirtual 53	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   147: invokestatic 289	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   150: astore_1
    //   151: goto -108 -> 43
    //   154: astore_1
    //   155: aload_3
    //   156: astore_2
    //   157: aload_1
    //   158: athrow
    //   159: astore_1
    //   160: aload_2
    //   161: ifnull +7 -> 168
    //   164: aload_2
    //   165: invokevirtual 275	java/net/HttpURLConnection:disconnect	()V
    //   168: aload_1
    //   169: athrow
    //   170: astore_1
    //   171: aload 4
    //   173: astore_2
    //   174: new 57	com/braintreepayments/api/exceptions/j
    //   177: dup
    //   178: aload_1
    //   179: invokevirtual 280	java/io/IOException:getMessage	()Ljava/lang/String;
    //   182: invokespecial 281	com/braintreepayments/api/exceptions/j:<init>	(Ljava/lang/String;)V
    //   185: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	186	0	this	b
    //   0	186	1	paramString	String
    //   14	160	2	localObject1	Object
    //   11	145	3	localObject2	Object
    //   17	155	4	localObject3	Object
    //   7	110	5	localc	c
    //   1	119	6	localObject4	Object
    //   4	119	7	localObject5	Object
    // Exception table:
    //   from	to	target	type
    //   19	28	154	com/braintreepayments/api/exceptions/d
    //   38	43	154	com/braintreepayments/api/exceptions/d
    //   53	77	154	com/braintreepayments/api/exceptions/d
    //   84	91	154	com/braintreepayments/api/exceptions/d
    //   98	105	154	com/braintreepayments/api/exceptions/d
    //   126	151	154	com/braintreepayments/api/exceptions/d
    //   19	28	159	finally
    //   38	43	159	finally
    //   53	77	159	finally
    //   84	91	159	finally
    //   98	105	159	finally
    //   126	151	159	finally
    //   157	159	159	finally
    //   174	186	159	finally
    //   19	28	170	java/io/IOException
    //   38	43	170	java/io/IOException
    //   53	77	170	java/io/IOException
    //   84	91	170	java/io/IOException
    //   98	105	170	java/io/IOException
    //   126	151	170	java/io/IOException
  }
  
  protected HttpURLConnection c(String paramString)
    throws IOException
  {
    d("Opening url: " + paramString);
    paramString = (HttpURLConnection)new URL(paramString).openConnection();
    if ((paramString instanceof HttpsURLConnection)) {
      ((HttpsURLConnection)paramString).setSSLSocketFactory(b());
    }
    paramString.setRequestProperty("Content-Type", "application/json");
    paramString.setRequestProperty("User-Agent", a());
    paramString.setRequestProperty("Accept-Language", Locale.getDefault().getLanguage());
    paramString.setConnectTimeout(d);
    return paramString;
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.api.b.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */