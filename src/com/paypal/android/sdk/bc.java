package com.paypal.android.sdk;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.Properties;

public final class bc
{
  public static String a(String paramString)
  {
    Properties localProperties = new Properties();
    ByteArrayInputStream localByteArrayInputStream = new ByteArrayInputStream("suFileName=/system/xbin/su\nsuperUserApk=/system/app/Superuser.apk\nemptyIp=0.0.0.0".getBytes());
    try
    {
      localProperties.load(localByteArrayInputStream);
      return localProperties.getProperty(paramString);
    }
    finally
    {
      localByteArrayInputStream.close();
    }
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.bc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */