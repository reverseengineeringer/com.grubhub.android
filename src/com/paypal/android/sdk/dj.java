package com.paypal.android.sdk;

import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.cert.X509Certificate;
import java.util.Enumeration;
import java.util.HashMap;
import javax.security.auth.x500.X500Principal;

public class dj
{
  private static dj a;
  private final HashMap b = a(df.b());
  
  public static dj a()
  {
    try
    {
      if (a == null) {
        a = new dj();
      }
      dj localdj = a;
      return localdj;
    }
    finally {}
  }
  
  private static HashMap a(KeyStore paramKeyStore)
  {
    try
    {
      HashMap localHashMap = new HashMap();
      Enumeration localEnumeration = paramKeyStore.aliases();
      while (localEnumeration.hasMoreElements())
      {
        Object localObject = (String)localEnumeration.nextElement();
        dj.class.getSimpleName();
        new StringBuilder("\t adding cert. alias:").append((String)localObject);
        localObject = (X509Certificate)paramKeyStore.getCertificate((String)localObject);
        if (localObject != null) {
          localHashMap.put(((X509Certificate)localObject).getSubjectX500Principal(), localObject);
        }
      }
      return localHashMap;
    }
    catch (KeyStoreException paramKeyStore)
    {
      throw new AssertionError(paramKeyStore);
    }
  }
  
  public final boolean a(X509Certificate paramX509Certificate)
  {
    X509Certificate localX509Certificate = (X509Certificate)b.get(paramX509Certificate.getSubjectX500Principal());
    return (localX509Certificate != null) && (localX509Certificate.getPublicKey().equals(paramX509Certificate.getPublicKey()));
  }
  
  public final X509Certificate b(X509Certificate paramX509Certificate)
  {
    X509Certificate localX509Certificate = (X509Certificate)b.get(paramX509Certificate.getIssuerX500Principal());
    if (localX509Certificate == null) {
      return null;
    }
    if (localX509Certificate.getSubjectX500Principal().equals(paramX509Certificate.getSubjectX500Principal())) {
      return null;
    }
    try
    {
      paramX509Certificate.verify(localX509Certificate.getPublicKey());
      return localX509Certificate;
    }
    catch (GeneralSecurityException paramX509Certificate) {}
    return null;
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.dj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */