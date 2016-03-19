package com.paypal.android.sdk;

import java.security.GeneralSecurityException;
import org.apache.http.conn.ssl.SSLSocketFactory;

public class ao
{
  private static final String a = ao.class.getSimpleName();
  
  public static as a(int paramInt, boolean paramBoolean1, boolean paramBoolean2, String paramString)
  {
    new StringBuilder("Creating async client.  networkTimeout=").append(paramInt).append(", isTrustAll=").append(paramBoolean1).append(", useSslPinning=").append(paramBoolean2).append(", userAgent=").append(paramString);
    as localas = new as();
    localas.a(paramInt);
    localas.a(paramString);
    if (paramBoolean1) {}
    try
    {
      localas.a(new ar());
      return localas;
    }
    catch (GeneralSecurityException paramString)
    {
      throw new RuntimeException(paramString);
    }
    if (paramBoolean2)
    {
      localas.a(new dh());
      return localas;
    }
    localas.a(SSLSocketFactory.getSocketFactory());
    return localas;
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.ao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */