package com.crashlytics.android.internal;

import java.security.GeneralSecurityException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.Collections;
import java.util.LinkedList;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
import javax.security.auth.x500.X500Principal;

public class av
{
  private final q a;
  private aG b;
  private SSLSocketFactory c;
  private boolean d;
  
  public av()
  {
    this(new r());
  }
  
  public av(q paramq)
  {
    a = paramq;
  }
  
  private void a()
  {
    try
    {
      d = false;
      c = null;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private static boolean a(X509Certificate paramX509Certificate1, X509Certificate paramX509Certificate2)
  {
    if (!paramX509Certificate1.getSubjectX500Principal().equals(paramX509Certificate2.getIssuerX500Principal())) {
      return false;
    }
    try
    {
      paramX509Certificate2.verify(paramX509Certificate1.getPublicKey());
      return true;
    }
    catch (GeneralSecurityException paramX509Certificate1) {}
    return false;
  }
  
  public static X509Certificate[] a(X509Certificate[] paramArrayOfX509Certificate, aI paramaI)
    throws CertificateException
  {
    int m = 1;
    LinkedList localLinkedList = new LinkedList();
    if (paramaI.a(paramArrayOfX509Certificate[0])) {}
    for (int i = 1;; i = 0)
    {
      localLinkedList.add(paramArrayOfX509Certificate[0]);
      int k = 1;
      int j;
      for (;;)
      {
        j = i;
        if (k >= paramArrayOfX509Certificate.length) {
          break;
        }
        if (paramaI.a(paramArrayOfX509Certificate[k])) {
          i = 1;
        }
        j = i;
        if (!a(paramArrayOfX509Certificate[k], paramArrayOfX509Certificate[(k - 1)])) {
          break;
        }
        localLinkedList.add(paramArrayOfX509Certificate[k]);
        k += 1;
      }
      paramArrayOfX509Certificate = paramaI.b(paramArrayOfX509Certificate[(k - 1)]);
      if (paramArrayOfX509Certificate != null) {
        localLinkedList.add(paramArrayOfX509Certificate);
      }
      for (i = m;; i = j)
      {
        if (i != 0) {
          return (X509Certificate[])localLinkedList.toArray(new X509Certificate[localLinkedList.size()]);
        }
        throw new CertificateException("Didn't find a trust anchor in chain cleanup!");
      }
    }
  }
  
  private SSLSocketFactory b()
  {
    try
    {
      if ((c == null) && (!d)) {
        c = c();
      }
      SSLSocketFactory localSSLSocketFactory = c;
      return localSSLSocketFactory;
    }
    finally {}
  }
  
  /* Error */
  private SSLSocketFactory c()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: iconst_1
    //   4: putfield 27	com/crashlytics/android/internal/av:d	Z
    //   7: aload_0
    //   8: getfield 97	com/crashlytics/android/internal/av:b	Lcom/crashlytics/android/internal/aG;
    //   11: astore_1
    //   12: ldc 99
    //   14: invokestatic 105	javax/net/ssl/SSLContext:getInstance	(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    //   17: astore_2
    //   18: aload_2
    //   19: aconst_null
    //   20: iconst_1
    //   21: anewarray 107	javax/net/ssl/TrustManager
    //   24: dup
    //   25: iconst_0
    //   26: new 109	com/crashlytics/android/internal/aH
    //   29: dup
    //   30: new 63	com/crashlytics/android/internal/aI
    //   33: dup
    //   34: aload_1
    //   35: invokeinterface 114 1 0
    //   40: aload_1
    //   41: invokeinterface 117 1 0
    //   46: invokespecial 120	com/crashlytics/android/internal/aI:<init>	(Ljava/io/InputStream;Ljava/lang/String;)V
    //   49: aload_1
    //   50: invokespecial 123	com/crashlytics/android/internal/aH:<init>	(Lcom/crashlytics/android/internal/aI;Lcom/crashlytics/android/internal/aG;)V
    //   53: aastore
    //   54: aconst_null
    //   55: invokevirtual 127	javax/net/ssl/SSLContext:init	([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    //   58: aload_2
    //   59: invokevirtual 130	javax/net/ssl/SSLContext:getSocketFactory	()Ljavax/net/ssl/SSLSocketFactory;
    //   62: astore_1
    //   63: aload_0
    //   64: getfield 25	com/crashlytics/android/internal/av:a	Lcom/crashlytics/android/internal/q;
    //   67: ldc -124
    //   69: ldc -122
    //   71: invokeinterface 139 3 0
    //   76: aload_0
    //   77: monitorexit
    //   78: aload_1
    //   79: areturn
    //   80: astore_1
    //   81: aload_0
    //   82: getfield 25	com/crashlytics/android/internal/av:a	Lcom/crashlytics/android/internal/q;
    //   85: ldc -124
    //   87: ldc -115
    //   89: aload_1
    //   90: invokeinterface 144 4 0
    //   95: aconst_null
    //   96: astore_1
    //   97: goto -21 -> 76
    //   100: astore_1
    //   101: aload_0
    //   102: monitorexit
    //   103: aload_1
    //   104: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	105	0	this	av
    //   11	68	1	localObject1	Object
    //   80	10	1	localException	Exception
    //   96	1	1	localObject2	Object
    //   100	4	1	localObject3	Object
    //   17	42	2	localSSLContext	javax.net.ssl.SSLContext
    // Exception table:
    //   from	to	target	type
    //   7	76	80	java/lang/Exception
    //   2	7	100	finally
    //   7	76	100	finally
    //   81	95	100	finally
  }
  
  public ay a(ax paramax, String paramString)
  {
    return a(paramax, paramString, Collections.emptyMap());
  }
  
  public ay a(ax paramax, String paramString, Map<String, String> paramMap)
  {
    switch (aw.a[paramax.ordinal()])
    {
    default: 
      throw new IllegalArgumentException("Unsupported HTTP method!");
    case 1: 
      paramax = ay.a(paramString, paramMap, true);
      if (paramString != null) {
        break;
      }
    }
    for (boolean bool = false;; bool = paramString.toLowerCase().startsWith("https"))
    {
      if ((bool) && (b != null))
      {
        paramString = b();
        if (paramString != null) {
          ((HttpsURLConnection)paramax.a()).setSSLSocketFactory(paramString);
        }
      }
      return paramax;
      paramax = ay.b(paramString, paramMap, true);
      break;
      paramax = ay.a(paramString);
      break;
      paramax = ay.b(paramString);
      break;
    }
  }
  
  public void a(aG paramaG)
  {
    if (b != paramaG)
    {
      b = paramaG;
      a();
    }
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.internal.av
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */