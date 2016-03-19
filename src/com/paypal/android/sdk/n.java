package com.paypal.android.sdk;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import android.util.Log;
import java.io.ByteArrayInputStream;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import javax.security.auth.x500.X500Principal;

public class n
{
  private static final String a = n.class.getSimpleName();
  
  private static boolean a(PackageManager paramPackageManager, String paramString1, String paramString2, String paramString3, int paramInt)
  {
    paramPackageManager = getPackageInfo64signatures;
    int j = paramPackageManager.length;
    int i = 0;
    for (;;)
    {
      if (i < j)
      {
        paramString1 = new ByteArrayInputStream(paramPackageManager[i].toByteArray());
        try
        {
          paramString1 = (X509Certificate)CertificateFactory.getInstance("X509").generateCertificate(paramString1);
          String str1 = paramString1.getSubjectX500Principal().getName();
          String str2 = paramString1.getIssuerX500Principal().getName();
          int k = paramString1.getPublicKey().hashCode();
          new StringBuilder("Certificate subject: ").append(str1);
          new StringBuilder("Certificate issuer: ").append(str2);
          new StringBuilder("Certificate public key hash code: ").append(k);
          if ((paramString2.equals(str1)) && (paramString3.equals(str2)) && (paramInt == k)) {}
          for (boolean bool = true;; bool = false)
          {
            if (!bool) {
              Log.e(a, "App cert is NOT valid.");
            }
            return bool;
          }
        }
        catch (CertificateException paramString1)
        {
          Log.e(a, "exception parsing cert", paramString1);
          i += 1;
        }
      }
    }
    return false;
  }
  
  protected final boolean a(Context paramContext, boolean paramBoolean, String paramString1, String paramString2, String paramString3, int paramInt)
  {
    bool2 = false;
    paramContext = paramContext.getPackageManager();
    for (;;)
    {
      try
      {
        paramContext.getApplicationInfo(paramString1, 4224);
        if (paramContext.checkPermission("android.permission.AUTHENTICATE_ACCOUNTS", paramString1) != 0) {
          continue;
        }
        paramInt = 1;
        bool1 = bool2;
        if (paramInt != 0) {
          if (paramBoolean)
          {
            paramBoolean = a(paramContext, paramString1, paramString2, paramString3, 34172764);
            bool1 = bool2;
            if (!paramBoolean) {}
          }
          else
          {
            bool1 = true;
          }
        }
      }
      catch (PackageManager.NameNotFoundException paramContext)
      {
        Log.e(a, paramString1 + " not found.");
        boolean bool1 = bool2;
        continue;
      }
      new StringBuilder("returning isValid:").append(bool1);
      return bool1;
      paramInt = 0;
    }
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */