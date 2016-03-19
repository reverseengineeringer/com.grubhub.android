package com.crashlytics.android.internal;

import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class ay
{
  private static aB a = aB.a;
  private HttpURLConnection b = null;
  private URL c;
  private final String d;
  private aF e;
  private boolean f;
  private boolean g = true;
  private boolean h = false;
  private int i = 8192;
  
  private ay(CharSequence paramCharSequence, String paramString)
    throws aD
  {
    try
    {
      c = new URL(paramCharSequence.toString());
      d = paramString;
      return;
    }
    catch (MalformedURLException paramCharSequence)
    {
      throw new aD(paramCharSequence);
    }
  }
  
  private ay a(InputStream paramInputStream, OutputStream paramOutputStream)
    throws IOException
  {
    return (ay)new az(this, paramInputStream, g, paramInputStream, paramOutputStream).call();
  }
  
  public static ay a(CharSequence paramCharSequence)
    throws aD
  {
    return new ay(paramCharSequence, "PUT");
  }
  
  public static ay a(CharSequence paramCharSequence, Map<?, ?> paramMap, boolean paramBoolean)
  {
    return new ay(c(a(paramCharSequence, paramMap)), "GET");
  }
  
  private ay a(String paramString1, String paramString2, String paramString3)
    throws IOException
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("form-data; name=\"").append(paramString1);
    if (paramString2 != null) {
      localStringBuilder.append("\"; filename=\"").append(paramString2);
    }
    localStringBuilder.append('"');
    d("Content-Disposition", localStringBuilder.toString());
    if (paramString3 != null) {
      d("Content-Type", paramString3);
    }
    return d("\r\n");
  }
  
  private ay a(String paramString1, String paramString2, String paramString3, String paramString4)
    throws aD
  {
    try
    {
      j();
      a(paramString1, paramString2, null);
      e.a(paramString4);
      return this;
    }
    catch (IOException paramString1)
    {
      throw new aD(paramString1);
    }
  }
  
  private static String a(CharSequence paramCharSequence, Map<?, ?> paramMap)
  {
    Object localObject = paramCharSequence.toString();
    if ((paramMap == null) || (paramMap.isEmpty())) {
      return (String)localObject;
    }
    paramCharSequence = new StringBuilder((String)localObject);
    if (((String)localObject).indexOf(':') + 2 == ((String)localObject).lastIndexOf('/')) {
      paramCharSequence.append('/');
    }
    int j = ((String)localObject).indexOf('?');
    int k = paramCharSequence.length() - 1;
    if (j == -1) {
      paramCharSequence.append('?');
    }
    for (;;)
    {
      paramMap = paramMap.entrySet().iterator();
      localObject = (Map.Entry)paramMap.next();
      paramCharSequence.append(((Map.Entry)localObject).getKey().toString());
      paramCharSequence.append('=');
      localObject = ((Map.Entry)localObject).getValue();
      if (localObject != null) {
        paramCharSequence.append(localObject);
      }
      while (paramMap.hasNext())
      {
        paramCharSequence.append('&');
        localObject = (Map.Entry)paramMap.next();
        paramCharSequence.append(((Map.Entry)localObject).getKey().toString());
        paramCharSequence.append('=');
        localObject = ((Map.Entry)localObject).getValue();
        if (localObject != null) {
          paramCharSequence.append(localObject);
        }
      }
      if ((j < k) && (((String)localObject).charAt(k) != '&')) {
        paramCharSequence.append('&');
      }
    }
    return paramCharSequence.toString();
  }
  
  public static ay b(CharSequence paramCharSequence)
    throws aD
  {
    return new ay(paramCharSequence, "DELETE");
  }
  
  public static ay b(CharSequence paramCharSequence, Map<?, ?> paramMap, boolean paramBoolean)
  {
    return new ay(c(a(paramCharSequence, paramMap)), "POST");
  }
  
  private ay b(String paramString1, String paramString2, String paramString3)
    throws aD
  {
    return a(paramString1, paramString2, null, paramString3);
  }
  
  /* Error */
  private static String c(CharSequence paramCharSequence)
    throws aD
  {
    // Byte code:
    //   0: new 46	java/net/URL
    //   3: dup
    //   4: aload_0
    //   5: invokeinterface 52 1 0
    //   10: invokespecial 55	java/net/URL:<init>	(Ljava/lang/String;)V
    //   13: astore_3
    //   14: aload_3
    //   15: invokevirtual 202	java/net/URL:getHost	()Ljava/lang/String;
    //   18: astore_2
    //   19: aload_3
    //   20: invokevirtual 205	java/net/URL:getPort	()I
    //   23: istore_1
    //   24: aload_2
    //   25: astore_0
    //   26: iload_1
    //   27: iconst_m1
    //   28: if_icmpeq +30 -> 58
    //   31: new 95	java/lang/StringBuilder
    //   34: dup
    //   35: invokespecial 96	java/lang/StringBuilder:<init>	()V
    //   38: aload_2
    //   39: invokevirtual 102	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   42: bipush 58
    //   44: invokevirtual 107	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   47: iload_1
    //   48: invokestatic 210	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   51: invokevirtual 102	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   54: invokevirtual 110	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   57: astore_0
    //   58: new 212	java/net/URI
    //   61: dup
    //   62: aload_3
    //   63: invokevirtual 215	java/net/URL:getProtocol	()Ljava/lang/String;
    //   66: aload_0
    //   67: aload_3
    //   68: invokevirtual 218	java/net/URL:getPath	()Ljava/lang/String;
    //   71: aload_3
    //   72: invokevirtual 221	java/net/URL:getQuery	()Ljava/lang/String;
    //   75: aconst_null
    //   76: invokespecial 224	java/net/URI:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   79: invokevirtual 227	java/net/URI:toASCIIString	()Ljava/lang/String;
    //   82: astore_2
    //   83: aload_2
    //   84: bipush 63
    //   86: invokevirtual 146	java/lang/String:indexOf	(I)I
    //   89: istore_1
    //   90: aload_2
    //   91: astore_0
    //   92: iload_1
    //   93: ifle +54 -> 147
    //   96: aload_2
    //   97: astore_0
    //   98: iload_1
    //   99: iconst_1
    //   100: iadd
    //   101: aload_2
    //   102: invokevirtual 228	java/lang/String:length	()I
    //   105: if_icmpge +42 -> 147
    //   108: new 95	java/lang/StringBuilder
    //   111: dup
    //   112: invokespecial 96	java/lang/StringBuilder:<init>	()V
    //   115: aload_2
    //   116: iconst_0
    //   117: iload_1
    //   118: iconst_1
    //   119: iadd
    //   120: invokevirtual 232	java/lang/String:substring	(II)Ljava/lang/String;
    //   123: invokevirtual 102	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   126: aload_2
    //   127: iload_1
    //   128: iconst_1
    //   129: iadd
    //   130: invokevirtual 234	java/lang/String:substring	(I)Ljava/lang/String;
    //   133: ldc -20
    //   135: ldc -18
    //   137: invokevirtual 242	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   140: invokevirtual 102	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   143: invokevirtual 110	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   146: astore_0
    //   147: aload_0
    //   148: areturn
    //   149: astore_0
    //   150: new 32	com/crashlytics/android/internal/aD
    //   153: dup
    //   154: aload_0
    //   155: invokespecial 62	com/crashlytics/android/internal/aD:<init>	(Ljava/io/IOException;)V
    //   158: athrow
    //   159: astore_0
    //   160: new 67	java/io/IOException
    //   163: dup
    //   164: ldc -12
    //   166: invokespecial 245	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   169: astore_2
    //   170: aload_2
    //   171: aload_0
    //   172: invokevirtual 249	java/io/IOException:initCause	(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    //   175: pop
    //   176: new 32	com/crashlytics/android/internal/aD
    //   179: dup
    //   180: aload_2
    //   181: invokespecial 62	com/crashlytics/android/internal/aD:<init>	(Ljava/io/IOException;)V
    //   184: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	185	0	paramCharSequence	CharSequence
    //   23	107	1	j	int
    //   18	163	2	localObject	Object
    //   13	59	3	localURL	URL
    // Exception table:
    //   from	to	target	type
    //   0	14	149	java/io/IOException
    //   58	90	159	java/net/URISyntaxException
    //   98	147	159	java/net/URISyntaxException
  }
  
  private static String c(String paramString)
  {
    if ((paramString != null) && (paramString.length() > 0)) {
      return paramString;
    }
    return "UTF-8";
  }
  
  private static String c(String paramString1, String paramString2)
  {
    if ((paramString1 == null) || (paramString1.length() == 0))
    {
      paramString1 = null;
      return paramString1;
    }
    int m = paramString1.length();
    int j = paramString1.indexOf(';') + 1;
    if ((j == 0) || (j == m)) {
      return null;
    }
    int k = paramString1.indexOf(';', j);
    if (k == -1) {
      k = m;
    }
    for (;;)
    {
      if (j < k)
      {
        int n = paramString1.indexOf('=', j);
        if ((n != -1) && (n < k) && (paramString2.equals(paramString1.substring(j, n).trim())))
        {
          String str = paramString1.substring(n + 1, k).trim();
          j = str.length();
          if (j != 0)
          {
            paramString1 = str;
            if (j <= 2) {
              break;
            }
            paramString1 = str;
            if ('"' != str.charAt(0)) {
              break;
            }
            paramString1 = str;
            if ('"' != str.charAt(j - 1)) {
              break;
            }
            return str.substring(1, j - 1);
          }
        }
        k += 1;
        n = paramString1.indexOf(';', k);
        j = n;
        if (n == -1) {
          j = m;
        }
        n = j;
        j = k;
        k = n;
        continue;
      }
      return null;
    }
  }
  
  private ay d(CharSequence paramCharSequence)
    throws aD
  {
    try
    {
      i();
      e.a(paramCharSequence.toString());
      return this;
    }
    catch (IOException paramCharSequence)
    {
      throw new aD(paramCharSequence);
    }
  }
  
  private ay d(String paramString1, String paramString2)
    throws aD
  {
    return d(paramString1).d(": ").d(paramString2).d("\r\n");
  }
  
  private String d(String paramString)
    throws aD
  {
    h();
    int j = a().getHeaderFieldInt("Content-Length", -1);
    if (j > 0) {}
    for (ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream(j);; localByteArrayOutputStream = new ByteArrayOutputStream()) {
      try
      {
        a(new BufferedInputStream(f(), i), localByteArrayOutputStream);
        paramString = localByteArrayOutputStream.toString(c(paramString));
        return paramString;
      }
      catch (IOException paramString)
      {
        throw new aD(paramString);
      }
    }
  }
  
  private HttpURLConnection e()
  {
    try
    {
      HttpURLConnection localHttpURLConnection = a.a(c);
      localHttpURLConnection.setRequestMethod(d);
      return localHttpURLConnection;
    }
    catch (IOException localIOException)
    {
      throw new aD(localIOException);
    }
  }
  
  private InputStream f()
    throws aD
  {
    if (b() < 400) {}
    InputStream localInputStream2;
    Object localObject;
    do
    {
      try
      {
        InputStream localInputStream1 = a().getInputStream();
        return localInputStream1;
      }
      catch (IOException localIOException1)
      {
        throw new aD(localIOException1);
      }
      localInputStream2 = a().getErrorStream();
      localObject = localInputStream2;
    } while (localInputStream2 != null);
    try
    {
      localObject = a().getInputStream();
      return (InputStream)localObject;
    }
    catch (IOException localIOException2)
    {
      throw new aD(localIOException2);
    }
  }
  
  private ay g()
    throws IOException
  {
    if (e == null) {
      return this;
    }
    if (f) {
      e.a("\r\n--00content0boundary00--\r\n");
    }
    if (g) {}
    try
    {
      e.close();
      for (;;)
      {
        e = null;
        return this;
        e.close();
      }
    }
    catch (IOException localIOException)
    {
      for (;;) {}
    }
  }
  
  private ay h()
    throws aD
  {
    try
    {
      ay localay = g();
      return localay;
    }
    catch (IOException localIOException)
    {
      throw new aD(localIOException);
    }
  }
  
  private ay i()
    throws IOException
  {
    if (e != null) {
      return this;
    }
    a().setDoOutput(true);
    String str = c(a().getRequestProperty("Content-Type"), "charset");
    e = new aF(a().getOutputStream(), str, i);
    return this;
  }
  
  private ay j()
    throws IOException
  {
    if (!f)
    {
      f = true;
      a("Content-Type", "multipart/form-data; boundary=00content0boundary00").i();
      e.a("--00content0boundary00\r\n");
      return this;
    }
    e.a("\r\n--00content0boundary00\r\n");
    return this;
  }
  
  public final ay a(int paramInt)
  {
    a().setConnectTimeout(10000);
    return this;
  }
  
  public final ay a(String paramString, Number paramNumber)
    throws aD
  {
    if (paramNumber != null) {}
    for (paramNumber = paramNumber.toString();; paramNumber = null) {
      return b(paramString, null, paramNumber);
    }
  }
  
  public final ay a(String paramString1, String paramString2)
  {
    a().setRequestProperty(paramString1, paramString2);
    return this;
  }
  
  /* Error */
  public final ay a(String paramString1, String paramString2, String paramString3, java.io.File paramFile)
    throws aD
  {
    // Byte code:
    //   0: new 286	java/io/BufferedInputStream
    //   3: dup
    //   4: new 360	java/io/FileInputStream
    //   7: dup
    //   8: aload 4
    //   10: invokespecial 363	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   13: invokespecial 366	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   16: astore 5
    //   18: aload 5
    //   20: astore 4
    //   22: aload_0
    //   23: aload_1
    //   24: aload_2
    //   25: aload_3
    //   26: aload 5
    //   28: invokevirtual 369	com/crashlytics/android/internal/ay:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/crashlytics/android/internal/ay;
    //   31: astore_1
    //   32: aload 5
    //   34: invokevirtual 372	java/io/InputStream:close	()V
    //   37: aload_1
    //   38: areturn
    //   39: astore_1
    //   40: aconst_null
    //   41: astore 4
    //   43: new 32	com/crashlytics/android/internal/aD
    //   46: dup
    //   47: aload_1
    //   48: invokespecial 62	com/crashlytics/android/internal/aD:<init>	(Ljava/io/IOException;)V
    //   51: athrow
    //   52: astore_1
    //   53: aload 4
    //   55: ifnull +8 -> 63
    //   58: aload 4
    //   60: invokevirtual 372	java/io/InputStream:close	()V
    //   63: aload_1
    //   64: athrow
    //   65: astore_2
    //   66: aload_1
    //   67: areturn
    //   68: astore_2
    //   69: goto -6 -> 63
    //   72: astore_1
    //   73: aconst_null
    //   74: astore 4
    //   76: goto -23 -> 53
    //   79: astore_1
    //   80: aload 5
    //   82: astore 4
    //   84: goto -41 -> 43
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	87	0	this	ay
    //   0	87	1	paramString1	String
    //   0	87	2	paramString2	String
    //   0	87	3	paramString3	String
    //   0	87	4	paramFile	java.io.File
    //   16	65	5	localBufferedInputStream	BufferedInputStream
    // Exception table:
    //   from	to	target	type
    //   0	18	39	java/io/IOException
    //   22	32	52	finally
    //   43	52	52	finally
    //   32	37	65	java/io/IOException
    //   58	63	68	java/io/IOException
    //   0	18	72	finally
    //   22	32	79	java/io/IOException
  }
  
  public final ay a(String paramString1, String paramString2, String paramString3, InputStream paramInputStream)
    throws aD
  {
    try
    {
      j();
      a(paramString1, paramString2, paramString3);
      a(paramInputStream, e);
      return this;
    }
    catch (IOException paramString1)
    {
      throw new aD(paramString1);
    }
  }
  
  public final ay a(Map.Entry<String, String> paramEntry)
  {
    return a((String)paramEntry.getKey(), (String)paramEntry.getValue());
  }
  
  public final ay a(boolean paramBoolean)
  {
    a().setUseCaches(false);
    return this;
  }
  
  public final String a(String paramString)
    throws aD
  {
    h();
    return a().getHeaderField(paramString);
  }
  
  public final HttpURLConnection a()
  {
    if (b == null) {
      b = e();
    }
    return b;
  }
  
  public final int b()
    throws aD
  {
    try
    {
      g();
      int j = a().getResponseCode();
      return j;
    }
    catch (IOException localIOException)
    {
      throw new aD(localIOException);
    }
  }
  
  public final ay b(String paramString1, String paramString2)
  {
    return b(paramString1, null, paramString2);
  }
  
  public final String c()
    throws aD
  {
    return d(c(a("Content-Type"), "charset"));
  }
  
  public final String d()
  {
    return a().getRequestMethod();
  }
  
  public final String toString()
  {
    return a().getRequestMethod() + ' ' + a().getURL();
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.internal.ay
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */