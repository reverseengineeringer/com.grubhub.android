package com.paypal.android.sdk;

import java.security.cert.X509Certificate;
import javax.net.ssl.X509TrustManager;

public final class aq
  implements X509TrustManager
{
  public final void checkClientTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString) {}
  
  public final void checkServerTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString) {}
  
  public final X509Certificate[] getAcceptedIssuers()
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.aq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */