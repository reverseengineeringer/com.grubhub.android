package com.braintreepayments.api;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import com.braintreepayments.api.exceptions.a;
import com.braintreepayments.api.models.h;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.List;
import javax.security.auth.x500.X500Principal;

public abstract class b
{
  protected static boolean a = true;
  protected Context b;
  protected h c;
  
  public b(Context paramContext, h paramh)
  {
    b = paramContext;
    c = paramh;
  }
  
  private boolean h()
  {
    boolean bool2 = false;
    boolean bool1;
    if (!a) {
      bool1 = true;
    }
    for (;;)
    {
      return bool1;
      Object localObject1 = b.getPackageManager();
      try
      {
        localObject1 = getPackageInfoc64signatures;
        int j = localObject1.length;
        int i = 0;
        for (;;)
        {
          bool1 = bool2;
          if (i >= j) {
            break;
          }
          Object localObject2 = localObject1[i];
          try
          {
            localObject2 = new ByteArrayInputStream(((Signature)localObject2).toByteArray());
            localObject2 = (X509Certificate)CertificateFactory.getInstance("X509").generateCertificate((InputStream)localObject2);
            String str1 = ((X509Certificate)localObject2).getSubjectX500Principal().getName();
            String str2 = ((X509Certificate)localObject2).getIssuerX500Principal().getName();
            int k = ((X509Certificate)localObject2).getPublicKey().hashCode();
            if ((e().equals(str1)) && (f().equals(str2)))
            {
              int m = g();
              if (m != k) {}
            }
            for (bool1 = true;; bool1 = false) {
              return bool1;
            }
          }
          catch (CertificateException localCertificateException)
          {
            i += 1;
          }
        }
        return false;
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException) {}
    }
  }
  
  protected abstract String a(int paramInt, Intent paramIntent);
  
  protected void a(Activity paramActivity, int paramInt)
    throws a
  {
    if (a())
    {
      paramActivity.startActivityForResult(b(), paramInt);
      return;
    }
    throw new a();
  }
  
  protected boolean a()
  {
    List localList = b.getPackageManager().queryIntentActivities(b(), 0);
    return (localList.size() == 1) && (c().equals(get0activityInfo.packageName)) && (h());
  }
  
  protected Intent b()
  {
    return new Intent().setComponent(new ComponentName(c(), c() + "." + d()));
  }
  
  protected abstract String c();
  
  protected abstract String d();
  
  protected abstract String e();
  
  protected abstract String f();
  
  protected abstract int g();
}

/* Location:
 * Qualified Name:     com.braintreepayments.api.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */